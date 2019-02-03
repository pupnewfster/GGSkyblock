#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, coal, lapis, redstone, cinnabar

var drops = {
	//iron ore
	<minecraft:iron_ore> : {
		3 : null
	} as string[][int],
	//coal
	<minecraft:coal> : {
		1 : null
	} as string[][int],
	//lapis lazuli
	<minecraft:dye:4> : {
		3 : null
	} as string[][int],
	//redstone dust
	<minecraft:redstone> : {
		4 : null
	} as string[][int],
	//cinnabar
	<thaumcraft:ore_cinnabar> : {
		2 : null
	} as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/spider");

addDrops(table, drops, null);