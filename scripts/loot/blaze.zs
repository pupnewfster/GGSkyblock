#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//redstone, quartz, certus quartz, copper, pyrite, sphalerite, silver, amber, cobalt, ardite

var drops = {
    //redstone dust
    <minecraft:redstone> : {
        5 : ["reskillable:gathering|6", "reskillable:mining|10", "compatskills:smithing|5", "compatskills:technology|7"]
    } as string[][int],
    //quartz
    <minecraft:quartz> : {
        15 : ["reskillable:gathering|8", "reskillable:mining|15", "reskillable:attack|5", "compatskills:smithing|9"]
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        5 : ["reskillable:gathering|8", "reskillable:mining|16", "compatskills:smithing|21", "compatskills:technology|21"]
    } as string[][int],
    //copper ore
    <mekanism:oreblock:1> : {
        5 : ["reskillable:mining|7", "compatskills:smithing|7", "compatskills:technology|13"]
    } as string[][int],
    //pyrite dust
    <techreborn:dust:39> : {
        1 : ["reskillable:gathering|11", "reskillable:mining|16", "compatskills:technology|12"]
    } as string[][int],
    //sphalerite dust
    <techreborn:dust:50> : {
        1 : ["reskillable:gathering|11", "reskillable:mining|16", "compatskills:technology|12"]
    } as string[][int],
    //silver ore
    <techreborn:ore:13> : {
        3 : ["reskillable:mining|10", "compatskills:smithing|16", "reskillable:magic|8"]
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        3 : ["reskillable:gathering|9", "reskillable:mining|5", "reskillable:magic|13", "compatskills:smithing|13"]
    } as string[][int],
    //cobalt ore
    <tconstruct:ore:0> : {
        2 : ["reskillable:mining|32", "compatskills:smithing|35", "reskillable:attack|10"]
    } as string[][int],
    //ardite ore
    <tconstruct:ore:1> : {
        2 : ["reskillable:mining|32", "compatskills:smithing|35", "reskillable:attack|10"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/blaze");

addDrops(table, drops, null);