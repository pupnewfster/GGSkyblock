#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//galena, ruby, sapphire, tungsten, sheldonite, peridot, sodalite

var drops as loot_info[] = [
    //galena ore
    loot_info(<techreborn:ore>, 1),
    //ruby
    loot_info(<techreborn:gem>, 3),
    //sapphire
    loot_info(<techreborn:gem:1>, 3),
    //tungsten ore
    loot_info(<techreborn:ore:8>, 1),
    //sheldonite ore
    loot_info(<techreborn:ore:9>, 1),
    //peridot
    loot_info(<techreborn:gem:2>, 3),
    //sodalite dust
    loot_info(<techreborn:dust:48>, 1)
];

val table = LootTables.getTable("minecraft:entities/shulker");

addDrops(table, drops, null);