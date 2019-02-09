#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, lapis, redstone, certus quartz, galena, bauxite, lead, amber, cinnabar

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        1 : null
    } as string[][int],
    //lapis lazuli
    <minecraft:dye:4> : {
        3 : null
    } as string[][int],
    //redstone dust
    <minecraft:redstone> : {
        1 : null
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        2 : null
    } as string[][int],
    //galena ore
    <techreborn:ore> : {
        1 : null
    } as string[][int],
    //bauxite ore
    <techreborn:ore:4> : {
        1 : null
    } as string[][int],
    //lead ore
    <techreborn:ore:12> : {
        2 : null
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        3 : null
    } as string[][int],
    //cinnabar
    <thaumcraft:ore_cinnabar> : {
        2 : null
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/witch");

addDrops(table, drops, null);
addTCCurio(table);

val main = table.getPool("main");
main.removeEntry("minecraft:glowstone_dust");
main.removeEntry("minecraft:redstone");