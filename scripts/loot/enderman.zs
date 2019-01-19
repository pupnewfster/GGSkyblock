#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/enderman");

//iron, gold, black quartz, osmium, amber, cinnabar

//end: diamond, emerald, ruby, sapphire, tungsten, sheldonite, peridot, sodalite


var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //gold ore
    <minecraft:gold_ore> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //black quartz ore
    <actuallyadditions:block_misc:3> : {
            1 : ["reskillable:mining|5"]
        } as string[][int],
    //osmium ore
    <mekanism:oreblock> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //cinnabar
    <thaumcraft:ore_cinnabar> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],

    //End only

    //diamond
    <minecraft:diamond> : {
        1 : ["dim|1", "reskillable:mining|5"]
    } as string[][int],
    //emerald
    <minecraft:emerald> : {
        1 : ["dim|1", "reskillable:mining|5"]
    } as string[][int],
    //ruby
    <techreborn:gem> : {
        1 : ["dim|1", "reskillable:mining|5"]
    } as string[][int],
    //sapphire
    <techreborn:gem:1> : {
        1 : ["dim|1", "reskillable:mining|5"]
    } as string[][int],
    //tungsten ore
    <techreborn:ore:8> : {
        1 : ["dim|1", "reskillable:mining|5"]
    } as string[][int],
    //sheldonite ore
    <techreborn:ore:9> : {
        1 : ["dim|1", "reskillable:mining|5"]
    } as string[][int],
    //peridot
    <techreborn:gem:2> : {
        1 : ["dim|1", "reskillable:mining|5"]
    } as string[][int],
    //sodalite dust
    <techreborn:dust:48> : {
        1 : ["dim|1", "reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

addDrops(table, drops, null);