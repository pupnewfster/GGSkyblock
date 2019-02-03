#priority 1000

import scripts.loot.loot_tweaker.addDrops;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//iron, coal, redstone, black quartz, copper, silver

var drops = {
	//iron ore
	<minecraft:iron_ore> : {
		3 : null
	} as string[][int],
	//coal
	<minecraft:coal> : {
		3 : null
	} as string[][int],
	//redstone dust
	<minecraft:redstone> : {
		4 : null
	} as string[][int],
	//black quartz ore
	<actuallyadditions:block_misc:3> : {
		1 : null
	} as string[][int],
	//copper ore
	<mekanism:oreblock:1> : {
		2 : null
	} as string[][int],
	//silver ore
	<techreborn:ore:13> : {
		2 : null
	} as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/creeper");

addDrops(table, drops, null);