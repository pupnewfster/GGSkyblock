#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, gold, emerald, certus quartz, tin

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        2 : ["reskillable:mining|5", "compatskills:smithing|3"]
    } as string[][int],
    //gold ore
    <minecraft:gold_ore> : {
        3 : ["reskillable:mining|10", "compatskills:smithing|5", "compatskills:magic|7"]
    } as string[][int],
    //emerald
    <minecraft:emerald> : {
        1 : ["reskillable:gathering|18", "reskillable:mining|22", "compatskills:smithing|24", "reskillable:agility|9", "reskillable:magic|14"]
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        3 : ["reskillable:gathering|8", "reskillable:mining|16", "compatskills:smithing|21", "compatskills:technology|21"]
    } as string[][int],
    //tin ore
    <mekanism:oreblock:2> : {
        3 : ["reskillable:mining|7", "compatskills:smithing|6", "compatskills:agility|5"]
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/zombie_villager");

addDrops(table, drops, null);

val pool1 = table.getPool("pool1");
pool1.removeEntry("minecraft:iron_ingot");