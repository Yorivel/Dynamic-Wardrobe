# Custom Apartments

Dynamic Wardrobe supports modded apartments. Add an apartment's entrance coordinates to `Core/CustomApartments.reds` and the mod handles the rest.

---

## Supported Apartments

### Built-in (no setup needed)

| Apartment | Location |
|-----------|----------|
| H10 (V's starting apartment) | Little China |
| Glen Apartment | Glen |
| Northside Apartment | Northside |
| Japantown Apartment | Japantown |
| Corpo Plaza Apartment | Corpo Plaza |
| Dogtown Hideout (Kress Street) | Dogtown (Phantom Liberty) |
| Judy's Apartment | Kabuki (unlocked by quest) |

### Pre-configured Custom Apartments

| Apartment | Location | Unlock Condition |
|-----------|----------|-----------------|
| River's Trailer | Badlands | Complete "Following the River" (romance or friendship) |

River's apartment is included as a ready-to-use example in `CustomApartments.reds`.

---

## Adding Your Own

Open `Core/CustomApartments.reds` and add entries using the config API:

```swift
DWApartment.Add(apartments, true)
  .Entrance(-905.00, 1868.56, 42.37);
```

### Available Options

| Method | What It Does |
|--------|-------------|
| `DWApartment.Add(apartments, hasShower)` | Creates a new apartment. `hasShower` controls whether the shower deferral setting applies |
| `.Entrance(x, y, z)` | Adds a door location (use multiple times for apartments with more than one entrance) |
| `.Gate("fact_name", minValue)` | Adds a quest requirement — ALL gates must be met |
| `.OrGate("fact_name", minValue)` | Adds an alternative quest requirement — at least ONE must be met |

### Example: Two entrances with a quest requirement

```swift
DWApartment.Add(apartments, true)
  .Entrance(-100.0, 200.0, 50.0)
  .Entrance(-102.0, 198.0, 50.0)
  .Gate("my_quest_fact", 1);
```

### Example: Multiple quest paths (either one unlocks it)

```swift
DWApartment.Add(apartments, false)
  .Entrance(300.0, -400.0, 10.0)
  .OrGate("quest_path_a", 1)
  .OrGate("quest_path_b", 1);
```

---

## Settings

### `hasShower`

- **`true`** — the apartment has a shower. If shower deferral is turned on in mod settings, V won't change into the home outfit right away — it waits until after the shower
- **`false`** — no shower. V changes into the home outfit immediately on entry

### Quest Gates

- **`.Gate()`** — AND logic. All gates must pass for the apartment to activate
- **`.OrGate()`** — OR logic. At least one must pass. Use this for apartments that can be unlocked through different quest paths

---

## How It's Detected

The mod detects custom apartments by watching for a specific game state change (scene tier transition) while V is near the configured door coordinates (~1 meter). When V leaves, the mod detects the transition back to normal gameplay and switches to the appropriate outfit.

!!! info "Limitation"
    Open-air locations that don't trigger a scene change on entry (like camps or tents) can't be detected. The mod is fully event-driven — it doesn't constantly check V's position.

---

## Finding Coordinates

The config file includes console commands for looking up entrance coordinates and quest facts using Cyber Engine Tweaks. Open the CET console in-game to use them.
