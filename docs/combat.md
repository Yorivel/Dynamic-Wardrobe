---
description: Auto-swap gear when things get hostile
---

# Combat & Danger Zones

Dynamic Wardrobe automatically swaps to a combat outfit when V enters a fight or a hostile area, and puts the previous outfit back on when it's over.

## Fights

When V enters combat, the mod swaps to a `combat` outfit. When the fight ends, the previous outfit comes back.

## Hostile Areas

Gang hideouts, enemy territory, and other dangerous zones trigger combat outfits even before shots are fired. If V enters an actual fight while in a dangerous zone, the outfit stays — no double-swap. When V leaves the zone, the previous outfit is restored.

## Location-Aware Combat

Combine `combat` with location or region keywords for area-specific combat gear:

| Outfit Name | Where It Applies |
|-------------|-----------------|
| `combat` | Anywhere (the default) |
| `combat street` | Only in street areas |
| `combat wild` | Only in wild/badlands areas |
| `combat badlands` | Only in Badlands specifically |
| `combat street club` | Only at street clubs (e.g. Afterlife) |

<details>
<summary>Example</summary>

V's outfits: **`combat`**, **`combat street`**, **`combat wild`**

* Fight in Kabuki (street area) → **`combat street`**
* Fight in the Badlands (wild area) → **`combat wild`**
* Fight at Corpo Plaza → **`combat`** (no specific match, so the generic one applies)

</details>

## Good to Know

* Location swaps are **paused during fights** — V won't change into a location outfit mid-combat
* If the previous outfit no longer exists when combat ends, the mod picks the best match for V's current location instead

For how combat outfits interact with the rest of the system, see [Priority System](priority.md).
