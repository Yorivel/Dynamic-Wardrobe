---
description: Combat swaps, location-aware combat, and restore behavior
---

# Combat

## Basic Combat Swap

V's outfits: **`outdoor streetwear`**, **`combat tactical`**

| What Happens | Outfit |
|-------------|--------|
| Walking around | **`outdoor streetwear`** |
| Fight starts | **`combat tactical`** |
| Fight ends | **`outdoor streetwear`** (restored) |

The mod remembers what V was wearing before the fight and puts it back on.

## Location-Aware Combat

Combine `combat` with location or region keywords for area-specific gear.

V's outfits: **`combat`**, **`combat street`**, **`combat wild`**

| Where the Fight Happens | Outfit | Why |
|------------------------|--------|-----|
| Kabuki (street area) | **`combat street`** | `street` region match |
| Badlands (wild area) | **`combat wild`** | `wild` region match |
| Corpo Plaza | **`combat`** | No specific match, generic fallback |

## Combat vs Location Outfits

Combat outfits override location matching while active.

V's outfits: **`outdoor`**, **`afterlife`**, **`combat`**

| What Happens | Outfit | Why |
|-------------|--------|-----|
| Walk into the Afterlife | **`afterlife`** | Exact location match |
| Fight starts at the Afterlife | **`combat`** | Combat overrides location |
| Fight ends | **`afterlife`** (restored) | Back to location match |

## Danger Zones

Gang hideouts and hostile areas trigger combat outfits even before shots are fired.

V's outfits: **`outdoor casual`**, **`combat heavy`**

| What Happens | Outfit |
|-------------|--------|
| Walk into a gang hideout | **`combat heavy`** |
| Fight starts inside | **`combat heavy`** (no double-swap) |
| Leave the zone | **`outdoor casual`** (restored) |

For the full combat reference, see [Combat & Danger Zones](../combat.md). For how combat fits into the override order, see [Priority System](../priority.md).
