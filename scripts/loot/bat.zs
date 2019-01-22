#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//coal, black quartz

var drops = {
    //coal
    <minecraft:coal> : {
        4 : null
    } as string[][int],
    //black quartz ore
    <actuallyadditions:block_misc:3> : {
        1 : null
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/bat");

addDrops(table, drops, null);