---
description: Limitations and workarounds
---

# Known Issues

## Shower Scene Flash

During shower scenes, there's a brief visual flash when switching outfits. This is a game engine limitation and can't be fixed by the mod.

{% hint style="success" %}
**Workaround** — Use [Immersive Shower](https://www.nexusmods.com/cyberpunk2077/mods/27532) — it undresses V before the shower starts. Since V is already nude when the transition happens, the flash becomes invisible. Works out of the box.
{% endhint %}

## Loading a Save Near Doors

The game simplifies location names when saving — for example, `LittleChina_Afterlife` becomes just `LittleChina` after reloading. Apartments and clubs are not affected — their state is persisted across save/load via quest facts. This only impacts locations that aren't registered as apartments or places (e.g. specific sub-districts).

If you save right next to a door, the mod might misread V's position on load — for example, saving within a club's entrance radius could trigger a false-positive entry on reload. **Save a step or two away from entrances** to avoid this. If the state gets stuck, use the debug overlay (F10 → press down → hold down to clear) to reset it.

## Ripperdoc Fast-Forward

Skipping the ripperdoc animation may occasionally cause the outfit to not swap correctly. Sitting in the chair again or reloading fixes it.

## Weather Limited to Rain

Weather detection only supports `rain` and `dry`. Other conditions like fog, sandstorm, and sunshine can't be queried by Redscript mods — the game's weather API only exposes rain intensity. If CDPR adds more weather queries in the future, additional keywords can be added.

## Danger Zone False Positives

Some peaceful areas in the game are tagged as hostile zones (e.g. the North Oak drive-in theater). This can trigger combat outfits unexpectedly. Set **Combat Mode** to **Combat Only** in Mod Settings to ignore zone tags and only react to actual fights.

## Custom Apartments Need a Scene Transition

Custom apartments are detected when the game transitions to a restricted scene near the door coordinates. Open-air locations without this transition (like camps or tents) can't be detected as full apartments. The mod doesn't check V's position constantly — it only reacts to game events.

**Exception:** Panam's bed at the new Aldecaldos camp is detected via the bed interaction (Tier 4 workspot), not a door transition. V's home outfit applies while in bed and restores on standing up. Requires the Panam romance path.

## Pinning During Combat

If you equip a pinned (`!`) outfit during a fight or in a hostile area, the pin won't be recognized until combat ends. Re-equip the pinned outfit afterward to lock it again.

## Duplicate Outfit Items

If two Equipment-EX outfits use the exact same items, the game reports both as "equipped" at the same time. The mod's tracking sync catches most cases, but identical outfits can still cause unexpected behavior. Avoid creating outfits with identical item combinations.

