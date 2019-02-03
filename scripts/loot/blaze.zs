#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//redstone, quartz, certus quartz, copper, pyrite, sphalerite, silver, amber, cobalt, ardite

var drops = {
	//redstone dust
	<minecraft:redstone> : {
		5 : null
	} as string[][int],
	//quartz
	<minecraft:quartz> : {
		15 : null
	} as string[][int],
	//certus quartz
	<appliedenergistics2:material> : {
		5 : null
	} as string[][int],
	//copper ore
	<mekanism:oreblock:1> : {
		5 : null
	} as string[][int],
	//pyrite dust
	<techreborn:dust:39> : {
		1 : null
	} as string[][int],
	//sphalerite dust
	<techreborn:dust:50> : {
		1 : null
	} as string[][int],
	//silver ore
	<techreborn:ore:13> : {
		3 : null
	} as string[][int],
	//amber
	<thaumcraft:amber> : {
		3 : null
	} as string[][int],
	//cobalt ore
	<tconstruct:ore> : {
		2 : null
	} as string[][int],
	//ardite ore
	<tconstruct:ore:1> : {
		2 : null
	} as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/blaze");

addDrops(table, drops, null);
addTCCurio(table);