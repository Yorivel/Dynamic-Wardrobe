---
description: How the mod decides which outfit to apply
---

# Priority System

When V moves to a new location, Dynamic Wardrobe picks the best outfit using a simple order. Higher priority always wins.

## How Outfits Are Picked

### 1. Exact Location Match *(highest priority)*

If you have an outfit named after the specific location, it wins.

> `afterlife` at the Afterlife beats everything else.

### 2. Region Keyword Match

If there's no exact match, the mod checks region keywords (`corpo`, `street`, `wild`, `club`).

> `club casual` applies at any club when there's no specific outfit for that venue.

More keywords = more specific = higher priority.

> `corpo club` beats `club` at a corpo club.

### 3. `outdoor` *(lowest priority)*

If nothing else matches, V wears the `outdoor` outfit.

## Special Contexts

These take over when they're active, regardless of location:

| Context | When It's Active |
|---------|-----------------|
| **home** | V is inside a supported apartment |
| **combat** | V is in a fight or hostile area (also supports region matching) |
| **nude** | The game undresses V (shower, romance scenes) |
| **ripper** | V is sitting in a ripperdoc chair |
| **pinned (`!`)** | A `!` outfit is equipped — all auto-swaps are blocked |

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
│  └─ Yes → combat outfit
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
