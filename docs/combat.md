# Combat & Danger Zones

Dynamic Wardrobe automatically swaps to a combat outfit when V enters a fight or a hostile area, and puts the previous outfit back on when it's over.

---

## How It Works

### Fights

When V enters combat, the mod swaps to a `combat` outfit. When the fight ends, the previous outfit comes back.

### Hostile Areas

Gang hideouts, enemy territory, and other dangerous zones trigger combat outfits even before shots are fired. If V enters an actual fight while in a dangerous zone, the outfit stays — no double-swap. When V leaves the zone, the previous outfit is restored.

---

## Location-Aware Combat

Combine `combat` with location or region keywords for area-specific combat gear:

| Outfit Name | Where It Applies |
|-------------|-----------------|
| `combat` | Anywhere (the default) |
| `combat street` | Only in street areas |
| `combat wild` | Only in wild/badlands areas |
| `combat badlands` | Only in Badlands specifically |
| `combat street club` | Only at street clubs (e.g. Afterlife) |

### How It Picks

```
combat + exact location → combat + region keywords → plain "combat"
```

---

## Good to Know

- Combat outfits are **skipped at home** and during ripperdoc sessions
- Location swaps are **paused during fights** — V won't change into a location outfit mid-combat
- If the previous outfit no longer exists when combat ends, the mod picks the best match for V's current location instead

---

## Quest Outfit Protection

When the game forces V into a quest outfit (e.g. the diving suit), Dynamic Wardrobe steps back completely — no swaps of any kind until the quest outfit is removed.
