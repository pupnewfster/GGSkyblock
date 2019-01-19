#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//coal, copper, tin

var drops = {
    //coal
    <minecraft:coal> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //copper ore
    <mekanism:oreblock:1> : {
        6 : ["reskillable:mining|5"]
    } as string[][int],
    //tin ore
    <mekanism:oreblock:2> : {
        4 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/zombie");

addDrops(table, drops, null);

val pool1 = table.getPool("pool1");
pool1.removeEntry("minecraft:iron_ingot");