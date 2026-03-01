---
description: Full reference of all outfit keywords — activity, region, and location
---

# Outfit Keywords

Name your Equipment-EX outfits with the right keywords and Dynamic Wardrobe knows what to do with them.

## Activity Keywords

These keywords tell the mod *when* to use an outfit. The outfit name must **start** with one of these:

| Keyword | When It's Used | Examples |
|---------|---------------|----------|
| `home` | At any supported apartment | `home cozy`, `home towel` |
| `outdoor` | Everywhere else (the default) | `outdoor streetwear`, `outdoor casual` |
| `nude` | Shower and sleep scenes | `nude` |
| `ripper` | Sitting in a ripperdoc chair | `ripper casual` |
| `combat` | During fights and in hostile areas | `combat`, `combat street` |
| `!` (prefix) | Locks the outfit — blocks all auto-swaps | `!tactical stealth`, `!casual friday` |

Extra words after the keyword are just labels for you — **`home cozy`** and **`home towel`** both count as home outfits. Got more than one? The mod picks one at random.

## Region Keywords

Instead of naming outfits after every individual location, you can use broad region keywords. If an outfit has multiple region keywords, they all need to match.

| Keyword | Where It Applies |
|---------|-----------------|
| **corpo** | Corpo Plaza, City Center, Downtown, North Oaks, Charter Hill, Arasaka Waterfront, Japantown |
| **street** | Glen, Wellsprings, Arroyo, Little China, Kabuki, Northside, Rancho Coronado, Vista Del Rey |
| **wild** | Badlands, South Badlands, North Badlands, Pacifica, Coastview, West Wind Estate, Dogtown |
| **club** | Afterlife, Riot Club, Lizzie's Bar, Clouds, Dark Matter, Totentaz, Embers, El Coyote Cojo |

Stacking keywords makes them more specific: **`corpo club vip`** only kicks in at clubs in corpo areas (like Clouds in Japantown). More keywords = higher priority.

{% hint style="info" %}
**Custom mappings** — You can customize which locations belong to which region — edit `Core/ContextMap.reds` to remap areas or create entirely new keywords.
{% endhint %}

## Location Keywords

For exact control over a specific spot:

1. Press **F10** in-game to see the current location name (e.g. `Badlands_RedPeaks`)
2. Name your outfit using any word from that name (e.g. `badlands casual`)
3. The mod is flexible — `badlands` in your outfit name will match `southbadlands` in the location too
4. Use separators to share one outfit across multiple locations: `badlands/coastview` works in both
5. A specific location match always beats a region keyword match

## Quick Reference

| Outfit Name | What Happens |
|-------------|-------------|
| `home cozy` | Worn at any apartment |
| `outdoor streetwear` | Worn everywhere else |
| `nude` | Worn during shower scenes |
| `ripper casual` | Worn at the ripperdoc |
| `corpo formal` | Worn in upscale corporate areas |
| `street` | Worn in gritty neighborhoods |
| `wild tactical` | Worn in Badlands, Pacifica, Dogtown, etc. |
| `club fancy` | Worn at nightlife venues |
| `corpo club vip` | Worn only at clubs in corpo areas |
| `badlands/coastview` | Worn in Badlands or Coastview |
| `combat` | Worn in any fight |
| `combat street` | Worn in fights in street areas |
| `!tactical stealth` | Locked — stays on no matter what |
