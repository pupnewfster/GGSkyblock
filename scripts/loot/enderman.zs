#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, gold, black quartz, osmium, amber, cinnabar
//end: diamond, emerald, ruby, sapphire, tungsten, sheldonite, peridot, sodalite


var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        4 : ["reskillable:mining|5", "compatskills:smithing|3"]
    } as string[][int],
    //gold ore
    <minecraft:gold_ore> : {
        6 : ["reskillable:mining|10", "compatskills:smithing|5", "compatskills:magic|7"]
    } as string[][int],
    //black quartz ore
    <actuallyadditions:block_misc:3> : {
        5 : ["reskillable:mining|5", "compatskills:smithing|3"]
    } as string[][int],
    //osmium ore
    <mekanism:oreblock> : {
        7 : ["reskillable:mining|7", "compatskills:smithing|9", "compatskills:technology|17"]
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        6 : ["reskillable:gathering|9", "reskillable:mining|5", "reskillable:magic|13", "compatskills:smithing|13"]
    } as string[][int],
    //cinnabar
    <thaumcraft:ore_cinnabar> : {
        2 : ["reskillable:mining|10", "reskillable:magic|12", "compatskills:smithing|13"]
    } as string[][int],

    //End only

    //diamond
    <minecraft:diamond> : {
        4 : ["dim|1", "reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5", "reskillable:attack|5", "reskillable:defense|5"]
    } as string[][int],
    //emerald
    <minecraft:emerald> : {
        3 : ["dim|1", "reskillable:gathering|18", "reskillable:mining|22", "compatskills:smithing|24", "reskillable:agility|9", "reskillable:magic|14"]
    } as string[][int],
    //ruby
    <techreborn:gem> : {
        4 : ["dim|1", "reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"]
    } as string[][int],
    //sapphire
    <techreborn:gem:1> : {
        4 : ["dim|1", "reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"]
    } as string[][int],
    //tungsten ore
    <techreborn:ore:8> : {
        1 : ["dim|1", "reskillable:mining|17", "reskillable:magic|13", "reskillable:defense|11"]
    } as string[][int],
    //sheldonite ore
    <techreborn:ore:9> : {
        1 : ["dim|1", "reskillable:mining|10", "reskillable:magic|5"]
    } as string[][int],
    //peridot
    <techreborn:gem:2> : {
        4 : ["dim|1", "reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"]
    } as string[][int],
    //sodalite dust
    <techreborn:dust:48> : {
        1 : ["dim|1", "reskillable:gathering|13", "reskillable:mining|21", "compatskills:technology|17", "reskillable:magic|10"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/enderman");

addDrops(table, drops, null);