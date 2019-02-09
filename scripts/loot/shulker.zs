#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//galena, ruby, sapphire, tungsten, sheldonite, peridot, sodalite

var drops = {
    //galena ore
    <techreborn:ore> : {
        1 : null
    } as string[][int],
    //ruby
    <techreborn:gem> : {
        3 : null
    } as string[][int],
    //sapphire
    <techreborn:gem:1> : {
        3 : null
    } as string[][int],
    //tungsten ore
    <techreborn:ore:8> : {
        1 : null
    } as string[][int],
    //sheldonite ore
    <techreborn:ore:9> : {
        1 : null
    } as string[][int],
    //peridot
    <techreborn:gem:2> : {
        3 : null
    } as string[][int],
    //sodalite dust
    <techreborn:dust:48> : {
        1 : null
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/shulker");

addDrops(table, drops, null);