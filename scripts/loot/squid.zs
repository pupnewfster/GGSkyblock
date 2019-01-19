#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//coal, black quartz, galena, bauxite, lead

var drops = {
    //coal
    <minecraft:coal> : {
        7 : ["reskillable:mining|5"]
    } as string[][int],
    //black quartz ore
    <actuallyadditions:block_misc:3> : {
        3 : ["reskillable:mining|5"]
    } as string[][int],
    //galena ore
    <techreborn:ore> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //bauxite ore
    <techreborn:ore:4> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //lead ore
    <techreborn:ore:12> : {
        3 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/squid");

addDrops(table, drops, null);