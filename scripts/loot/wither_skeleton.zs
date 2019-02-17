#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//coal, quartz, black quartz, certus quartz, ruby, sapphire, pyrite, sphalerite, peridot, lead, amber, ardite, cobalt

var drops as loot_info[] = [
    //coal
    loot_info(<minecraft:coal>, 6),
    //quartz
    loot_info(<minecraft:quartz>, 7),
    //black quartz ore
    loot_info(<actuallyadditions:block_misc:3>, 7),
    //certus quartz
    loot_info(<appliedenergistics2:material>, 1),
    //ruby
    loot_info(<techreborn:gem>, 2),
    //sapphire
    loot_info(<techreborn:gem:1>, 2),
    //pyrite dust
    loot_info(<techreborn:dust:39>, 1),
    //sphalerite dust
    loot_info(<techreborn:dust:50>, 1),
    //peridot
    loot_info(<techreborn:gem:2>, 2),
    //lead ore
    loot_info(<techreborn:ore:12>, 1),
    //amber
    loot_info(<thaumcraft:amber>, 3),
    //cobalt ore
    loot_info(<tconstruct:ore>, 6),
    //ardite ore
    loot_info(<tconstruct:ore:1>, 6)
];

val table = LootTables.getTable("minecraft:entities/wither_skeleton");

addDrops(table, drops, null);
addTCCurio(table);

val main = table.getPool("main");
main.removeEntry("minecraft:coal");