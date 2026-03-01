# Pinned Outfits

Prefix any Equipment-EX outfit name with **`!`** to lock it in place. Dynamic Wardrobe will skip all automatic swaps while a pinned outfit is equipped.

---

## How It Works

Equip a `!`-prefixed outfit via Equipment-EX and the mod stops swapping. It's that simple.

- **`!tactical stealth`** — V stays in this outfit no matter where you go
- **`!my favorite look`** — location changes, combat, danger zones — all ignored

### What Gets Blocked

- Location changes
- Context/region matching
- Outdoor fallback
- Combat and danger zone entry
- Combat/zone exit restore
- Home outfit restore on save/load

### What Still Plays Normally

Scenes that naturally change V's appearance still work:

- Home outfit on apartment entry
- Ripper outfit on ripperdoc chair
- Nude during shower/sleep
- All scene restores

These **consume the pin** — V's outfit changes, the `!` name is no longer equipped, and the mod returns to normal automatic swapping.

---

## Unpinning

Just equip any non-`!` outfit via Equipment-EX and the mod takes over again.

To **re-pin** after a scene consumes it (e.g. shower → nude → home restore), simply re-equip the `!` outfit via EX.

---

## Matching Exclusion

Pinned outfits are **excluded from all automatic matching pools**. An outfit named `!home cozy` will never be selected as a "home" outfit by the mod — the pin only applies when V is already wearing it (equipped manually via EX).

---

## Save/Load

Pinned outfits survive save/load. Equipment-EX restores the `!` outfit visually, and Dynamic Wardrobe syncs its tracking on load to detect the pin before any outfit logic runs.

---

!!! warning "Known Limitation"
    If you equip a pinned outfit **during** combat or a danger zone, the pin won't be detected until combat or the danger zone ends. The mod pauses outfit tracking during these states to preserve the pre-combat outfit for restoration. Re-equip the pinned outfit afterward to lock it again.
