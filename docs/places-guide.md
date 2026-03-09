---
description: Config API, detection types, and finding coordinates
---

# Configuration Guide

## Config API

| Method | What It Does |
|--------|-------------|
| `DWPlace.Add(places, ID, "EnumName")` | Creates a new place. `ID` must be unique (10+), `EnumName` is the location enum used for outfit keyword matching |
| `.District("name")` | Adds a parent district for save/load safety fallback (required — use multiple times if the game reports different districts) |
| `.Entrance(x, y, z, radius)` | Adds a standard entrance (detected via location enum change + proximity) |
| `.Tier2Entrance(x, y, z, radius)` | Adds an elevator/loading zone entrance (detected via scene tier change + proximity) |
| `.StatusEffectEntrance(x, y, z, radius, t"EffectID")` | Adds a status effect entrance (detected via effect apply/remove + district + proximity) |

## Parameters

### `ID`

A unique integer (10+) that's persisted in your save file. Each place needs its own ID — never reuse or change an existing one. The built-in clubs use IDs 10–17, so start at 20 or higher for your own.

### `EnumName`

The location string used for outfit keyword matching. Press F10 in-game to see the current location. For places without a location enum (like Heavy Hearts), use a synthetic name following the `District_PlaceName` pattern.

### `District`

The parent district the game reports after save/load (press F10 after reloading to find it). This is used as a safety fallback — the mod won't accidentally exit the place when the game reports the parent district instead of the full location name. Add multiple districts if the game reports different ones at different times.

### `Radius`

Detection range in game units. `1.0` for standard doors, higher for wide entrances (e.g. `3.0` for Lizzie's Bar, `15.0` for Heavy Hearts' wide staircase).

## Detection Types

* **`.Entrance()`** — for places with a door that the game tracks as a distinct location enum. The mod detects entry when the enum changes AND V is near the coordinates
* **`.Tier2Entrance()`** — for places behind elevators or loading zones (like Dark Matter or Heavy Hearts). The mod detects entry when the game transitions to a restricted scene tier AND V is near the coordinates
* **`.StatusEffectEntrance()`** — for modded venues that lack both a unique location enum and a scene tier transition. The mod detects entry when a specific status effect is applied AND V is in the correct district AND near the coordinates. Exit is detected when the effect is removed. This is primarily useful for modded clubs that apply gameplay restrictions (like `NoCombat`) on entry

## Examples

### Standard entrance

```swift
DWPlace.Add(places, 20, "LittleChina_MyBar")
  .District("LittleChina")
  .Entrance(-100.0, 200.0, 50.0, 1.0);
```

### Elevator/loading zone entrance

```swift
DWPlace.Add(places, 21, "JapanTown_MyClub")
  .District("JapanTown")
  .Tier2Entrance(-200.0, 300.0, 25.0, 3.0);
```

### Multiple entrances and districts

```swift
DWPlace.Add(places, 22, "Glen_MyVenue")
  .District("Glen").District("Wellsprings")
  .Entrance(-300.0, -400.0, 10.0, 1.0)
  .Entrance(-302.0, -398.0, 10.0, 2.0);
```

### Status effect entrance (modded venue)

```swift
DWPlace.Add(places, 23, "LittleChina_MyModdedClub")
  .District("LittleChina")
  .StatusEffectEntrance(-500.0, 600.0, 15.0, 3.0, t"GameplayRestriction.NoCombat");
```

Use this when the venue applies a status effect on entry (e.g. `NoCombat` disabling weapons) but doesn't trigger a location enum change or scene tier transition. The effect ID must be a valid `TweakDBID` — check the mod's source or use [Simple Status Effect Manager](https://www.nexusmods.com/cyberpunk2077/mods/23699) (CET tool) to see which effects are applied when you walk in.

## How Detection Works

The mod detects places by watching for one of three triggers while V is near the configured entrance coordinates:

1. **Location enum change** (`.Entrance`) — the game reports a new location name
2. **Scene tier transition** (`.Tier2Entrance`) — the game switches to a restricted scene tier (elevators, loading zones)
3. **Status effect** (`.StatusEffectEntrance`) — a specific gameplay effect is applied to V (e.g. `NoCombat`), combined with a district check to avoid false positives in other areas

When V leaves through the same entrance, the mod detects the exit and switches to the appropriate outfit for the new location.

On save/load, the place ID is persisted in the `dw_is_at_home` quest fact. When the game reloads, the mod resolves the ID back to the full place definition and restores the correct outfit — even though the game only reports the parent district after loading.

## Finding Coordinates and Scene Tier

Stand in front of the entrance and run in the [Cyber Engine Tweaks](https://www.nexusmods.com/cyberpunk2077/mods/107) console:

```lua
-- Get V's current position (use for .Entrance coordinates)
print(Game.GetPlayer():GetWorldPosition())

-- Check the current scene tier (use to determine .Entrance vs .Tier2Entrance)
-- Tier 1 = normal gameplay, Tier 2 = restricted (elevators, loading zones)
print(Game.GetPlayer():GetPlayerStateMachineBlackboard():GetInt(
    Game.GetPlayer():GetPlayerStateMachineBlackboard():GetID("SceneTier")))
```

Press **F10** in-game to see the current location enum (use for `EnumName` and `.District()`). After saving and reloading inside the location, press F10 again to see what the game reports — that's the district you need for `.District()`.

{% hint style="info" %}
**Choosing the right entrance type**: Walk through the entrance and check the scene tier with CET. If it changes from 1 to 2 (elevators, stairwells with loading screens), use `.Tier2Entrance()`. If it stays at 1 and the location enum changes instead, use `.Entrance()`. If neither changes but a status effect is applied (check the CET status effect log or the mod's source files), use `.StatusEffectEntrance()`.
{% endhint %}

{% hint style="warning" %}
**Status effect entrances require the effect ID to be registered.** If you add a `.StatusEffectEntrance()` with a new effect ID (one not already used by a built-in place), you must also add it to `IsRelevantEffect()` in `Events/StatusEffectHandler.reds`. This is a performance gate — unregistered effects are ignored. Currently only `GameplayRestriction.NoCombat` is registered.
{% endhint %}

For the list of built-in places, see [Custom Places](places.md).
