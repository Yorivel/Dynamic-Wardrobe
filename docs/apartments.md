# Custom Apartments

Dynamic Wardrobe supports modded apartments. Register any apartment by adding its entrance coordinates to `Core/CustomApartments.reds` — the mod handles the rest.

---

## Supported Apartments

### Built-in (no configuration needed)

| Apartment | Location |
|-----------|----------|
| H10 (V's starting apartment) | Little China |
| Glen Apartment | Glen |
| Northside Apartment | Northside |
| Japantown Apartment | Japantown |
| Corpo Plaza Apartment | Corpo Plaza |
| Dogtown Hideout (Kress Street) | Dogtown (Phantom Liberty) |
| Judy's Apartment | Kabuki (quest-gated) |

### Pre-configured Custom Apartments

| Apartment | Location | Quest Gate |
|-----------|----------|------------|
| River's Trailer | Badlands | "Following the River" (romance or friendship) |

River's apartment ships as a ready-to-use example in `CustomApartments.reds`.

---

## Adding Your Own Apartments

Open `Core/CustomApartments.reds` and add entries using the builder API:

```swift
DWApartment.Add(apartments, true)
  .Entrance(-905.00, 1868.56, 42.37);
```

### Builder API

| Method | Purpose |
|--------|---------|
| `DWApartment.Add(apartments, hasShower)` | Create a new apartment entry. `hasShower` controls shower deferral behavior |
| `.Entrance(x, y, z)` | Add an entrance point (chain multiple for multi-entrance apartments) |
| `.Gate("fact_name", minValue)` | Add a quest gate — AND logic (all gates must pass) |
| `.OrGate("fact_name", minValue)` | Add an OR quest gate (at least one must pass) |

### Example: Multi-entrance with quest gate

```swift
DWApartment.Add(apartments, true)
  .Entrance(-100.0, 200.0, 50.0)
  .Entrance(-102.0, 198.0, 50.0)
  .Gate("my_quest_fact", 1);
```

### Example: OR gate (multiple quest paths)

```swift
DWApartment.Add(apartments, false)
  .Entrance(300.0, -400.0, 10.0)
  .OrGate("quest_path_a", 1)
  .OrGate("quest_path_b", 1);
```

---

## Configuration Options

### `hasShower`

- **`true`** — the apartment has a shower. If shower deferral is enabled in settings, the home outfit won't apply until after V showers
- **`false`** — no shower. The home outfit applies immediately on entry

### Quest Gates

- **`.Gate()`** — AND logic. All gates must pass for the apartment to be detected
- **`.OrGate()`** — OR logic. At least one gate must pass. Use for apartments unlockable via multiple quest paths

---

## How Detection Works

Custom apartments are detected using **SceneTier2 transitions + entrance proximity**:

1. When the game transitions to SceneTier2 (restricted locomotion) while V is near the configured entrance coordinates (~1 meter), the apartment is detected
2. On exit (SceneTier1 return), the home state is cleared and the normal location/context/outdoor fallback runs

!!! info "Event-driven"
    Dynamic Wardrobe is fully event-driven — it does not poll the player's position. This means open-air locations that don't trigger a scene tier change on entry (e.g. camps, tents) cannot be detected as custom apartments.

---

## Finding Coordinates and Quest Facts

The config file includes CET console commands for looking up entrance coordinates and quest facts. Open the Cyber Engine Tweaks console in-game to use them.
