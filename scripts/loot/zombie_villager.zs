#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/zombie_villager");

//iron, gold, emerald, certus quartz, tin

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //gold ore
    <minecraft:gold_ore> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //emerald
    <minecraft:emerald> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //tin ore
    <mekanism:oreblock:2> : {
        1 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

addDrops(table, drops, null);