---
description: Region keywords, stacking, and priority conflicts
---

# Region Keywords

## Basic Regions

V's outfits: **`outdoor`**, **`corpo elegant`**, **`street tough`**, **`club party`**

| Where V Is | Outfit | Why |
|-----------|--------|-----|
| Corpo Plaza | **`corpo elegant`** | `corpo` region match |
| Kabuki | **`street tough`** | `street` region match |
| Afterlife | **`club party`** | `club` region match |
| Badlands | **`outdoor`** | No `wild` outfit, fallback |

## Stacking Keywords

Combine region keywords for more specific matching. All keywords must match — and more keywords = higher priority.

V's outfits: **`outdoor`**, **`club fancy`**, **`corpo club vip`**

| Where V Is | Outfit | Why |
|-----------|--------|-----|
| Dark Matter (corpo + club) | **`corpo club vip`** | Both `corpo` and `club` match — 2 keywords beats 1 |
| Lizzie's Bar (street + club) | **`club fancy`** | `club` matches, but `corpo` doesn't — `corpo club vip` is skipped |
| Corpo Plaza (corpo only) | **`outdoor`** | `corpo club vip` needs both — plaza isn't a club |

## Stacked Region vs Single Region

V's outfits: **`outdoor`**, **`corpo casual`**, **`club fancy`**, **`corpo club vip`**, **`afterlife`**

| Where V Is | Outfit | Why |
|-----------|--------|-----|
| Afterlife | **`afterlife`** | Exact location always beats any region |
| Dark Matter | **`corpo club vip`** | 2 region keywords beat 1 |
| Embers | **`corpo club vip`** | Same — corpo + club area |
| Lizzie's Bar | **`club fancy`** | Street area, so `corpo club vip` doesn't apply |
| Corpo Plaza | **`corpo casual`** | Only `corpo` matches, no club |
| Badlands | **`outdoor`** | No region matches |

## Custom Regions

You can customize which locations belong to which region by editing `UserConfig/ContextMap.reds`. You can even create entirely new keywords beyond the four defaults. See [Context Map](../context-map.md) for the default mappings and [Configuration Guide](../context-map-guide.md) for how to create new keywords.
