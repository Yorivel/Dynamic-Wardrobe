---
description: Create new region keywords and remap locations
---

# Context Map Guide

## How It Works

The mod splits your current location enum into words (e.g. `JapanTown_Clouds` → `japantown`, `clouds`) and checks each word against the mappings in `Core/ContextMap.reds`. Matching words assign context keywords to the location — Clouds gets both `corpo` and `club` because `japantown` maps to `corpo` and `clouds` maps to `club`.

When multiple outfit names match, more keywords = higher priority. So `corpo club vip` (2 matches) beats `club fancy` (1 match) at Clouds.

## Adding a Location to an Existing Keyword

Find the keyword section in `ContextMap.reds` and add a new line:

```swift
// In the "corpo" section:
|| Equals(word, "yourlocation")
```

Use the lowercase version of the location word from the enum. Press **F10** in-game to see your current location.

## Creating a New Keyword

Three steps:

### 1. Add the mapping

Add a new block in `AddContextsForWord`, following the existing pattern:

```swift
// ╔════════════════════════════════════════╗
// ║  fancy                                 ║
// ╚════════════════════════════════════════╝
if Equals(word, "northoaks")
    || Equals(word, "charterhill")
    || Equals(word, "embers") {
    if !ArrayContains(contexts, "fancy") {
        ArrayPush(contexts, "fancy");
    }
}
```

### 2. Register the keyword

Add your keyword to `IsContextKeyword` at the bottom of the file:

```swift
public static func IsContextKeyword(word: String) -> Bool {
    return Equals(word, "corpo")
        || Equals(word, "street")
        || Equals(word, "wild")
        || Equals(word, "club")
        || Equals(word, "fancy");  // ← add here
}
```

This tells the mod to treat `fancy` as a region keyword, not a location name.

### 3. Name your outfits

Use the new keyword in Equipment-EX outfit names: `fancy dinner`, `fancy gala`, etc.

## A Location Can Have Multiple Keywords

A location can belong to more than one keyword. For example, Clouds is both `corpo` and `club`. This is what makes stacking work — `corpo club vip` matches at Clouds because both keywords are active.
