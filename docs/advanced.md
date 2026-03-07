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
| **club** | Afterlife, Riot Club, Lizzie's Bar, Dark Matter, Totentaz, Embers, El Coyote Cojo, Heavy Hearts, Red Dirt |

<details>
<summary>Example</summary>

V's outfits: **`outdoor`**, **`corpo elegant`**, **`street tough`**, **`club party`**

* At Corpo Plaza → **`corpo elegant`**
* In Kabuki → **`street tough`**
* At the Afterlife → **`club party`**
* In the Badlands → **`outdoor`** (no `wild` outfit, so the default kicks in)

</details>

These mappings are customizable — see [Context Map](context-map.md) for details.

## Stacking Keywords

Combine region keywords for more specific matching. If an outfit has multiple region keywords, they all need to match — and more keywords means higher priority.

**`corpo club vip`** only kicks in at clubs in corpo areas (like Dark Matter in Japantown). At a street club like Lizzie's Bar, it won't apply.

<details>
<summary>Example</summary>

V's outfits: **`outdoor`**, **`corpo casual`**, **`club fancy`**, **`corpo club vip`**, **`afterlife`**

* At the Afterlife → **`afterlife`** (exact location always wins)
* At Dark Matter (corpo + club) → **`corpo club vip`** (2 keywords beat 1)
* At Lizzie's Bar (street + club) → **`club fancy`** (`corpo club vip` doesn't apply — not a corpo area)
* At Corpo Plaza (corpo, no club) → **`corpo casual`**
* In the Badlands → **`outdoor`**

</details>

## Location Keywords

For exact control over a specific spot, press **F10** in-game to see your current location name (e.g. `Badlands_RedPeaks`), then name an outfit using any word from that name. See [All Location Enums](location-enums.md) for the complete list.

The mod is flexible — `badlands` in your outfit name will match `southbadlands` in the location too. A specific location match always beats a region keyword match.

Use separators to share one outfit across multiple locations: **`badlands/coastview`** works in both.

<details>
<summary>Example</summary>

V's outfits: **`outdoor casual`**, **`street tough`**, **`afterlife`**, **`badlands/coastview rugged`**

* At the Afterlife → **`afterlife`** (exact location beats the `street` region match)
* In Kabuki → **`street tough`** (region match, no exact location outfit)
* In Badlands or Coastview → **`badlands/coastview rugged`** (separator = either location)
* In Japantown → **`outdoor casual`** (Japantown is `corpo`, not `street` — no match, falls back to outdoor)

</details>

## Naming Pitfalls

A few naming patterns that seem logical but don't work as expected:

| Name | Problem | Why |
|------|---------|-----|
| `outdoor street` | Redundant | `street` already falls back to `outdoor` when there's no match. Adding `outdoor` as a keyword forces BOTH to match — but `outdoor` isn't a region keyword, so it never matches anything |
| `outdoor corpo` | Same issue | `outdoor` isn't recognized by the matching system. The outfit either matches `corpo` (and ignores the `outdoor` word) or doesn't match at all |
| `home street` | Reserved prefix collision | `home` is a reserved prefix — this outfit will only activate at home, never as a street outfit. The `street` keyword is ignored |
| `combat club` | Reserved prefix collision | `combat` is reserved — this activates during combat at clubs, not as a club outfit. That's the intended behavior if you want club-specific combat gear, but not if you wanted a club outfit |
| `street afterlife` | Conflicting scope | `street` is a region keyword and `afterlife` is a location keyword. The mod sees both as location/context words that must ALL match — this works (Afterlife is in a street area), but `afterlife` alone is simpler and does the same thing |

{% hint style="info" %}
**Rule of thumb**: reserved prefixes (`home`, `nude`, `ripper`, `combat`, `car`, `bike`, `vehicle`) define *when* the outfit activates. Region keywords (`corpo`, `street`, `wild`, `club`) define *where*. Location keywords (`afterlife`, `kabuki`, etc.) are even more specific. Don't mix categories unless you understand how they interact — see [Priority System](priority.md).
{% endhint %}

## More Features

{% content-ref url="vehicles.md" %}
[Vehicle Outfits](vehicles.md) — automatic outfit swapping when V drives or rides
{% endcontent-ref %}

{% content-ref url="weather-time.md" %}
[Weather & Time of Day](weather-time.md) — rain, dry, day, and night as outfit modifiers
{% endcontent-ref %}

{% content-ref url="shuffling.md" %}
[Outfit Shuffling](shuffling.md) — automatic rotation on a timer
{% endcontent-ref %}

For the full priority breakdown, see [Priority System](priority.md).
