#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//iron, lapis, redstone, certus quartz, galena, bauxite, lead, amber, cinnabar

var drops as loot_info[] = [
    //iron ore
    loot_info(<minecraft:iron_ore>, 1),
    //lapis lazuli
    loot_info(<minecraft:dye:4>, 3),
    //redstone dust
    loot_info(<minecraft:redstone>, 1),
    //certus quartz
    loot_info(<appliedenergistics2:material>, 2),
    //galena ore
    loot_info(<techreborn:ore>, 1),
    //bauxite ore
    loot_info(<techreborn:ore:4>, 1),
    //lead ore
    loot_info(<techreborn:ore:12>, 2),
    //amber
    loot_info(<thaumcraft:amber>, 3),
    //cinnabar
    loot_info(<thaumcraft:ore_cinnabar>, 2)
];

val table = LootTables.getTable("minecraft:entities/witch");

addDrops(table, drops, null);
addTCCurio(table);

val main = table.getPool("main");
main.removeEntry("minecraft:glowstone_dust");
main.removeEntry("minecraft:redstone");