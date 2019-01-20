#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, osmium, copper, tin
//nether: quartz, pyrite, sphalerite, ardite, cobalt

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        9 : ["reskillable:mining|5", "compatskills:smithing|3"]
    } as string[][int],
    //osmium ore
    <mekanism:oreblock> : {
        6 : ["reskillable:mining|7", "compatskills:smithing|9", "compatskills:technology|17"]
    } as string[][int],
    //copper ore
    <mekanism:oreblock:1> : {
        6 : ["reskillable:mining|7", "compatskills:smithing|7", "compatskills:technology|13"]
    } as string[][int],
    //tin ore
    <mekanism:oreblock:2> : {
        6 : ["reskillable:mining|7", "compatskills:smithing|6", "compatskills:agility|5"]
    } as string[][int],

    //Nether only

    //quartz
    <minecraft:quartz> : {
        6 : ["dim|-1", "reskillable:gathering|8", "reskillable:mining|15", "reskillable:attack|5", "compatskills:smithing|9"]
    } as string[][int],
    //pyrite dust
    <techreborn:dust:39> : {
        1 : ["dim|-1", "reskillable:mining|5"]
    } as string[][int],
    //sphalerite dust
    <techreborn:dust:50> : {
        1 : ["dim|-1", "reskillable:mining|5"]
    } as string[][int],
    //cobalt ore
    <tconstruct:ore:0> : {
        2 : ["dim|-1", "reskillable:mining|5"]
    } as string[][int],
    //ardite ore
    <tconstruct:ore:1> : {
        2 : ["dim|-1", "reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/skeleton");

addDrops(table, drops, null);