---
description: Layer individual items on top of V's outfit while riding
---

# Vehicle Accessories

Sometimes you don't want a full outfit swap when V hops on a vehicle — just a helmet, goggles, or gloves on top of whatever they're already wearing. That's what accessories do.

An accessory outfit is a partial Equipment-EX outfit (one or a few items) that gets **layered on top** of V's current look instead of replacing it. When V dismounts, the layered items are stripped and V's outfit is back to normal.

## How It Works

1. V mounts a vehicle
2. The mod checks for full vehicle outfits first — if one matches, it's applied and **accessories are skipped**
3. If no full vehicle outfit matches, the mod looks for `(acc)` outfits that match the vehicle
4. The best match is picked and its items are layered on top of V's current outfit via Equipment-EX
5. On dismount, all layered items are stripped automatically

{% hint style="info" %}
**Full outfits always win.** If V has both `bike` (full outfit) and `(acc) bike helmet` (accessory), hopping on a bike applies the full outfit — the accessory is ignored. Accessories are a fallback for when you want to keep V's current look and just add a few items.
{% endhint %}

## The `(acc)` Prefix

Accessory outfits are regular Equipment-EX outfits with the `(acc)` prefix. Save an outfit in EX with just the items you want layered (e.g. a helmet), then name it with the prefix:

| Outfit Name | What It Does |
|-------------|-------------|
| `(acc) bike` | Layers on any bike |
| `(acc) car` | Layers in any car |
| `(acc) vehicle` | Layers on any ride |

The `(acc)` prefix is stripped before matching — everything after it follows the same rules as [full vehicle outfits](vehicles.md). Context keywords, specific vehicles, decorative names — it all works the same way.

## Context Keywords

Target groups of vehicles by adding a context keyword:

| Outfit Name | Where It Layers |
|-------------|----------------|
| `(acc) bike street` | Street bikes (Arch, Yaiba Kusanagi) |
| `(acc) car corpo` | Corpo cars (Rayfield, Herrera) |
| `(acc) car wild` | Wild cars (Thorton Mackinaw, Kaukaz) |

## Specific Vehicles

Target a specific vehicle by brand or model:

| Outfit Name | Where It Layers |
|-------------|----------------|
| `(acc) bike kusanagi` | Only on the Yaiba Kusanagi |
| `(acc) car caliburn` | Only in the Rayfield Caliburn |
| `(acc) car herrera outlaw` | Only in the Herrera Outlaw |

Just like full vehicle outfits, specific matches beat context matches — `(acc) bike kusanagi` wins over `(acc) bike street` when riding a Kusanagi.

Press **F10** while driving to see the current vehicle's record keywords — useful for finding the right brand/model names to use.

## Creating an Accessory Outfit

1. Open Equipment-EX and equip **only** the items you want layered (e.g. a helmet and goggles)
2. Save the outfit with the `(acc)` prefix — e.g. `(acc) bike helmet`
3. That's it — next time V hops on a matching vehicle without a full vehicle outfit, the items will be layered on top

{% hint style="warning" %}
**Keep it small.** Accessory outfits should contain just a few items — the pieces you want added on top. If you put a full outfit's worth of items in an `(acc)` outfit, it'll effectively replace V's look anyway.
{% endhint %}

## Decorative Names

Words that aren't vehicle brands, models, or context keywords are ignored — just like full vehicle outfits. Use them freely to label your accessories:

* **`(acc) bike helmet`** — "helmet" is decorative, layers on any bike
* **`(acc) car corpo shades`** — "shades" is decorative, layers on corpo cars

## Multiple Accessories

Only **one** `(acc)` outfit is applied per ride. If multiple `(acc)` outfits tie for the same score, one is picked at random — same as full vehicle outfits.

To guarantee specific items, put everything you want layered into a single `(acc)` outfit rather than splitting across multiple outfits.

## Good to Know

* **Full vehicle outfits take priority** — if any full vehicle outfit matches, all accessories are skipped
* **Layered items are stripped on dismount** — V's outfit returns to exactly what it was before mounting
* **Pinned outfits** block accessories too — the `!` prefix prevents all vehicle outfit changes, including layers
* **Quest outfits** block accessories — same as full vehicle outfits
* Accessories use the same [Vehicle Context Map](vehicle-context-map.md) as full vehicle outfits

For how vehicle outfits and accessories interact with the rest of the system, see [Priority System](priority.md).
