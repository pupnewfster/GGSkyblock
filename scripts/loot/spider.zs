#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/spider");

//iron, coal, lapis, redstone, cinnabar

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        3 : ["reskillable:mining|5"]
    } as string[][int],
    //coal
    <minecraft:coal> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //lapis lazuli
    <minecraft:dye:4> : {
        3 : ["reskillable:mining|5"]
    } as string[][int],
    //redstone dust
    <minecraft:redstone> : {
        4 : ["reskillable:mining|5"]
    } as string[][int],
    //cinnabar
    <thaumcraft:ore_cinnabar> : {
        2 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

addDrops(table, drops, null);