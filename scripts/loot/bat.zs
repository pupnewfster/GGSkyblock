#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//ooal, black quartz

var drops = {
    //coal 4/5
    <minecraft:coal> : {
        4 : ["reskillable:mining|5"]
    } as string[][int],
    //black quartz ore 1/5
    <actuallyadditions:block_misc:3> : {
        1 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/bat");

addDrops(table, drops, null);