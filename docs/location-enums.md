---
description: Every location enum the game can report, organized by region keyword
---

# All Location Enums

These are the location enum values reported by the game's `UI_Map.currentLocationEnumName` blackboard. Press **F10** in-game to see your current location enum.

Name your Equipment-EX outfits using any word from these enums and Dynamic Wardrobe will match automatically. Locations are grouped by their region keyword — clubs are tagged with `club` where applicable.

## corpo

```
CorpoPlaza
  CorpoPlaza_Apartment
  CorpoPlaza_ArasakaTowerAtrium
  CorpoPlaza_ArasakaTowerCEOFloor
  CorpoPlaza_ArasakaTowerJenkins
  CorpoPlaza_ArasakaTowerJungle
  CorpoPlaza_ArasakaTowerLobby
  CorpoPlaza_ArasakaTowerNest
  CorpoPlaza_ArasakaTowerSaburoOffice
  CorpoPlaza_ArasakaTowerUnlistedFloors
  CorpoPlaza_ArasakaTowerUpperAtrium
  CorpoPlaza_q201Cyberspace
CityCenter
Downtown
  Downtown_Jinguji
  Downtown_TheHammer
NorthOaks
  NorthOaks_Arasaka_Estate
  NorthOaks_Columbarium
  NorthOaks_Denny_Estate
  NorthOaks_Kerry_Estate
CharterHill
  CharterHill_AuCabanon
  CharterHill_PowerPlant
ArasakaWaterfront
  ArasakaWaterfront_AbandonedWarehouse
  ArasakaWaterfront_KonpekiPlaza
JapanTown
  JapanTown_Apartment
  [club] JapanTown_Clouds
  [club] JapanTown_DarkMatter
  JapanTown_Fingers
  JapanTown_FourthWallBdStudio
  JapanTown_HiromisApartment
  JapanTown_MegabuildingH8
  JapanTown_VR_Tutorial
  JapanTown_Wakakos_Pachinko_Parlor
```

## street

```
Glen
  Glen_Apartment
  [club] Glen_Embers
  Glen_MusicStore
  Glen_NCPDLab
  Glen_WichedTires
Wellsprings
Arroyo
  Arroyo_Arasaka_Warehouse
  Arroyo_ClairesGarage
  Arroyo_CytechFactory
  Arroyo_Kendachi
  Arroyo_KenmoreCafe
  Arroyo_LasPalapas
  Arroyo_Red_Dirt
  Arroyo_TireEmpire
LittleChina
  [club] LittleChina_Afterlife
  LittleChina_MistysShop
  LittleChina_Q101Cyberspace
  [club] LittleChina_RiotClub
  LittleChina_TomsDiner
  LittleChina_VApartment
  LittleChina_VictorsClinic
Kabuki
  Kabuki_JudysApartment
  [club] Kabuki_LizziesBar
  Kabuki_NoTellMotel
Northside
  Northside_All_Foods
  Northside_Apartment
  Northside_CleanCut
  [club] Northside_Totentaz
  Northside_WNS
RanchoCoronado
  RanchoCoronado_Caliente
  RanchoCoronado_GunORama
  RanchoCoronado_Piez
  RanchoCoronado_Softsys
  RanchoCoronado_Stylishly
VistaDelRey
  Vista_del_Rey_Delamain
  Vista_del_Rey_LaCatrina
  Vista_del_rey_Abandoned_Apartment_Building
  [club] Vista_del_rey_ElCoyoteCojo
```

## wild

```
Badlands
  Badlands_BiotechnicaFlats
  Badlands_DryCreek
  Badlands_JacksonPlains
  Badlands_LagunaBend
    LagunaBend_LakeHut
  Badlands_LasPalapas
  Badlands_NorthSunriseOilField
  Badlands_RattlesnakeCreek
  Badlands_RedPeaks
  Badlands_RockyRidge
  Badlands_SantaClara
  Badlands_SierraSonora
  Badlands_SoCalBorderCrossing
  Badlands_Spaceport
  Badlands_VasquezPass
  Badlands_Yucca
  Badlands_YuccaGarage
  Badlands_YuccaRadioTower
NorthBadlands
SouthBadlands
  SouthBadlands_EdgewoodFarm
  SouthBadlands_PoppyFarm
  SouthBadlands_TrailerPark
  SouthBadlands_q201SpaceStation
Pacifica
  Coastview
    Coastview_BattysHotel
    Coastview_ButcherShop
    Coastview_GrandImperialMall
    Coastview_RundownApartment
    Coastview_VDBChapel
    Coastview_VDBMaglev
    Coastview_q110Cyberspace
  WestWindEstate
Dogtown
  Dogtown_Akebono
  Dogtown_Brooklyn
  Dogtown_CapitanCaliente
  Dogtown_Cynosure
  Dogtown_Expo
  Dogtown_Hideout
  Dogtown_Worldmap_Sub
```

## Other

These locations don't belong to any region keyword. You can still name an outfit after them for an exact match (e.g. `watson casual`), but no region-based outfit will apply here — `outdoor` is the fallback.

To assign them to a region, add them to `Core/ContextMap.reds`. See [Context Map Guide](context-map-guide.md) for how.

```
Heywood
Watson
Westbrook
SantoDomingo
MorroRock
  MorroRock_NCX
Langley_Clinic
```
