---
description: Customize which vehicles belong to which context
---

# Vehicle Context Map

The Vehicle Context Map controls which context keyword (corpo, street, wild) each vehicle is assigned. Edit `UserConfig/VehicleContextMap.reds` to reclassify vehicles to fit your headcanon.

## Default Assignments

| Context | Vehicles |
|---------|----------|
| **corpo** | Rayfield (all), Herrera (all), Chevalier (all), Villefort Alvarado/Cortes/Delamain, Militech (all) |
| **street** | Quadra (all), Mizutani (all), Archer (all), Makigai MaiMai, Yaiba (all), Mahir Supron, Thorton Colby/Galena/Merrimac, Villefort Columbus/DeLeon, Arch (all), Porsche 911 |
| **wild** | Kaukaz (all), Thorton Mackinaw, Makigai Tanishi, Brennan Apollo, any Nomad variant, Mahir Kurtz |

### Overrides

Some vehicle variants override their manufacturer's default context:

* **NCPD variants** of corpo cars → street (e.g. NCPD Cortes)
* **Gang variants** of corpo cars → street (Valentinos/Mox Alvarado, Hearse)
* **Nomad variants** of street cars → wild (e.g. Quadra Type-66 Nomad)
* **Muramasa** (Yaiba) → corpo (executive bike)

## Customization

Open `UserConfig/VehicleContextMap.reds` and move keyword lines between the corpo/street/wild sections:

```swift
// Move Herrera to street instead of corpo:
// Remove from corpo section:
// || Equals(kw, "herrera")
// Add to street section:
|| Equals(kw, "herrera")
```

### Adding Override Keywords

To make a specific vehicle variant override its manufacturer's context, add the keyword to the appropriate override function:

```swift
// In IsStreetOverride — corpo vehicles that should be street:
|| Equals(kw, "yourkeyword")

// In IsWildOverride — street vehicles that should be wild:
|| Equals(kw, "yourkeyword")

// In IsCorpoOverride — street vehicles that should be corpo:
|| Equals(kw, "yourkeyword")
```

{% hint style="info" %}
**Important**: If you add a new keyword to `GetVehicleContext` or any override function, also add it to `IsKnownVehicleKeyword` at the bottom of the file. This tells the mod to treat it as a vehicle keyword rather than a decorative label.
{% endhint %}

Press **F10** while driving to see the current vehicle's record keywords and context.

{% hint style="warning" %}
**Back up before updating.** This file is overwritten when you install a new version.
{% endhint %}
