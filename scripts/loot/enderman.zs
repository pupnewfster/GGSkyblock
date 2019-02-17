#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;
import scripts.loot.loot_tweaker.combine;
import scripts.loot.loot_tweaker.baseValues;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//iron, gold, black quartz, osmium, amber, cinnabar
//end: diamond, emerald, ruby, sapphire, tungsten, sheldonite, peridot, sodalite


var drops as loot_info[] = [
    //iron ore
    loot_info(<minecraft:iron_ore>, 4),
    //gold ore
    loot_info(<minecraft:gold_ore>, 6),
    //black quartz ore
    loot_info(<actuallyadditions:block_misc:3>, 5),
    //osmium ore
    loot_info(<mekanism:oreblock>, 7),
    //amber
    loot_info(<thaumcraft:amber>, 6),
    //cinnabar
    loot_info(<thaumcraft:ore_cinnabar>, 2),

    //End only

    //diamond
    loot_info(<minecraft:diamond>, 4, combine(baseValues[<minecraft:diamond>], ["dim|1"])),
    //emerald
    loot_info(<minecraft:emerald>, 3, combine(baseValues[<minecraft:emerald>], ["dim|1"])),
    //ruby
    loot_info(<techreborn:gem>, 4, combine(baseValues[<techreborn:gem>], ["dim|1"])),
    //sapphire
    loot_info(<techreborn:gem:1>, 4, combine(baseValues[<techreborn:gem:1>], ["dim|1"])),
    //tungsten ore
    loot_info(<techreborn:ore:8>, 1, combine(baseValues[<techreborn:ore:8>], ["dim|1"])),
    //sheldonite ore
    loot_info(<techreborn:ore:9>, 1, combine(baseValues[<techreborn:ore:9>], ["dim|1"])),
    //peridot
    loot_info(<techreborn:gem:2>, 4, combine(baseValues[<techreborn:gem:2>], ["dim|1"])),
    //sodalite dust
    loot_info(<techreborn:dust:48>, 1, combine(baseValues[<techreborn:dust:48>], ["dim|1"]))
];

val table = LootTables.getTable("minecraft:entities/enderman");

addDrops(table, drops, null);
addTCCurio(table);