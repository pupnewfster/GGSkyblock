#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, gold, diamond, emerald, certus quartz, iridium, ruby, sapphire, peridot

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        16 : ["reskillable:mining|5", "compatskills:smithing|3"]
    } as string[][int],
    //gold ore
    <minecraft:gold_ore> : {
        12 : ["reskillable:mining|10", "compatskills:smithing|5", "compatskills:magic|7"]
    } as string[][int],
    //diamond
    <minecraft:diamond> : {
        4 : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5", "reskillable:attack|5", "reskillable:defense|5"]
    } as string[][int],
    //emerald
    <minecraft:emerald> : {
        4 : ["reskillable:gathering|18", "reskillable:mining|22", "compatskills:smithing|24", "reskillable:agility|9", "reskillable:magic|14"]
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        8 : ["reskillable:gathering|8", "reskillable:mining|16", "compatskills:smithing|21", "compatskills:technology|21"]
    } as string[][int],
    //iridium ore
    <techreborn:ore:1> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //ruby
    <techreborn:gem> : {
        6 : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"]
    } as string[][int],
    //sapphire
    <techreborn:gem:1> : {
        6 : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"]
    } as string[][int],
    //peridot
    <techreborn:gem:2> : {
        6 : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/villager");

addDrops(table, drops, null);