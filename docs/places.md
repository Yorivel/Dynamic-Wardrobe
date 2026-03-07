---
description: Register clubs and venues via config file
---

# Custom Places

{% hint style="warning" %}
**Not all locations are compatible.** Place detection works in two ways: (1) entrance proximity when the game reports a matching location enum, and (2) scene tier transition for elevators and loading zones. Open-air locations without either trigger can't be detected.
{% endhint %}

For compatible locations, add the entrance coordinates to `UserConfig/CustomPlaces.reds` and the mod handles the rest.

## Supported Places

### Built-in (no setup needed)

| Place | District | Detection |
|-------|----------|-----------|
| Afterlife | Little China | Entrance proximity |
| Riot Club | Little China | Entrance proximity (4 entrances) |
| Lizzie's Bar | Kabuki | Entrance proximity |
| Dark Matter | Japantown | Elevator (scene tier) |
| Totentaz | Northside | Entrance proximity |
| Embers | Glen | Entrance proximity |
| El Coyote Cojo | Glen | Entrance proximity |
| Heavy Hearts | Dogtown | Staircase (scene tier) |
| Red Dirt | Arroyo | Entrance proximity (2 entrances) |

**Unsupported:** Clouds (Japantown) — the club's open layout and unreliable location enum make detection impossible. Use a `!` pinned outfit if you want a specific look there.

## Adding Your Own

Open `UserConfig/CustomPlaces.reds` and add entries using the config API:

```swift
DWPlace.Add(places, 20, "DistrictName_PlaceName")
  .District("DistrictName")
  .Entrance(-100.0, 200.0, 50.0, 1.0);
```

That's all it takes for a basic place. For elevator/loading zone entrances, multiple districts, and how detection works under the hood, see the [Configuration Guide](places-guide.md).
