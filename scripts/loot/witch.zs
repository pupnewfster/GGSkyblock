#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, lapis, redstone, certus quartz, galena, bauxite, lead, amber, cinnabar

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        1 : ["reskillable:mining|5", "compatskills:smithing|3"]
    } as string[][int],
    //lapis lazuli
    <minecraft:dye:4> : {
        3 : ["reskillable:gathering|8", "reskillable:mining|10", "reskillable:magic|12"]
    } as string[][int],
    //redstone dust
    <minecraft:redstone> : {
        1 : ["reskillable:gathering|6", "reskillable:mining|10", "compatskills:smithing|5", "compatskills:technology|7"]
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        2 : ["reskillable:gathering|8", "reskillable:mining|16", "compatskills:smithing|21", "compatskills:technology|21"]
    } as string[][int],
    //galena ore
    <techreborn:ore> : {
        1 : ["reskillable:mining|10"]
    } as string[][int],
    //bauxite ore
    <techreborn:ore:4> : {
        1 : ["reskillable:mining|10"]
    } as string[][int],
    //lead ore
    <techreborn:ore:12> : {
        2 : ["reskillable:mining|10", "compatskills:smithing|13", "reskillable:magic|12", "reskillable:defense|16"]
    } as string[][int],
    //amber
    <thaumcraft:amber> : {
        3 : ["reskillable:gathering|9", "reskillable:mining|5", "reskillable:magic|13", "compatskills:smithing|13"]
    } as string[][int],
    //cinnabar
    <thaumcraft:ore_cinnabar> : {
        2 : ["reskillable:mining|10", "reskillable:magic|12", "compatskills:smithing|13"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/witch");

addDrops(table, drops, null);

val main = table.getPool("main");
main.removeEntry("minecraft:glowstone_dust");
main.removeEntry("minecraft:redstone");