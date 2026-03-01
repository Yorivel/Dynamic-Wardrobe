# Changelog

---

## v1.4

### New: Dogtown Hideout (Kress Street) Support

Phantom Liberty's Dogtown apartment (`Dogtown_Hideout`) is now recognized as a home location. Uses the same detection as vanilla apartments — the engine only reports the enum after the apartment is unlocked, so no configuration needed.

### New: River's Apartment (Trailer Park) Support

River's apartment in the Badlands is now supported as a pre-configured custom apartment. Quest-gated — only activates after completing "Following the River" (romance or friendship path). Ships as a built-in entry in `CustomApartments.reds`.

### New: Custom Apartment Support

Register any modded apartment by adding its entrance coordinates to `Core/CustomApartments.reds`. See [Custom Apartments](apartments.md) for details.

- Simple config API with chained builder syntax
- Multiple entrances, quest gates (AND + OR logic), shower deferral toggle
- Event-driven detection via SceneTier2 transitions + entrance proximity

### New: Pinned Outfits (`!` Prefix)

Prefix any outfit name with `!` to lock it in place. See [Pinned Outfits](pinned.md) for details.

- Blocks all location, context, combat, and save/load swaps
- Home, ripper, and scene logic play normally (consuming the pin)
- Survives save/load

### Bug Fix: Corpo Plaza Apartment Enum Mismatch

The Corpo Plaza apartment could report unexpected district enums (`CityCenter`, `Downtown`) at runtime, causing the mod to think V left the apartment. Fixed by adding the missing district names to the apartment safety check.

### Bug Fix: Runtime Outfit Tracking Sync

Manually equipping an outfit via Equipment-EX wasn't detected until a game reload. DW now syncs its tracking with EX on every location change.

---

## v1.3

### New: Combat Outfits

Automatically swap to a combat outfit when V enters combat or a dangerous zone, and restore the previous outfit when leaving. Supports location and region keyword matching for area-specific combat gear. See [Combat & Danger Zones](combat.md).

- Basic: `combat` applies everywhere
- Context-aware: `combat street`, `combat wild`, `combat street club`
- Location-aware: `combat badlands`, `combat japantown`
- Dangerous zones trigger combat outfits before shots are fired

### Bug Fix: Scene Tier Location Guard

Location-based outfit changes are now blocked during braindances, cutscenes, ripperdoc sessions, and showers. Uses a persisted quest fact (`dw_block_location`) that survives loading screens.

### Internal Refactoring

- Extracted shared helpers: `ApplyLocationOrFallback`, `GuardedHomeSync`, `LoadNudePreserveTracking`, `PickRandom`
- Fixed: ripper flag stuck on fast travel, stale location block on save/load, ripper outfit corrupting tracking
- Removed dead fields and redundant code

---

## v1.2.1

### Bug Fix: Manual Outfit Change Detection

Manually swapping outfits via Equipment-EX now correctly triggers re-application of context/location outfits on the next location change.

---

## v1.2

### New: Regional Context Keywords

Four context keywords — `corpo`, `street`, `wild`, `club` — for assigning outfits to broad categories of locations. See [Outfit Keywords](keywords.md).

- Multi-keyword scoring: `corpo club formal` only applies at clubs in corpo areas
- Customizable mappings via `Core/ContextMap.reds`
- Fallback chain: location match → context match → outdoor

### Bug Fix

Entrance detection radius tightened from 5.0 to 1.0 units.

---

## v1.1

### New: Judy's Apartment Support

Judy's apartment (`Kabuki_JudysApartment`) is now recognized as a home location. Quest-gated — activates after completing Pyramid Song (romance or friendship path).

### Bug Fix: Quest Outfit Guard

Dynamic Wardrobe no longer swaps outfits when the game has equipped a quest outfit (e.g. tactical diving suit). All outfit loading paths are guarded by Equipment-EX's `IsBlocked()` check.

---

## v1.0

### Initial Release

- Context-driven outfit swapping — apartments, locations, ripperdocs, showers, drive scenes
- Proximity-based apartment detection for 5 vanilla apartments
- Location matching with bidirectional keyword matching and random selection
- Multi-location outfits via separators
- Persistent home state via quest facts
- Shower deferral setting
- F10 location display
- Master toggle via Mod Settings
- 19 language translations via Codeware localization
