#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, gold, emerald, certus quartz, tin

var drops = {
    //iron ore
    <minecraft:iron_ore> : {
        2 : null
    } as string[][int],
    //gold ore
    <minecraft:gold_ore> : {
        3 : null
    } as string[][int],
    //emerald
    <minecraft:emerald> : {
        1 : null
    } as string[][int],
    //certus quartz
    <appliedenergistics2:material> : {
        3 : null
    } as string[][int],
    //tin ore
    <mekanism:oreblock:2> : {
        3 : null
    } as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/zombie_villager");

addDrops(table, drops, null);

val pool1 = table.getPool("pool1");
pool1.removeEntry("minecraft:iron_ingot");