#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/zombie_pigman");

//gold, quartz, osmium, pyrite, sphalerite, amber

var drops = {
    //gold ore
    <minecraft:gold_ore> : {
        5 : ["reskillable:mining|5"]
    } as string[][int],
    //quartz
    <minecraft:quartz> : {
        3 : ["reskillable:mining|5"]
    } as string[][int],
    //osmium ore
    <mekanism:oreblock> : {
        6 : ["reskillable:mining|5"]
    } as string[][int],
    //pyrite dust
    <techreborn:dust:39> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //sphalerite dust
    <techreborn:dust:50> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        2 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

addDrops(table, drops, null);