---
description: Customize which locations belong to which region keywords
---

# Context Map

The Context Map controls which locations belong to which region keywords. Edit `Core/ContextMap.reds` to remap areas or create entirely new keywords.

## Default Keywords

| Keyword | Where It Applies |
|---------|-----------------|
| **corpo** | `CorpoPlaza`, `CityCenter`, `Downtown`, `NorthOaks`, `CharterHill`, `ArasakaWaterfront`, `JapanTown` |
| **street** | `Glen`, `Wellsprings`, `Arroyo`, `LittleChina`, `Kabuki`, `Northside`, `RanchoCoronado`, `VistaDelRey` |
| **wild** | `Badlands`, `SouthBadlands`, `NorthBadlands`, `Pacifica`, `Coastview`, `WestWindEstate`, `Dogtown` |
| **club** | `Afterlife`, `RiotClub`, `LizziesBar`, `Clouds`, `DarkMatter`, `Totentaz`, `Embers`, `ElCoyoteCojo` |

These keywords are what you use in outfit names — `corpo casual`, `street tough`, `club fancy`, etc. See [Advanced Setup](advanced.md) for how they work in practice.

## Quick Customization

To move a location to a different region, open `Core/ContextMap.reds` and move the corresponding line from one section to another. To add a new location to an existing region, add a new line following the same pattern:

```swift
|| Equals(word, "yourlocation")
```

Press **F10** in-game to see your current location name, then use the lowercase version of the location word.

For creating entirely new keywords, see the [Configuration Guide](context-map-guide.md).
