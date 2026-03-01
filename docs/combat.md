# Combat & Danger Zones

Dynamic Wardrobe automatically swaps to a combat outfit when V enters combat or a hostile area, and restores the previous outfit when it's over.

---

## How It Works

### Combat Detection

When V enters combat, the mod swaps to a `combat` outfit automatically. When combat ends, the previous outfit is restored seamlessly.

### Dangerous Zones

Hostile areas (gang hideouts, enemy territory) trigger combat outfits even before shots are fired. If V enters actual combat while in a dangerous zone, the outfit stays — no double-swap. On zone exit, the pre-zone outfit is restored.

---

## Location-Aware Combat

Combine `combat` with location or region keywords for area-specific combat gear:

| Outfit Name | Where It Applies |
|-------------|-----------------|
| `combat` | Anywhere (generic fallback) |
| `combat street` | Only in street areas |
| `combat wild` | Only in wild/badlands areas |
| `combat badlands` | Only in Badlands specifically |
| `combat street club` | Only at street clubs (e.g. Afterlife) |

### Combat Priority

```
combat + exact location → combat + region keywords → plain "combat" fallback
```

---

## Guards

- Combat outfits are **skipped at home** and during ripperdoc sessions
- Location/context outfit changes are **suppressed while in combat** or dangerous zones
- If the pre-combat outfit is no longer valid on exit, the normal location → context → outdoor fallback chain runs

---

## Quest Outfit Protection

When the game equips V with a quest outfit (e.g. tactical diving suit), Dynamic Wardrobe steps back and skips all outfit swaps — including combat — until the quest outfit is removed.
