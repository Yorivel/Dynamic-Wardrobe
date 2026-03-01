# Compatibility

## What This Mod Wraps

Dynamic Wardrobe hooks into the following game systems:

- **PlayerPuppet class** — adds fields for outfit state tracking
- **Equipment System** — wraps QuestDisableWardrobeSetRequest, QuestRestoreWardrobeSetRequest, UnequipWardrobeSet, OnUnequipRequest
- **Blackboard System** — listens to `UI_Map.currentLocationEnumName` for location changes
- **SceneTierIVEvents** — wraps OnEnter for ripperdoc detection and unequip blocking
- **WorkspotFinishedEvent** — wraps for ripperdoc restore and block clearing
- **QuestsSystem** — listens to `a3_hangout_romances_running` for drive scene end detection
- **PlayerPuppet.OnCombatStateChanged** — wraps for combat outfit entry/exit
- **PlayerPuppet.OnZoneChange** — wraps for dangerous zone detection
- **PlayerPuppet.OnSceneTierChange** — wraps for scene tier location blocking

---

## High Risk — Will Definitely Conflict

!!! danger "Other Equipment-EX automation mods"
    Any mod that also wraps QuestDisable/QuestRestore wardrobe requests or manages EX outfit loading will conflict. Both mods will fight over which outfit to apply during scene transitions.

    Example: [Apartment Outfits](https://www.nexusmods.com/cyberpunk2077/mods/21876)

!!! danger "Mods that modify Equipment-EX's overlay system"
    Mods that call Deactivate/Activate on the OutfitSystem directly will conflict. Dynamic Wardrobe carefully manages EX's overlay state during scenes.

    Symptoms: outfits not applying, EX overlay stuck in wrong state.

---

## Low Risk — Generally Compatible

- **Equipment-EX itself** — fully compatible. Dynamic Wardrobe is built on top of EX and uses its API properly. It only reads and loads outfits, never creates or modifies outfit data.

- **Appearance mods (AMM, custom appearances)** — compatible. Dynamic Wardrobe only manages EX outfit sets, not individual items or appearances.

- **UI/HUD mods** — fully compatible. No shared systems. The mod only shows occasional notifications via SimpleScreenMessage.

- **Other wardrobe/clothing mods** — compatible unless they also automate Equipment-EX outfits.
