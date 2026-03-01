# Known Issues

---

## Shower Scene Flash

During shower scenes, there is a brief visual flash when transitioning between outfits. This is caused by the engine's native mesh dissolving system during cinematic transitions and cannot be fixed at the script level.

!!! success "Workaround"
    Use [Immersive Shower](https://www.nexusmods.com/cyberpunk2077/mods/27532) — it undresses V before the shower scene begins. Since V is already nude when the engine's mesh dissolve fires, the transition is nude → nude and the flash becomes invisible. Works out of the box, no configuration needed.

---

## Loading a Save Near Apartment Doors

The game drops location suffixes on save/load — for example, `LittleChina_Afterlife` becomes `LittleChina` after reload. This affects all sub-locations, not just apartments.

If you load a save made while standing directly in a doorway, the mod may incorrectly detect V as leaving or entering a location.

**Save a step or two away from entrances to avoid this.** Sub-location outfits return when you walk out and back in, triggering a fresh location change.

---

## Ripperdoc Fast-Forward

Skipping while in the ripperdoc chair may occasionally cause outfit restore issues. This appears to be a timing issue between Equipment-EX and the workspot exit firing too quickly.

Sitting in the chair again or reloading resolves it.

---

## Heavy Hearts Not Detected

Heavy Hearts has no location enum — the `club` keyword can't detect it. All other nightlife venues work as expected.

---

## Custom Apartments Require Scene Tier Change

Custom apartments are detected via a scene tier transition near the entrance coordinates. Open-air locations without a tier change (e.g. camps, tents) cannot be detected. Dynamic Wardrobe is fully event-driven — polling is not an option.

---

## Pinned Outfit During Combat/Danger Zones

If you equip a pinned (`!`) outfit during combat or a danger zone, the pin won't be detected until combat ends. The mod pauses outfit tracking during these states to preserve the pre-combat outfit for restoration.

Re-equip the pinned outfit afterward to re-pin.

---

## Duplicate Outfit Appearances

If multiple Equipment-EX outfits use the same items (identical visual slots), EX reports all of them as "equipped" simultaneously. This can cause Dynamic Wardrobe to detect the wrong outfit as currently worn.

Avoid creating outfits that share the exact same item combination.

---

## Config Files Overwritten on Update

`CustomApartments.reds` and `ContextMap.reds` are user-editable config files. Back up these files before updating — new versions will overwrite them.
