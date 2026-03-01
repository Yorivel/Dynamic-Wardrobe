---
description: Automatic outfit swapping for Cyberpunk 2077 — powered by Equipment-EX
---

# Dynamic Wardrobe

Name your outfits with simple keywords. The mod handles the rest.

## Getting Started

* [Quick Setup](quickstart.md)
* [Outfit Keywords](keywords.md)
* [Priority System](priority.md)
* [Examples](examples.md)

## Features

* [Combat & Danger Zones](combat.md)
* [Pinned Outfits](pinned.md)
* [Custom Apartments](apartments.md)

## Reference

* [Known Issues](issues.md)
* [Compatibility](compatibility.md)
* [Save Data & Uninstall](save-data.md)
* [Changelog](changelog/README.md)

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

## Installation

1. Extract the archive
2. Copy the `r6` folder to your Cyberpunk 2077 directory
3. Configure in-game: **Settings → Mod Settings → Dynamic Wardrobe**

## Updating

> **Always delete the old version before installing a new one.** Leftover scripts from previous versions can cause conflicts and errors. `CustomApartments.reds` and `ContextMap.reds` are user-editable config files — back them up before deleting, as new versions will overwrite them.

1. Back up `Core/CustomApartments.reds` and `Core/ContextMap.reds` if you've customized them
2. **Delete** the `r6/scripts/Dynamic Wardrobe` folder and `r6/input/DynamicWardrobeInput.xml`
3. Install the new version
4. Restore your backed-up config files

## Uninstallation

Delete the `r6/scripts/Dynamic Wardrobe` folder and `r6/input/DynamicWardrobeInput.xml`. See [Save Data & Uninstall](save-data.md) for details on what the mod writes to your save.

## Mod Settings

All settings can be adjusted in real-time through **Settings → Mod Settings → Dynamic Wardrobe**:

* **Master Toggle** — completely enable/disable the mod without uninstalling
* **Show Location Key** — configurable keybind (default: F10) to display the current location name
* **Shower Deferral** — when enabled, the home outfit won't apply immediately on entering an apartment. Instead, it applies after the game naturally undresses V (shower, sleep, etc.)
