#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.combine;
import scripts.loot.loot_tweaker.baseValues;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, osmium, copper, tin
//nether: quartz, pyrite, sphalerite, ardite, cobalt

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        9 : null
    } as string[][int],
    //osmium ore
    <mekanism:oreblock> : {
        6 : null
    } as string[][int],
    //copper ore
    <mekanism:oreblock:1> : {
        6 : null
    } as string[][int],
    //tin ore
    <mekanism:oreblock:2> : {
        6 : null
    } as string[][int],

    //Nether only

    //quartz
    <minecraft:quartz> : {
        6 : combine(baseValues[<minecraft:quartz>], ["dim|-1"])
    } as string[][int],
    //pyrite dust
    <techreborn:dust:39> : {
        1 : combine(baseValues[<techreborn:dust:39>], ["dim|-1"])
    } as string[][int],
    //sphalerite dust
    <techreborn:dust:50> : {
        1 : combine(baseValues[<techreborn:dust:50>], ["dim|-1"])
    } as string[][int],
    //cobalt ore
    <tconstruct:ore> : {
        2 : combine(baseValues[<tconstruct:ore>], ["dim|-1"])
    } as string[][int],
    //ardite ore
    <tconstruct:ore:1> : {
        2 : combine(baseValues[<tconstruct:ore:1>], ["dim|-1"])
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/skeleton");

addDrops(table, drops, null);