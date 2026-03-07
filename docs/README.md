---
description: Dynamic Wardrobe — Automatic outfit swapping for Cyberpunk 2077
---

# Dynamic Wardrobe

Not sure where to start? [Quick Setup](quickstart.md) gets you running in under a minute. Already set up? Explore the sections below to get more out of the mod.

## Getting Started

{% content-ref url="quickstart.md" %}
[Quick Setup](quickstart.md)
{% endcontent-ref %}

{% content-ref url="advanced.md" %}
[Advanced Setup](advanced.md)
{% endcontent-ref %}

{% content-ref url="vehicles.md" %}
[Vehicle Outfits](vehicles.md)
{% endcontent-ref %}

{% content-ref url="weather-time.md" %}
[Weather & Time of Day](weather-time.md)
{% endcontent-ref %}

{% content-ref url="shuffling.md" %}
[Outfit Shuffling](shuffling.md)
{% endcontent-ref %}

{% content-ref url="priority.md" %}
[Priority System](priority.md)
{% endcontent-ref %}

{% content-ref url="examples.md" %}
[Examples](examples.md)
{% endcontent-ref %}

## Configuration

{% content-ref url="configuration.md" %}
[User Configuration](configuration.md)
{% endcontent-ref %}

## Reference

{% content-ref url="issues.md" %}
[Known Issues](issues.md)
{% endcontent-ref %}

{% content-ref url="compatibility.md" %}
[Compatibility](compatibility.md)
{% endcontent-ref %}

{% content-ref url="save-data.md" %}
[Save Data & Uninstall](save-data.md)
{% endcontent-ref %}

{% content-ref url="support.md" %}
[Support](support.md)
{% endcontent-ref %}

{% content-ref url="changelog/README.md" %}
[Changelog](changelog/README.md)
{% endcontent-ref %}

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

{% hint style="warning" %}
**Always delete the old version before installing a new one.** Leftover scripts from previous versions can cause conflicts and errors. Files in `UserConfig/` are user-editable config files — back them up before deleting, as new versions will overwrite them.
{% endhint %}

1. Back up `UserConfig/CustomApartments.reds`, `UserConfig/ContextMap.reds`, `UserConfig/CustomPlaces.reds`, and `UserConfig/VehicleContextMap.reds` if you've customized them
2. **Delete** the `r6/scripts/Dynamic Wardrobe` folder and `r6/input/DynamicWardrobeInput.xml`
3. Install the new version
4. Restore your backed-up config files

## Uninstallation

Delete the `r6/scripts/Dynamic Wardrobe` folder and `r6/input/DynamicWardrobeInput.xml`. See [Save Data & Uninstall](save-data.md) for details on what the mod writes to your save.

## Mod Settings

All settings can be adjusted in real-time through **Settings → Mod Settings → Dynamic Wardrobe**:

* **Master Toggle** — completely enable/disable the mod without uninstalling
* **Home Outfits** — toggle home/nude/shower outfit management (disable for compatibility with other apartment mods)
* **Shower Deferral** — defer home outfit until after V showers instead of immediately on entry
* **Passenger Block** — block outfit changes while V is a passenger (prevents swaps during quest rides)
* **Combat Mode** — control when combat outfits activate: Combat + Danger Zones, Combat Only, Danger Zones Only, or Off
* **Day / Night** — configure day/night boundaries for time-aware outfits
* **Shuffling** — automatic outfit rotation: Off, Context (re-roll within current area), or Chaos (any outfit)
* **Entrance Radius** — adjust apartment entrance detection range (troubleshooting)
* **Show Location Key** — configurable keybind (default: F10) to display current location, vehicle info, and naming tips
