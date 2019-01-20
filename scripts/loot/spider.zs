#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, coal, lapis, redstone, cinnabar

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        3 : ["reskillable:mining|5", "compatskills:smithing|3"]
    } as string[][int],
    //coal
    <minecraft:coal> : {
        1 : ["reskillable:gathering|3", "reskillable:mining|3"]
    } as string[][int],
    //lapis lazuli
    <minecraft:dye:4> : {
        3 : ["reskillable:gathering|8", "reskillable:mining|10", "reskillable:magic|12"]
    } as string[][int],
    //redstone dust
    <minecraft:redstone> : {
        4 : ["reskillable:gathering|6", "reskillable:mining|10", "compatskills:smithing|5", "compatskills:technology|7"]
    } as string[][int],
    //cinnabar
    <thaumcraft:ore_cinnabar> : {
        2 : ["reskillable:mining|10", "reskillable:magic|12", "compatskills:smithing|13"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/spider");

addDrops(table, drops, null);