---
description: Customize which locations belong to which region keywords
---

# Context Map

The Context Map controls which locations belong to which region keywords. Edit `Core/ContextMap.reds` to remap areas or create entirely new keywords.

## Default Keywords

| Keyword | Where It Applies |
|---------|-----------------|
| **corpo** | Corpo Plaza, City Center, Downtown, North Oaks, Charter Hill, Arasaka Waterfront, Japantown |
| **street** | Glen, Wellsprings, Arroyo, Little China, Kabuki, Northside, Rancho Coronado, Vista Del Rey |
| **wild** | Badlands, South Badlands, North Badlands, Pacifica, Coastview, West Wind Estate, Dogtown |
| **club** | Afterlife, Riot Club, Lizzie's Bar, Clouds, Dark Matter, Totentaz, Embers, El Coyote Cojo |

These keywords are what you use in outfit names — `corpo casual`, `street tough`, `club fancy`, etc. See [Advanced Setup](advanced.md) for how they work in practice.

## Quick Customization

To move a location to a different region, open `Core/ContextMap.reds` and move the corresponding line from one section to another. To add a new location to an existing region, add a new line following the same pattern:

```swift
|| Equals(word, "yourlocation")
```

Press **F10** in-game to see your current location name, then use the lowercase version of the location word.

For creating entirely new keywords, see the [Configuration Guide](context-map-guide.md).
