#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//gold, osmium, amber
//Nether: quartz, pyrite, sphalerite

var drops = {
    //gold ore
    <minecraft:gold_ore> : {
        5 : ["reskillable:mining|10", "compatskills:smithing|5", "compatskills:magic|7"]
    } as string[][int],
    //osmium ore
    <mekanism:oreblock> : {
        6 : ["reskillable:mining|7", "compatskills:smithing|9", "compatskills:technology|17"]
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        2 : ["reskillable:mining|5"]
    } as string[][int],

    //Nether

    //quartz
    <minecraft:quartz> : {
        3 : ["dim|-1", "reskillable:gathering|8", "reskillable:mining|15", "reskillable:attack|5", "compatskills:smithing|9"]
    } as string[][int],
    //pyrite dust
    <techreborn:dust:39> : {
        1 : ["dim|-1", "reskillable:mining|5"]
    } as string[][int],
    //sphalerite dust
    <techreborn:dust:50> : {
        1 : ["dim|-1", "reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/zombie_pigman");

addDrops(table, drops, null);

table.removePool("pool2");