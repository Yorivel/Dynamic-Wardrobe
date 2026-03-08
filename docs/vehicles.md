---
description: Auto-swap outfits when V gets behind the wheel
---

# Vehicle Outfits

Dynamic Wardrobe can swap V's outfit when mounting a vehicle and restore the appropriate outfit on dismount. Three keywords control which vehicles an outfit applies to:

| Keyword | Applies To |
|---------|-----------|
| **`vehicle`** | Any ride — cars and bikes |
| **`car`** | Cars only |
| **`bike`** | Bikes only |

Save an outfit named **`car`** and V changes into it every time you hop in a car. Get off, and the mod picks the best outfit for V's current location — just like normal.

## Vehicle Context

Each vehicle in the game is assigned a context — **corpo**, **street**, or **wild** — based on its in-game lore. Add a context keyword to target groups of vehicles:

| Outfit Name | Where It Applies |
|-------------|-----------------|
| `car` | Any car |
| `car corpo` | Corpo cars (Rayfield, Herrera, Chevalier, etc.) |
| `car street` | Street cars (Quadra, Mizutani, Archer, etc.) |
| `bike wild` | Wild bikes (Brennan Apollo) |
| `vehicle corpo` | Any corpo ride — cars and bikes |

<details>
<summary>Example</summary>

V's outfits: **`car corpo`**, **`car street`**, **`bike`**

* Hop in a Rayfield Caliburn → **`car corpo`**
* Hop in a Quadra Type-66 → **`car street`**
* Hop on a Yaiba Kusanagi → **`bike`**
* Hop in a Thorton Mackinaw → no match (wild car, no `car wild` outfit) — V keeps current outfit

</details>

## Specific Vehicles

Target a specific vehicle by adding its brand or model name. Press **F10** while driving to see the current vehicle's record keywords.

| Outfit Name | Where It Applies |
|-------------|-----------------|
| `car caliburn` | Only the Rayfield Caliburn |
| `car herrera` | Any Herrera (Outlaw, Riptide) |
| `car herrera outlaw` | Only the Herrera Outlaw |
| `bike kusanagi` | Only the Yaiba Kusanagi |

Specific matches always beat context matches — `car caliburn` wins over `car corpo` when driving a Caliburn.

<details>
<summary>Example</summary>

V's outfits: **`car corpo`**, **`car caliburn`**, **`car herrera outlaw`**

* Driving a Rayfield Caliburn → **`car caliburn`** (specific match beats context)
* Driving a Herrera Outlaw → **`car herrera outlaw`** (both brand and model match)
* Driving a Herrera Riptide → **`car corpo`** (`car herrera outlaw` rejected — "outlaw" doesn't match Riptide)
* Driving a Villefort Cortes → **`car corpo`** (corpo context match)

</details>

## Accessories

Don't want a full outfit swap — just a helmet or gloves on top of V's current look? Save an Equipment-EX outfit with just those items and name it with the `(acc)` prefix: **`(acc) bike helmet`**, **`(acc) car corpo gloves`**.

Accessories are only applied when **no full vehicle outfit matches** — they're a fallback, not a layer on top of vehicle outfits. On dismount, layered items are stripped automatically.

For the full details, see [Vehicle Accessories](accessories.md).

## Decorative Names

Extra words that aren't vehicle brands, models, or context keywords are ignored — use them freely to describe your outfits:

* **`car casual`** — works on any car
* **`bike leather jacket`** — works on any bike
* **`vehicle cool ride`** — works on any vehicle

{% hint style="info" %}
**How it works**: The mod knows all vehicle brand and model names. Words it doesn't recognize (like "casual" or "leather") are treated as decorative labels and don't affect matching.
{% endhint %}

## Passenger Mode

By default, outfit changes are blocked when V is a passenger. This prevents unwanted swaps during quest rides (Panam, Delamain, etc.).

Toggle this in **Settings → Mod Settings → Dynamic Wardrobe → Behavior → Passenger Block**.

## Good to Know

* **While mounted**, location, combat, weather, and shuffle changes are all paused — the vehicle outfit stays until V dismounts
* **On dismount**, the mod picks a fresh outfit based on V's current location — it always re-evaluates, never restores the old one
* **Quest outfits** and **pinned outfits** override vehicle outfits — V won't change into a vehicle outfit if either is active
* **No vehicle outfit?** V keeps whatever they're wearing. Location changes are still blocked while mounted
* The vehicle context map is customizable — see [Vehicle Context Map](vehicle-context-map.md) to reclassify vehicles

For how vehicle outfits interact with the rest of the system, see [Priority System](priority.md).
