---
description: Config API, quest gates, detection mechanics, and finding coordinates
---

# Configuration Guide

## Config API

| Method | What It Does |
|--------|-------------|
| `DWApartment.Add(apartments, hasShower)` | Creates a new apartment. `hasShower` controls whether the shower deferral setting applies |
| `.Entrance(x, y, z)` | Adds a door location (use multiple times for apartments with more than one entrance) |
| `.Gate("fact_name", minValue)` | Adds a quest requirement — ALL gates must be met |
| `.OrGate("fact_name", minValue)` | Adds an alternative quest requirement — at least ONE must be met |

## Settings

### `hasShower`

* **`true`** — the apartment has a shower. If shower deferral is turned on in mod settings, V won't change into the home outfit right away — it waits until after the shower
* **`false`** — no shower. V changes into the home outfit immediately on entry

### Quest Gates

* **`.Gate()`** — AND logic. All gates must pass for the apartment to activate
* **`.OrGate()`** — OR logic. At least one must pass. Use this for apartments that can be unlocked through different quest paths

## Examples

### Two entrances with a quest requirement

```swift
DWApartment.Add(apartments, true)
  .Entrance(-100.0, 200.0, 50.0)
  .Entrance(-102.0, 198.0, 50.0)
  .Gate("my_quest_fact", 1);
```

### Multiple quest paths (either one unlocks it)

```swift
DWApartment.Add(apartments, false)
  .Entrance(300.0, -400.0, 10.0)
  .OrGate("quest_path_a", 1)
  .OrGate("quest_path_b", 1);
```

## How Detection Works

The mod detects custom apartments by watching for a specific game state change (scene tier transition) while V is near the configured door coordinates (~1 meter). When V leaves, the mod detects the transition back to normal gameplay and switches to the appropriate outfit.

## Finding Coordinates

Stand in front of the apartment door and run these commands in the [Cyber Engine Tweaks](https://www.nexusmods.com/cyberpunk2077/mods/107) console:

```lua
-- Get V's current position (use for .Entrance coordinates)
print(Game.GetPlayer():GetWorldPosition())

-- Check a quest fact value (use for .Gate / .OrGate)
print(Game.GetQuestsSystem():GetFact(CName.new("quest_fact_name")))
```

For the list of built-in apartments, see [Custom Apartments](apartments.md).
