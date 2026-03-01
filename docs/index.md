# Dynamic Wardrobe

**Automatic, context-driven outfit swapping for Cyberpunk 2077 — powered by [Equipment-EX](https://www.nexusmods.com/cyberpunk2077/mods/6945).**

Dynamic Wardrobe transforms how V dresses in Night City by intelligently switching outfits based on where you are and what you're doing — all you do is name your outfits.

- **Location-aware outfit matching** — name an outfit after a location and it applies there automatically
- **Seamless apartment ↔ outdoor transitions** — walk in, get comfy; walk out, gear up
- **Scene-aware handling** — showers, ripperdocs, and romance scenes swap outfits naturally
- **Combat & danger zone swapping** — gear up when things get hostile, restore when it's over
- **Pinned outfits** — lock any outfit with a `!` prefix to block all automatic swaps

Just name your Equipment-EX outfits with simple keywords and Dynamic Wardrobe handles the rest.

*New to the mod?* Head to the [Quick Setup](quickstart.md) guide.

---

## Requirements

| Mod | Purpose |
|-----|---------|
| [RED4ext](https://www.nexusmods.com/cyberpunk2077/mods/2380) | Required by Codeware and Equipment-EX |
| [Redscript](https://www.nexusmods.com/cyberpunk2077/mods/1511) | Scripting runtime |
| [Codeware](https://www.nexusmods.com/cyberpunk2077/mods/7780) | Localization and extended scripting APIs |
| [Input Loader](https://www.nexusmods.com/cyberpunk2077/mods/4575) | Custom keybind definitions |
| [Mod Settings](https://www.nexusmods.com/cyberpunk2077/mods/4885) | In-game settings menu |
| [Equipment-EX](https://www.nexusmods.com/cyberpunk2077/mods/6945) | Outfit management system |

### Soft Requirements

These mods are not required, but unlock additional features. Without them, the relevant triggers never fire and the features silently do nothing.

| Mod | What it enables |
|-----|-----------------|
| [Immersive Rippers](https://www.nexusmods.com/cyberpunk2077/mods/7064) | `ripper` outfit keyword — without this, V never sits in a ripperdoc chair |
| [Immersive Rippers - Dogtown](https://www.nexusmods.com/cyberpunk2077/mods/10255) | Extends ripper support to Dogtown |
| [Hangout Romances](https://www.nexusmods.com/cyberpunk2077/mods/18972) | Drive scene outfit handling |
| [Immersive Shower](https://www.nexusmods.com/cyberpunk2077/mods/27532) | Eliminates the shower scene flash (see [Known Issues](issues.md)) |

---

## Installation

1. Extract the archive
2. Copy the `r6` folder to your Cyberpunk 2077 directory
3. Configure in-game: **Settings → Mod Settings → Dynamic Wardrobe**

## Updating

!!! warning "Back up your config files"
    `CustomApartments.reds` and `ContextMap.reds` are user-editable config files. New versions will overwrite them.

1. Back up `Core/CustomApartments.reds` and `Core/ContextMap.reds` if you've customized them
2. Delete the `r6/scripts/Dynamic Wardrobe` and `r6/input` folders
3. Install the new version
4. Restore your backed-up config files

## Uninstallation

Delete the `r6/scripts/Dynamic Wardrobe` and `r6/input` folders. See [Save Data & Uninstall](save-data.md) for details on what the mod writes to your save.

---

## Mod Settings

All settings can be adjusted in real-time through **Settings → Mod Settings → Dynamic Wardrobe**:

- **Master Toggle** — completely enable/disable the mod without uninstalling
- **Show Location Key** — configurable keybind (default: F10) to display the current location name
- **Shower Deferral** — when enabled, the home outfit won't apply immediately on entering an apartment. Instead, it applies after the game naturally undresses V (shower, sleep, etc.)
