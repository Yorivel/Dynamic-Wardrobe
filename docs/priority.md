# Priority System

When V moves to a new location, Dynamic Wardrobe picks an outfit using a strict priority chain. Higher priority always wins.

---

## Outfit Selection Order

### 1. Exact Location Match *(highest priority)*

If you have an outfit named after the specific location, it wins.

> `afterlife` at the Afterlife beats everything else.

### 2. Region Keyword Match

If there's no exact match, the mod checks region keywords (`corpo`, `street`, `wild`, `club`).

> `club casual` applies at any club when there's no specific outfit for that venue.

More keywords = more specific = higher priority.

> `corpo club` beats `club` at a corpo club.

### 3. `outdoor` Fallback *(lowest priority)*

If nothing else matches, V wears the `outdoor` outfit.

---

## Special Contexts

These override the normal location flow when they're active:

| Context | When Active |
|---------|-------------|
| **home** | V is inside a supported apartment |
| **combat** | V is in a fight or hostile area (also supports location/region matching) |
| **nude** | The game naturally undresses V (shower, romance scenes) |
| **ripper** | V is sitting in a ripperdoc chair |
| **pinned (`!`)** | A `!`-prefixed outfit is equipped — blocks all automatic swaps |

---

## How Matching Works

Outfit names are split into keywords by any non-alphanumeric separator (spaces, slashes, dashes, etc.). Each keyword is matched bidirectionally against the current location — `badlands` in an outfit name matches `southbadlands` in the location enum, and vice versa.

When multiple outfits match the same context, one is **picked at random** each time. This means having `home cozy`, `home towel`, and `home lazy` gives V a different look on each apartment visit.

### Separators as OR

Separators between **location** keywords mean OR:

> `badlands/coastview` applies in **either** Badlands or Coastview.

### Multiple Region Keywords as AND

Multiple **region** keywords in one name mean ALL must match:

> `corpo club vip` only applies at locations tagged as **both** corpo and club (e.g. Clouds, Embers).

---

## Visual Summary

```
V enters a new location
│
├─ Is V wearing a pinned (!) outfit?
│  └─ Yes → skip all swaps
│
├─ Is V in combat or a danger zone?
│  └─ Yes → combat outfit (see Combat & Danger Zones)
│
├─ Is V inside an apartment?
│  └─ Yes → home outfit
│
├─ Exact location match?
│  └─ Yes → apply it
│
├─ Region keyword match?
│  └─ Yes → apply best match (highest keyword count)
│
└─ No match → outdoor outfit
```
