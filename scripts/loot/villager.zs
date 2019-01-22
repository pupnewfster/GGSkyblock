#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, gold, diamond, emerald, certus quartz, iridium, ruby, sapphire, peridot

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        16 : null
    } as string[][int],
    //gold ore
    <minecraft:gold_ore> : {
        12 : null
    } as string[][int],
    //diamond
    <minecraft:diamond> : {
        4 : null
    } as string[][int],
    //emerald
    <minecraft:emerald> : {
        4 : null
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        8 : null
    } as string[][int],
    //iridium ore
    <techreborn:ore:1> : {
        1 : null
    } as string[][int],
    //ruby
    <techreborn:gem> : {
        6 : null
    } as string[][int],
    //sapphire
    <techreborn:gem:1> : {
        6 : null
    } as string[][int],
    //peridot
    <techreborn:gem:2> : {
        6 : null
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/villager");

addDrops(table, drops, null);