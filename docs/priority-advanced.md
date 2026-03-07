---
description: How outfit matching, separators, and keyword stacking work under the hood
---

# Priority Details

This page explains the mechanics behind [Priority System](priority.md) — how the mod decides between multiple matching outfits.

## How Matching Works

Outfit names are split into words by any separator (spaces, slashes, dashes, etc.). Each word is checked against the current location name — the mod is flexible, so `badlands` in an outfit name matches `southbadlands` in the location, and vice versa. See [All Location Enums](location-enums.md) for the full list of location names the game reports.

## Separators

Separators between location words mean **"either one"**:

> `badlands/coastview` applies in **either** Badlands or Coastview.

## Keyword Stacking

Multiple region keywords in the same outfit name mean **"all must match"**:

> `corpo club vip` only applies where the location is **both** corpo and club (e.g. Dark Matter, Embers).

More keywords = more specific = higher priority. So `corpo club` beats `club` at a corpo club.

## Random Selection

When multiple outfits match at the same priority level, one is **picked at random**. So having `home cozy`, `home towel`, and `home lazy` gives V a different look on each apartment visit.

## Location-Aware Combat

Combat outfits follow the same matching logic. Combine `combat` with location or region keywords for area-specific combat gear:

```
combat + exact location → combat + region keywords → plain "combat"
```

> `combat street` only activates in street areas. `combat badlands` only in Badlands. Plain `combat` is the fallback.

For the full override order, see [Priority System](priority.md).
