# Changelog

### 1.3 (BETA)
- Changed max stack size of clay bucket back to 16 as collecting rain update fixed the bug.
- Removed EMC values from Tech Reborn's Small Pile of Dust items. For the same reason as diamond nuggets were removed last update.
- Added a few more tips
- Added a chance of the orechid turning stone into sand. This was done to lower the rate at which aquamarine is made.
- Changed the recipe of the Orechid to make diamonds not a prerequisite of Astral Sorcery
- Fixed all conflicting recipes. The majority of them were for items that were already unified by unidict anyways.
- Fixed some recipes in Mekanism machines not working (such as copper ore to copper dust in enrichment chamber.) Some extra recipes may show in JEI now, but everything should work properly now.
- Cleaned up JEI hiding. All of it is done through CraftTweaker now instead of some of it being done through JEI's blacklist. If you are updating this means you can delete the `itemBlacklist.cfg` file in `config/jei/`
- Changed the way netherrack is acquired, now you burn stone instead of cooling neather brick. (Makes nether fortresses not as needed early.)
- Upped bonus chance of xp from 75% to 100%.
- Disabled HillWalker due to there being alternatives in other mods, and it sometimes doesn't let higher block count autosteppers work.
- Double how much xp mobs drop (When killed by a real player this will not affect how much xp you get from automated killing setups)
- Lowered Actually Addition's Farmer range to 5x5 instead of 9x9 to be more balanced and give more of a reason to make Ender IO's farmer.
- Made the wording on a few of the quests clearer.
- Added a few helper quests.
- Added a prereqs to some quests so that people don't start trying to do something before they are able to
- Changed machine casing upgrade quests to only require making one of that machine casing.
- Adjusted the Thaumcraft Curio drop chance to only require 10 warp after testing how much 1 warp seems to be equivalent to.
- Only require getting one of each resource to complete the murdering for ores quests, also doesn't require consuming the resources.
- Re-enabled the Personal Link.
- Added EMC values for some of the items in Tech Reborn missing them.
- Added EMC values for skulls.
- Tech Reborn update fixes the rolling machine from causing crashes when trying to make a nichrome heating coil.
- EnderTweaker update fixes custom sag mill recipes not working.
- Ignore NBT for a bunch of quests that were having issues detecting.
- Hided a few other unused creative items from JEI.
- Added a temporary way to get refined life essence until an update to Blood Arsenal is out. (Hopefully will be sometime soon)
- Added a recipe and quest for Creative ME Essentia Storage Cell

Updated
  - Actually Additions (v144 to v145)
  - Better Questing (3.5.290 to 3.5.291)
  - Better Questing Standard Expansion (3.4.150 to 3.4.151)
  - CollectingRain (1.0.4 to 1.0.5)
  - CompatSkills (1.13.2 to 1.13.3)
  - EnderTweaker (1.1.1 to 1.1.2)
  - Forge (14.23.5.2808 to 14.23.5.2811)
  - Inventory Tweaks (1.64+dev.145 to 1.64+dev146)
  - Project EX (1.0.0.9 to 1.0.0.13)
  - RandomPatches (1.13.0.0 to 1.13.0.1)
  - Reskillable (1.11.0 to 1.12.0)
  - Smooth Font (2.0-alpha-5 to 2.0-alpha-6)
  - Tech Reborn (2.20.7.915 to 2.20.10.926)
  - Thaumic Energistics (2.1.0 to 2.1.1)



### 1.2 (BETA)
- Added a little bit more information to some quests.
- Moved metallurgic infuser quest earlier, given it is needed to make an empowerer.
- Made the drawer controller not require a diamond. (It now requires an iron ingot instead).
- Added a quest for making a drawer controller.
- Made villagers drop experience
- Looting 3 now has guaranteed drop rate of resources.
- Added a quest about curing and breeding villagers.
- Re-enabled Actually Addition's farmer as an earlier game alternative to Ender IO's farming station.
- Locked some outputs of EMC farming behind the proper Thaumcraft research. (Can still be used for EMC, just can't be learned if not already known).
- More refactoring of some of the emc generation scripts
- Removed iron ore from Villager drop table. This increases the chance of diamonds significantly.
- Also adjusted the rates of the different drops from Villagers slightly.
- Ignore lens NBT for mana lens quest. Should allow any mana lens to now count. (Also fixes it being unclaimable without emc'ing a mana lens)
- Made Thaumonomicon quest clearer about the prereqs.
- Custom enriched compressed items now follow the default efficiency boost of 8 times instead of being 9 times
- Re-enabled `/island home` because apparently you can use `/island spawn` and then be stuck there.
- This update will say there is a missing registry entry from InWorldCrafting. That is due to an internal change in their code making it no longer needed. The registry entry removal should be able to be safely confirmed as removed.
- Temporarily disable the ability to use the personal link from Project EX until it can no longer be used as a way to bypass creation locks.
- Removed EMC value from spawn egg. It had one due to a thaumcraft recipe but it uses NBT so EMC wouldn't work with it anyways.
- Make Ceramics Empty Clay Bucket max stack size 1, as a countermeasure to dupe bugs
- Remove Diamond Nuggets as they allow EMC'ing diamonds a lot earlier than you are meant to be able to.
- Added EMC Seed and Essence recipes for tiers 31 through 35

- Updated
  - Animus (2.0.4 to 2.1.0)
  - Astral Sorcery (1.10.10 to 1.10.11)
  - Better Builder's Wands (0.12.1 to 0.13.0)
  - Blood Magic (2.3.3-101 to 2.4.0-102)
  - Botania (1.10-358 to 1.10-359)
  - CreativeCore (v1.9.38 to v1.9.39)
  - Ender Tweaker (1.0.0 to 1.1.1)
  - InWorldCrafting (0.13.0 to 1.0.0)
  - PlusTiC (7.0.2.0 to 7.0.2.1)
  - Project EX (1.0.0.6 to 1.0.0.9)
  - Random Patches (1.12.1.0 to 1.13.0.0)
  - Random Tweaks (2.4.2.1 to 2.4.3.0)
  - Reborn Core (3.13.2.411 to 3.13.3.416)
  - Smooth Font (2.0-alpha-3 to 2.0-alpha-5)
  - Super Sound Muffler (1.0.2.9 to 1.0.2.10)
  - Tech Reborn (2.20.5.909 to 2.20.7.915)
  - Thaumic Restoration (1.2.0 to 1.2.1a)
  - The One Probe (1.4.27 to 1.4.28)
  - Void Island Control (1.5.2 to 1.5.3)


### 1.1 (BETA)
- Added a reward for "Stay Grindin'" quest
- Rearranged early technology quest line adding a quest describing how to get bronze.
- Added `In Control` to allow blazes to spawn everywhere in the nether, and disabled obsidian to lava philo stone transmutation.
- Buff bauxite drop rate from squids.
- Removed some peaceful and hostile mobs from the philo stone entity randomizer projectile.
  - Shulker
  - Villager
  - Vex
- Temporarily overwrite the dark theme from BQ standard expansion so that we can have latest bq version and a more or less working theme.
- Added
  - In Control
- Updated
  - Better Questing (2.5.287 to 3.5.290)
  - Better Questing Standard Expansion (3.4.148 to 3.4.150)


### 1.0 (BETA)
- Initial Release