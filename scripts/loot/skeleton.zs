#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/skeleton");

//iron, osmium, copper, tin

//nether: quartz, pyrite, sphalerite, ardite, cobalt


var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        9 : ["reskillable:mining|5"]
    } as string[][int],
    //osmium ore
    <mekanism:oreblock> : {
        6 : ["reskillable:mining|5"]
    } as string[][int],
    //copper ore
    <mekanism:oreblock:1> : {
        6 : ["reskillable:mining|5"]
    } as string[][int],
    //tin ore
    <mekanism:oreblock:2> : {
        6 : ["reskillable:mining|5"]
    } as string[][int],

    //Nether only

    //quartz
    <minecraft:quartz> : {
        6 : ["dim|-1", "reskillable:mining|5"]
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

addDrops(table, drops, null);