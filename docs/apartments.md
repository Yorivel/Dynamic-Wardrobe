---
description: Register modded apartments via config file
---

# Custom Apartments

{% hint style="warning" %}
**Not all locations are compatible.** Before proceeding, note that custom apartment detection relies on the game's scene tier system. When V walks through a door into an interior, the game transitions from Tier 1 (free roam) to Tier 2 (restricted movement) — that transition is what the mod listens for. Open-air locations like camps, tents, or rooftops never trigger this transition because there's no loading door, so the mod has no event to react to. (Exception: Panam's bed at the Aldecaldos camp is detected via the bed workspot interaction — see [changelog v2.1](changelog/v2.1.md).)
{% endhint %}

For compatible apartments, add the entrance coordinates to `UserConfig/CustomApartments.reds` and the mod handles the rest.

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

## Adding Your Own

Open `UserConfig/CustomApartments.reds` and add entries using the config API:

```swift
DWApartment.Add(apartments, true)
  .Entrance(-905.00, 1868.56, 42.37);
```

That's all it takes for a basic apartment. For quest-gated apartments, multiple entrances, and how detection works under the hood, see the [Configuration Guide](apartment-guide.md).
