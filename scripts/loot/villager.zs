#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, gold, diamond, emerald, certus quartz, iridium, ruby, sapphire, peridot

var drops = {
	//gold ore
	<minecraft:gold_ore> : {
		12 : null
	} as string[][int],
	//diamond
	<minecraft:diamond> : {
		5 : null
	} as string[][int],
	//emerald
	<minecraft:emerald> : {
		3 : null
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
		7 : null
	} as string[][int],
	//sapphire
	<techreborn:gem:1> : {
		7 : null
	} as string[][int],
	//peridot
	<techreborn:gem:2> : {
		7 : null
	} as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/villager");

addDrops(table, drops, null);