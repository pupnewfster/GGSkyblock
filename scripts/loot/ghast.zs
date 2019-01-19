#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//coal, quartz, certus quartz, pyrite, sphalerite, cobalt, ardte

var drops = {
    //coal
    <minecraft:coal> : {
        3 : ["reskillable:mining|5"]
    } as string[][int],
    //quartz
    <minecraft:quartz> : {
        5 : ["reskillable:mining|5"]
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        7 : ["reskillable:mining|5"]
    } as string[][int],
    //pyrite dust
    <techreborn:dust:39> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //sphalerite dust
    <techreborn:dust:50> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //cobalt ore
    <tconstruct:ore:0> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //ardite ore
    <tconstruct:ore:1> : {
        1 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/ghast");

addDrops(table, drops, null);