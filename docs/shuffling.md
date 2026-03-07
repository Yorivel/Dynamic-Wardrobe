---
description: Automatic outfit rotation on a timer
---

# Outfit Shuffling

Dynamic Wardrobe can automatically rotate V's outfit on a timer while exploring Night City.

## Modes

Configure in **Settings → Mod Settings → Dynamic Wardrobe → Shuffling**:

| Mode | What It Does |
|------|-------------|
| **Off** | No shuffling (default) |
| **Context** | Re-rolls within V's current location/context/outdoor pool. If V is in a corpo area, only corpo outfits are considered |
| **Chaos** | Picks from ALL non-reserved outfits, ignoring location and context entirely |

## Timer

Set the shuffle interval with two sliders:

* **Min interval** — shortest time between shuffles (default: 60s)
* **Max interval** — longest time between shuffles (default: 120s)

Each shuffle picks a random interval between min and max for the next one, keeping things unpredictable.

## When Shuffling Is Paused

The timer keeps running, but the actual outfit change is skipped when:

* V is at home, at a club, at a ripperdoc, or in combat
* V is in a vehicle
* A pinned or quest outfit is active
* V is in a scene or loading screen
* The mod is disabled

The shuffle re-evaluates as soon as V returns to normal gameplay.
