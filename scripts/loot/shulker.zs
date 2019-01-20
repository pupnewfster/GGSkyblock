#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//galena, ruby, sapphire, tungsten, sheldonite, peridot, sodalite

var drops = {
    //galena ore
    <techreborn:ore> : {
        1 : ["reskillable:mining|10"]
    } as string[][int],
    //ruby
    <techreborn:gem> : {
        3 : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"]
    } as string[][int],
    //sapphire
    <techreborn:gem:1> : {
        3 : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"]
    } as string[][int],
    //tungsten ore
    <techreborn:ore:8> : {
        1 : ["reskillable:mining|17", "reskillable:magic|13", "reskillable:defense|11"]
    } as string[][int],
    //sheldonite ore
    <techreborn:ore:9> : {
        1 : ["reskillable:mining|10", "reskillable:magic|5"]
    } as string[][int],
    //peridot
    <techreborn:gem:2> : {
        3 : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"]
    } as string[][int],
    //sodalite dust
    <techreborn:dust:48> : {
        1 : ["reskillable:gathering|13", "reskillable:mining|21", "compatskills:technology|17", "reskillable:magic|10"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/shulker");

addDrops(table, drops, null);