---
description: The five core keywords in action
---

# Basics

## A Day in Night City

V's outfits: **`home cozy`**, **`outdoor streetwear`**, **`nude`**, **`combat tactical`**, **`ripper casual`**

| What Happens | Outfit |
|-------------|--------|
| Walk into the apartment | **`home cozy`** |
| Take a shower | **`nude`** |
| Finish showering | **`home cozy`** (restored) |
| Leave the apartment | **`outdoor streetwear`** |
| Get jumped by Maelstrom | **`combat tactical`** |
| Win the fight | **`outdoor streetwear`** (restored) |
| Sit down at a ripperdoc | **`ripper casual`** |
| Leave the ripperdoc | **`outdoor streetwear`** (restored) |

## Random Selection

V's outfits: **`home cozy`**, **`home towel`**, **`home lazy`**

* Walk into the apartment → one of the three is picked at random
* Leave and come back → might get a different one

This works with any keyword — **`outdoor summer`**, **`outdoor biker`**, **`outdoor punk`** would randomize your street look too.

## Outfit Families

V's outfits: **`outdoor jacket day`**, **`outdoor jacket night`**, **`outdoor casual day`**, **`outdoor casual night`**, **`combat jacket`**, **`combat casual`**

| What Happens | Outfit | Why |
|-------------|--------|-----|
| Walking around during the day | **`outdoor jacket day`** (picked at random) | |
| Night falls | **`outdoor jacket night`** | Prefers "jacket" — matches V's current outfit family |
| Get into a fight | **`combat jacket`** | Prefers "jacket" across systems |

If V had been wearing `outdoor casual day` instead, the mod would prefer `outdoor casual night` and `combat casual`.

Words like "jacket" and "casual" are **family keywords** — decorative words not used by any system. They act as tiebreakers when multiple outfits match at the same priority. See [Priority Details](../priority-advanced.md) for the full explanation.

## Shower Deferral

With Shower Deferral **off** (default):

| What Happens | Outfit |
|-------------|--------|
| Walk into the apartment | **`home cozy`** (applied immediately) |
| Take a shower | **`nude`** |
| Finish showering | **`home cozy`** (restored) |

With Shower Deferral **on**:

| What Happens | Outfit |
|-------------|--------|
| Walk into the apartment | No change (keeps previous outfit) |
| Take a shower | **`nude`** |
| Finish showering | **`home cozy`** (applied for the first time) |

You can toggle Shower Deferral in **Settings → Mod Settings → Dynamic Wardrobe**.

Ready for more? See [Location Matching](locations.md) to learn how outfits can target specific places.
