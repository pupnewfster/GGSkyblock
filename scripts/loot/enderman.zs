#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;
import scripts.loot.loot_tweaker.combine;
import scripts.loot.loot_tweaker.baseValues;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, gold, black quartz, osmium, amber, cinnabar
//end: diamond, emerald, ruby, sapphire, tungsten, sheldonite, peridot, sodalite


var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        4 : null
    } as string[][int],
    //gold ore
    <minecraft:gold_ore> : {
        6 : null
    } as string[][int],
    //black quartz ore
    <actuallyadditions:block_misc:3> : {
        5 : null
    } as string[][int],
    //osmium ore
    <mekanism:oreblock> : {
        7 : null
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        6 : null
    } as string[][int],
    //cinnabar
    <thaumcraft:ore_cinnabar> : {
        2 : null
    } as string[][int],

    //End only

    //diamond
    <minecraft:diamond> : {
        4 : combine(baseValues[<minecraft:diamond>], ["dim|1"])
    } as string[][int],
    //emerald
    <minecraft:emerald> : {
        3 : combine(baseValues[<minecraft:emerald>], ["dim|1"])
    } as string[][int],
    //ruby
    <techreborn:gem> : {
        4 : combine(baseValues[<techreborn:gem>], ["dim|1"])
    } as string[][int],
    //sapphire
    <techreborn:gem:1> : {
        4 : combine(baseValues[<techreborn:gem:1>], ["dim|1"])
    } as string[][int],
    //tungsten ore
    <techreborn:ore:8> : {
        1 : combine(baseValues[<techreborn:ore:8>], ["dim|1"])
    } as string[][int],
    //sheldonite ore
    <techreborn:ore:9> : {
        1 : combine(baseValues[<techreborn:ore:9>], ["dim|1"])
    } as string[][int],
    //peridot
    <techreborn:gem:2> : {
        4 : combine(baseValues[<techreborn:gem:2>], ["dim|1"])
    } as string[][int],
    //sodalite dust
    <techreborn:dust:48> : {
        1 : combine(baseValues[<techreborn:dust:48>], ["dim|1"])
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/enderman");

addDrops(table, drops, null);
addTCCurio(table);