# Quick Setup

## Step 1: Create Your Outfits

Open Equipment-EX and save outfits with these names:

- **`home`** — what V wears at the apartment
- **`outdoor`** — V's default look everywhere else
- **`nude`** — applied when the game naturally undresses V (shower, romance scenes)
- **`combat`** — gear for fights and hostile areas
- **`ripper`** — what V wears at the ripperdoc (requires [Immersive Rippers](https://www.nexusmods.com/cyberpunk2077/mods/7064))

That's it! Walk into your apartment and the mod takes over.

---

## Step 2: Add Location Outfits

Press **F10** anywhere in the game to see your current location name. Name an outfit after that location and it'll apply there automatically.

- **`afterlife`** — applies at the Afterlife
- **`japantown`** — applies anywhere in Japantown
- **`badlands`** — applies in the Badlands

Got more than one favorite spot that should share the same look? Name an outfit after both locations — e.g. **`afterlife/clouds`** — and it'll apply at either one.

Or use region keywords to cover whole groups of locations at once:

| Keyword | Covers |
|---------|--------|
| **corpo** | Upscale areas — Corpo Plaza, City Center, North Oaks, Japantown... |
| **street** | Gritty neighborhoods — Kabuki, Little China, Arroyo, Glen... |
| **wild** | Rough territory — Badlands, Pacifica, Dogtown... |
| **club** | Nightlife venues — Afterlife, Clouds, Lizzie's Bar, Totentaz... |

See [Outfit Keywords](keywords.md) for the full reference.

---

## Examples

### Basic Setup

V's outfits: **`home cozy`**, **`outdoor streetwear`**, **`nude`**, **`combat`**

- Walk into the apartment → **`home cozy`**
- Leave the apartment → **`outdoor streetwear`**
- Get into a fight → **`combat`**, then back to **`outdoor streetwear`** when it's over
- Take a shower at home → **`nude`**, then **`home cozy`** after

### Location-Specific Outfits

V's outfits: **`outdoor casual`**, **`afterlife`**, **`japantown formal`**

- At the Afterlife → **`afterlife`** (exact match)
- In Japantown → **`japantown formal`** (exact match)
- Anywhere else → **`outdoor casual`** (fallback)

### Region Keywords

V's outfits: **`outdoor`**, **`corpo elegant`**, **`street tough`**, **`club party`**

- At Corpo Plaza → **`corpo elegant`**
- In Kabuki → **`street tough`**
- At the Afterlife → **`club party`**
- In the Badlands → **`outdoor`** (no "wild" outfit, falls back)

### Mixing It All Together

V's outfits: **`outdoor`**, **`corpo casual`**, **`club fancy`**, **`corpo club vip`**, **`afterlife`**

- At the Afterlife → **`afterlife`** (exact location always wins)
- At Clouds (corpo + club) → **`corpo club vip`** (2 keywords beat 1)
- At Embers (corpo + club) → **`corpo club vip`** (same match)
- At Lizzie's Bar (street + club) → **`club fancy`** ("corpo club vip" skipped — not a corpo area)
- At Corpo Plaza (corpo, no club) → **`corpo casual`**
- In the Badlands → **`outdoor`**

### Multiple Outfits = Variety

V's outfits: **`home cozy`**, **`home towel`**, **`home lazy`**

- Walk into the apartment → one of the three is picked at random
- Leave and come back → might get a different one

### Combat + Location

V's outfits: **`combat`**, **`combat street`**, **`combat wild`**

- Fight in Kabuki (street area) → **`combat street`**
- Fight in the Badlands (wild area) → **`combat wild`**
- Fight at Corpo Plaza → **`combat`** (no specific match, generic fallback)

---

## Tips

- Extra words after keywords are just for you — **`outdoor streetwear`** and **`outdoor casual`** both count as outdoor outfits
- Combine region keywords for more specific matching — **`corpo club vip`** only applies at clubs in upscale areas
- Use separators to match multiple locations with one outfit — **`badlands/coastview`** works in both areas
- Press **F10** anywhere to see your current location name
- All region mappings are customizable — edit `ContextMap.reds` to add locations or create new keywords
