---
description: Safe to remove at any time
---

# Save Data & Uninstall

## What Persists in Your Save

Dynamic Wardrobe writes two quest facts to your save file:

| Data | Type | Purpose |
|------|------|---------|
| `dw_is_at_home` | Quest fact (0, 1, or 2) | Tracks whether V was inside an apartment when you saved. `0` = no, `1` = vanilla apartment, `2` = custom apartment |
| `dw_block_location` | Quest fact (0 or 1) | Suppresses outfit changes during scripted scenes (cutscenes, braindances). Automatically cleared when gameplay resumes |

Three possible values total.

## What Does NOT Persist

* Outfit selections (managed entirely by Equipment-EX)
* Location state, custom location flags, ripper state
* Cached outfit names, block flags, callback handles
* All runtime state is cleared on game exit

## Is It Safe to Uninstall?

**Yes.** The only persistent data are two quest facts, both harmless integer flags with no vanilla game meaning. The game engine ignores unknown quest facts entirely.

You can safely remove Dynamic Wardrobe at any time without corrupting your save or causing errors.

Equipment-EX outfits are managed by EX itself — Dynamic Wardrobe only reads and loads them, never creates or modifies outfit data.
