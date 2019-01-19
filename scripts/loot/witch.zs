#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/witch");

//iron, lapis, redstone, certus quartz, galena, bauxite, lead, amber, cinnabar

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //lapis lazuli
    <minecraft:dye:4> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //redstone dust
    <minecraft:redstone> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        1 : ["reskillable:mining|5"]
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
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //cinnabar
    <thaumcraft:ore_cinnabar> : {
        1 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

addDrops(table, drops, null);