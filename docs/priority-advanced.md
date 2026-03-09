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

## Outfit Families

When multiple outfits match at the same priority level, the mod prefers outfits that share a **family keyword** with V's current outfit. Family keywords are any words in the outfit name that aren't used by a system — not a location, region, weather/time, or reserved prefix.

> V is wearing `outdoor jacket day`. Night falls. The mod finds `outdoor jacket night` and `outdoor casual night` at the same priority. It picks `outdoor jacket night` because "jacket" is a shared family keyword.

**How it works:**
- The mod strips out system keywords (location, region, weather/time, reserved prefixes) and looks at what's left — those are family keywords
- If V's current outfit and a candidate share **any** family keyword, the candidate is preferred
- If no candidates share a family keyword, or V's outfit has no family keywords, the mod picks at random (same as before)

**System keywords** (filtered out, never treated as family): `outdoor`, `home`, `nude`, `ripper`, `combat`, `vehicle`, `car`, `bike`, `acc`, `corpo`, `street`, `wild`, `club`, club names, `day`, `night`, `rain`, `dry`

**Works across all systems** — outdoor↔region, region↔combat, combat↔vehicle, and every other transition:

| V is wearing | Enters combat | Prefers | Over |
|-------------|--------------|---------|------|
| `outdoor jacket day` | → | `combat jacket` | `combat casual` |
| `street elegant` | → | `combat elegant` | `combat tactical` |
| `corpo formal` | → | `combat formal` | `combat casual` |

{% hint style="info" %}
**Opt-in by naming convention.** If you don't use shared decorative words across outfits, behavior is identical to before — pure random from the matched pool. Family keywords only matter when you intentionally share words like "jacket", "casual", "elegant" across different outfit categories.
{% endhint %}

{% hint style="warning" %}
**One shared keyword is enough.** `outdoor jacket leather day` connects with `combat jacket` because they share "jacket" — the unshared words ("leather") don't prevent the match. If you want to keep outfit families separate, use completely different family keywords (e.g. "formal" vs "casual", not "formal white" vs "formal black").
{% endhint %}

## Random Selection

When multiple outfits match at the same priority level and no family keyword preference applies, one is **picked at random**. So having `home cozy`, `home towel`, and `home lazy` gives V a different look on each apartment visit.

## Location-Aware Combat

Combat outfits follow the same matching logic. Combine `combat` with location or region keywords for area-specific combat gear:

```
combat + exact location → combat + region keywords → plain "combat"
```

> `combat street` only activates in street areas. `combat badlands` only in Badlands. Plain `combat` is the fallback.

For the full override order, see [Priority System](priority.md).
