---
description: React to rain, dry weather, day, and night
---

# Weather & Time of Day

Add weather or time keywords to any outfit name and the mod will prefer it when conditions match. These keywords act as **modifiers** — they boost priority within the same tier but never override location or context matching.

## Keywords

| Keyword | When It Matches |
|---------|----------------|
| **`rain`** | Light or heavy rain |
| **`dry`** | No rain |
| **`day`** | Daytime (default: 06:00–21:00) |
| **`night`** | Nighttime (default: 21:00–06:00) |

Day/night boundaries are configurable in **Settings → Mod Settings → Dynamic Wardrobe → Day / Night**.

## How It Works

Weather and time keywords are tiebreakers, not location overrides. A location match always beats a weather-only match.

| Outfit Name | What It Does |
|-------------|-------------|
| `street rain` | Street outfit, preferred when it's raining |
| `corpo night` | Corpo outfit, preferred at night |
| `outdoor day` | Outdoor fallback, preferred during the day |
| `combat rain night` | Combat outfit, preferred on rainy nights |

<details>
<summary>Example</summary>

V's outfits: **`street`**, **`street rain`**, **`outdoor`**, **`outdoor night`**

* In Kabuki during a dry day → **`street`**
* In Kabuki while it's raining → **`street rain`** (enhanced match beats neutral)
* In the Badlands at night → **`outdoor night`** (no wild outfit, outdoor fallback with night boost)
* In the Badlands during the day → **`outdoor`** (`outdoor night` rejected — wrong time)

</details>

## Key Rules

* **All weather/time keywords must match** — `rain night` requires BOTH rain AND night. If either condition is wrong, the outfit is rejected
* **Enhanced beats neutral** — an outfit with matching weather/time keywords wins over one without them, within the same tier
* **Never crosses tiers** — `rain outdoor` (outdoor tier) never beats `street` (context tier) at a street location, regardless of weather
* **No re-roll on change** — if the weather changes but no weather-specific outfit exists for V's current area, nothing happens. The mod only re-evaluates when a better match becomes available or the current outfit's keywords no longer apply

## Limitations

Weather detection is limited to **rain/dry**. The game's weather system only exposes rain intensity to Redscript — conditions like fog, sandstorm, or sunny are tracked internally but can't be queried by mods.

{% hint style="info" %}
**Invisible when unused**: If none of your outfits use weather or time keywords, the system does nothing — no overhead, no unnecessary outfit changes.
{% endhint %}
