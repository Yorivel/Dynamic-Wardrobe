---
description: How the mod decides which outfit to apply
---

# Priority System

When V moves to a new location or enters a new context, Dynamic Wardrobe picks the best outfit using a strict order. Higher priority always wins.

## Pinned Outfits

A `!`-prefixed outfit **blocks everything** — no location, region, combat, or danger zone swaps. Only scenes that naturally change V's appearance (home entry, shower, ripper) can override it, and doing so consumes the pin.

## Combat & Danger Zones

When V enters combat or a hostile area, combat outfits take priority over all location matching. Combat outfits have their own internal priority:

```
combat + exact location → combat + region keywords → plain "combat"
```

Combat outfits are skipped at home and during ripperdoc sessions. Location swaps are paused until the fight or zone ends.

## Home, Nude & Ripper

These activate based on game context, regardless of location:

| Context | When It's Active |
|---------|-----------------|
| **home** | V is inside a supported apartment |
| **nude** | The game undresses V (shower, romance scenes) |
| **ripper** | V is sitting in a ripperdoc chair |

## Location Matching

When none of the above contexts apply, the mod picks an outfit based on where V is:

### 1. Exact Location Match *(highest)*

If you have an outfit named after the specific location, it wins.

> `afterlife` at the Afterlife beats everything else.

### 2. Region Keyword Match

If there's no exact match, the mod checks region keywords (`corpo`, `street`, `wild`, `club`). More keywords = more specific = higher priority.

> `corpo club` beats `club` at a corpo club.

### 3. `outdoor` *(lowest)*

If nothing else matches, V wears the `outdoor` outfit.

## How Matching Works

Outfit names are split into words by any separator (spaces, slashes, dashes, etc.). Each word is checked against the current location name — the mod is flexible, so `badlands` in an outfit name matches `southbadlands` in the location, and vice versa.

When multiple outfits match, one is **picked at random**. So having `home cozy`, `home towel`, and `home lazy` gives V a different look on each apartment visit.

### Separators Between Locations = "Either One"

> `badlands/coastview` applies in **either** Badlands or Coastview.

### Multiple Region Keywords = "Both Must Match"

> `corpo club vip` only applies where the location is **both** corpo and club (e.g. Clouds, Embers).

## Visual Summary

```
V enters a new location
│
├─ Wearing a pinned (!) outfit?
│  └─ Yes → skip all swaps
│
├─ In combat or a hostile area?
│  └─ Yes → combat outfit (location/region-aware)
│
├─ Inside an apartment?
│  └─ Yes → home outfit
│
├─ Exact location match?
│  └─ Yes → use it
│
├─ Region keyword match?
│  └─ Yes → use best match (most keywords)
│
└─ Nothing matches → outdoor outfit
```
