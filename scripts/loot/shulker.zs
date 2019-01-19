#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/shulker");

//galena, ruby, sapphire, tungsten, sheldonite, peridot, sodalite

var drops = {
    //galena ore
    <techreborn:ore> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //ruby
    <techreborn:gem> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //sapphire
    <techreborn:gem:1> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //tungsten ore
    <techreborn:ore:8> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //sheldonite ore
    <techreborn:ore:9> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //peridot
    <techreborn:gem:2> : {
        1 : ["reskillable:mining|5"]
    } as string[][int],
    //sodalite dust
    <techreborn:dust:48> : {
        1 : ["reskillable:mining|5"]
    } as string[][int]
} as string[][int][IItemStack];

addDrops(table, drops, null);