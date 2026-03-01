---
description: Region keywords, location matching, and keyword stacking
---

# Advanced Setup

Now that you've got the basics down, let's make V's wardrobe smarter. Instead of one `outdoor` outfit for the entire city, you can have different looks for different parts of Night City.

## Region Keywords

Four broad keywords cover whole groups of locations at once:

| Keyword | Where It Applies |
|---------|-----------------|
| **corpo** | Corpo Plaza, City Center, Downtown, North Oaks, Charter Hill, Arasaka Waterfront, Japantown |
| **street** | Glen, Wellsprings, Arroyo, Little China, Kabuki, Northside, Rancho Coronado, Vista Del Rey |
| **wild** | Badlands, South Badlands, North Badlands, Pacifica, Coastview, West Wind Estate, Dogtown |
| **club** | Afterlife, Riot Club, Lizzie's Bar, Clouds, Dark Matter, Totentaz, Embers, El Coyote Cojo |

<details>
<summary>Example</summary>

V's outfits: **`outdoor`**, **`corpo elegant`**, **`street tough`**, **`club party`**

* At Corpo Plaza → **`corpo elegant`**
* In Kabuki → **`street tough`**
* At the Afterlife → **`club party`**
* In the Badlands → **`outdoor`** (no `wild` outfit, so the default kicks in)

</details>

{% hint style="info" %}
**Custom mappings** — You can customize which locations belong to which region — edit `Core/ContextMap.reds` to remap areas or create entirely new keywords.
{% endhint %}

## Location Keywords

For exact control over a specific spot, press **F10** in-game to see your current location name (e.g. `Badlands_RedPeaks`), then name an outfit using any word from that name. See [All Location Enums](location-enums.md) for the complete list.

The mod is flexible — `badlands` in your outfit name will match `southbadlands` in the location too. A specific location match always beats a region keyword match.

Use separators to share one outfit across multiple locations: **`badlands/coastview`** works in both.

<details>
<summary>Example</summary>

V's outfits: **`outdoor casual`**, **`afterlife`**, **`japantown formal`**

* At the Afterlife → **`afterlife`** (exact match wins)
* In Japantown → **`japantown formal`** (exact match wins)
* Anywhere else → **`outdoor casual`**

</details>

## Stacking Keywords

Combine region keywords for more specific matching. If an outfit has multiple region keywords, they all need to match — and more keywords means higher priority.

**`corpo club vip`** only kicks in at clubs in corpo areas (like Clouds in Japantown). At a street club like Lizzie's Bar, it won't apply.

<details>
<summary>Example</summary>

V's outfits: **`outdoor`**, **`corpo casual`**, **`club fancy`**, **`corpo club vip`**, **`afterlife`**

* At the Afterlife → **`afterlife`** (exact location always wins)
* At Clouds (corpo + club) → **`corpo club vip`** (2 keywords beat 1)
* At Lizzie's Bar (street + club) → **`club fancy`** (`corpo club vip` doesn't apply — not a corpo area)
* At Corpo Plaza (corpo, no club) → **`corpo casual`**
* In the Badlands → **`outdoor`**

</details>

For the full priority breakdown, see [Priority System](priority.md).
