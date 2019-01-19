#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/blaze");


//redstone, quartz, certus quartz, copper, pyrite, sphalerite, silver, amber, cobalt, ardite

var drops = {
    //redstone dust
    <minecraft:redstone> : {
        5 : ["reskillable:mining|5"]
    } as string[][int],
    //quartz
    <minecraft:quartz> : {
        15 : ["reskillable:mining|5"]
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        5 : ["reskillable:mining|5"]
    } as string[][int],
    //copper ore
    <mekanism:oreblock:1> : {
        5 : ["reskillable:mining|5"]
    } as string[][int],
    //pyrite dust
    <techreborn:dust:39> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //sphalerite dust
    <techreborn:dust:50> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //silver ore
    <techreborn:ore:13> : {
        3 : ["reskillable:mining|5"]
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        3 : ["reskillable:mining|5"]
    } as string[][int],
    //cobalt ore
    <tconstruct:ore:0> : {
        2 : ["reskillable:mining|5"]
    } as string[][int],
    //ardite ore
    <tconstruct:ore:1> : {
        2 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

addDrops(table, drops, null);