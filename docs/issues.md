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

The game simplifies location names when saving — for example, `LittleChina_Afterlife` becomes just `LittleChina` after reloading. This affects all specific locations, not just apartments.

If you save right next to a door, the mod might misread V's position on load. **Save a step or two away from entrances** to avoid this. The correct outfit will kick in as soon as you walk out and back in.

## Ripperdoc Fast-Forward

Skipping the ripperdoc animation may occasionally cause the outfit to not swap correctly. Sitting in the chair again or reloading fixes it.

## Heavy Hearts Not Detected

Heavy Hearts doesn't have a location name in the game's data, so the `club` keyword can't detect it. All other nightlife venues work fine — see [All Location Enums](location-enums.md) for the full list.

## Custom Apartments Need a Scene Transition

Custom apartments are detected when the game transitions to a restricted scene near the door coordinates. Open-air locations without this transition (like camps or tents) can't be detected. The mod doesn't check V's position constantly — it only reacts to game events.

## Pinning During Combat

If you equip a pinned (`!`) outfit during a fight or in a hostile area, the pin won't be recognized until combat ends. Re-equip the pinned outfit afterward to lock it again.

## Duplicate Outfit Items

If two Equipment-EX outfits use the exact same items, the game reports both as "equipped" at the same time. This can confuse the mod's tracking. Avoid creating outfits with identical item combinations.

