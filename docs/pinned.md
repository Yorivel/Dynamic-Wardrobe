---
description: Lock any outfit with a ! prefix to stop all auto-swapping
---

# Pinned Outfits

Prefix any Equipment-EX outfit name with **`!`** to lock it in place. Dynamic Wardrobe will stop all automatic swapping while that outfit is equipped.

## How It Works

Equip a `!`-prefixed outfit via Equipment-EX and the mod stops swapping. That's it.

* **`!tactical stealth`** — V stays in this outfit no matter where you go
* **`!my favorite look`** — location changes, combat, hostile areas — all ignored

### What Gets Blocked

* Location-based outfit changes
* Region keyword matching
* Combat and danger zone swaps
* Outfit restore after combat ends
* Outfit restore on save/load

### What Still Works Normally

Scenes that naturally change V's appearance still play out:

* Home outfit when entering an apartment
* Ripper outfit at the ripperdoc
* Nude during shower/sleep
* All scene restores

These **use up the pin** — V's outfit changes, the `!` name is no longer equipped, and the mod goes back to normal swapping.

## Unpinning

Equip any non-`!` outfit via Equipment-EX and the mod takes over again.

To **re-pin** after a scene uses it up (e.g. shower → nude → home), just re-equip the `!` outfit.

## Matching Exclusion

An outfit named `!home cozy` will **never** be automatically picked as a "home" outfit. The `!` prefix tells the mod to ignore it entirely during matching — it only activates when you manually equip it via Equipment-EX.

## Save/Load

Pinned outfits survive saving and loading. Equipment-EX restores the outfit visually, and Dynamic Wardrobe recognizes the pin as soon as the game loads.

{% hint style="warning" %}
**Known Limitation** — If you equip a pinned outfit **during** a fight or while in a hostile area, the pin won't kick in until the fight or zone ends. The mod pauses outfit tracking during combat to make sure it can restore the right outfit afterward. Just re-equip the pinned outfit once you're out of combat.
{% endhint %}
