---
description: Exact location matching, separators, and conflicts
---

# Location Matching

## Exact Location Outfits

V's outfits: **`outdoor casual`**, **`afterlife`**, **`japantown formal`**

| Where V Is | Outfit | Why |
|-----------|--------|-----|
| At the Afterlife | **`afterlife`** | Exact match |
| In Japantown | **`japantown formal`** | Exact match |
| Anywhere else | **`outdoor casual`** | No match, fallback |

Press **F10** in-game to see your current location name. See [All Location Enums](../location-enums.md) for the complete list.

## Separators

Use `/`, `-`, or any non-alphanumeric separator to share one outfit across multiple locations. Separators mean **"either one"**.

V's outfits: **`outdoor`**, **`badlands/coastview rugged`**

| Where V Is | Outfit | Why |
|-----------|--------|-----|
| In the Badlands | **`badlands/coastview rugged`** | `badlands` matches |
| In Coastview | **`badlands/coastview rugged`** | `coastview` matches |
| In Kabuki | **`outdoor`** | Neither word matches |

## Exact Location vs Region Keyword

Exact location matches always beat region keywords.

V's outfits: **`outdoor`**, **`street tough`**, **`afterlife`**

| Where V Is | Outfit | Why |
|-----------|--------|-----|
| At the Afterlife | **`afterlife`** | Exact location beats `street` region |
| In Kabuki | **`street tough`** | Region match (Kabuki is a street area) |
| In the Badlands | **`outdoor`** | No match, fallback |

The Afterlife is both a `street` and `club` location — but `afterlife` is an exact match, so it wins over any region keyword.

## Substring Matching

The mod is flexible with matching — `badlands` in an outfit name will match `southbadlands` in the location.

V's outfits: **`outdoor`**, **`badlands explorer`**, **`southbadlands dusty`**

| Where V Is | Outfit | Why |
|-----------|--------|-----|
| In South Badlands | Both match — one is picked at random | `badlands` matches `southbadlands`, and so does `southbadlands` |
| In North Badlands | **`badlands explorer`** | `badlands` matches `northbadlands` |

{% hint style="info" %}
If you want to target only South Badlands, use **`southbadlands`** — it won't match `northbadlands`.
{% endhint %}
