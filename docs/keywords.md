# Outfit Keywords

Dynamic Wardrobe matches Equipment-EX outfit names by keyword. Name your outfits using these conventions and the mod handles the rest.

---

## Activity Keywords

These are matched by **prefix** — the outfit name must start with the keyword.

| Keyword | When Applied | Examples |
|---------|-------------|----------|
| `home` | Entering any supported apartment | `home cozy`, `home towel` |
| `outdoor` | Leaving apartment or no location match | `outdoor streetwear`, `outdoor casual` |
| `nude` | Shower/sleep scenes inside apartments | `nude` |
| `ripper` | Sitting in a ripperdoc chair | `ripper casual` |
| `combat` | Entering combat or a dangerous zone | `combat`, `combat street`, `combat badlands` |
| `!` (prefix) | Pinned — blocks all automatic swaps | `!tactical stealth`, `!casual friday` |

Extra words after the keyword are just for you — **`home cozy`** and **`home towel`** both count as home outfits. Multiple outfits with the same keyword are picked at random.

---

## Region Keywords

Assign outfits to broad categories of locations instead of naming every individual area. All keywords in an outfit name must match the current location.

| Keyword | Areas |
|---------|-------|
| **corpo** | CorpoPlaza, CityCenter, Downtown, NorthOaks, CharterHill, ArasakaWaterfront, JapanTown |
| **street** | Glen, Wellsprings, Arroyo, LittleChina, Kabuki, Northside, RanchoCoronado, VistaDelRey |
| **wild** | Badlands, SouthBadlands, NorthBadlands, Pacifica, Coastview, WestWindEstate, Dogtown |
| **club** | Afterlife, RiotClub, LizziesBar, Clouds, DarkMatter, Totentaz, Embers, ElCoyoteCojo |

Combine keywords for specificity: **`corpo club vip`** only applies at clubs in corpo areas (e.g. Clouds in Japantown). Higher keyword count = higher priority.

!!! tip "Custom mappings"
    All region mappings are customizable — edit `Core/ContextMap.reds` to add locations, remap areas, or create entirely new keywords.

---

## Location Keywords

For precise control, name outfits after specific locations:

1. Press **F10** in-game to see the current location enum (e.g. `Badlands_RedPeaks`)
2. Name your outfit using any word from that location (e.g. `badlands casual`)
3. The mod matches bidirectionally — `badlands` in the outfit name matches `southbadlands` in the location
4. Use separators for multiple locations: `badlands/coastview` matches both areas
5. The most specific location word matches first (right-to-left priority)

Location matches always take priority over region keyword matches.

---

## Naming Examples

| Outfit Name | What It Does |
|-------------|-------------|
| `home cozy` | Applied at any supported apartment |
| `outdoor streetwear` | Applied when leaving apartments or no match |
| `nude` | Applied during shower scenes |
| `ripper casual` | Applied at ripperdoc chairs |
| `corpo formal` | Applied in all upscale corporate areas |
| `street` | Applied in all gritty neighborhoods |
| `wild tactical` | Applied in Badlands, Pacifica, Dogtown, etc. |
| `club fancy` | Applied at nightlife venues |
| `corpo club vip` | Applied only at clubs in corpo areas (e.g. Clouds) |
| `badlands/coastview` | Applied in Badlands or Coastview (specific location) |
| `japantown nightlife` | Applied in Japantown district |
| `combat` | Applied in combat (any location) |
| `combat street` | Applied in combat in street areas only |
| `combat badlands` | Applied in combat in Badlands only |
| `!tactical stealth` | Pinned — stays on through location changes and combat |
| `!casual friday` | Pinned — consumed when V enters home, sits in ripper chair, or showers |
