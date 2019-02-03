#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;
import scripts.loot.loot_tweaker.combine;
import scripts.loot.loot_tweaker.baseValues;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//gold, osmium, amber
//Nether: quartz, pyrite, sphalerite

var drops = {
	//gold ore
	<minecraft:gold_ore> : {
		5 : null
	} as string[][int],
	//osmium ore
	<mekanism:oreblock> : {
		6 : null
	} as string[][int],
	//amber
	<thaumcraft:amber> : {
		2 : null
	} as string[][int],

	//Nether

	//quartz
	<minecraft:quartz> : {
		3 : combine(baseValues[<minecraft:quartz>], ["dim|-1"])
	} as string[][int],
	//pyrite dust
	<techreborn:dust:39> : {
		1 : combine(baseValues[<techreborn:dust:39>], ["dim|-1"])
	} as string[][int],
	//sphalerite dust
	<techreborn:dust:50> : {
		1 : combine(baseValues[<techreborn:dust:50>], ["dim|-1"])
	} as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/zombie_pigman");

addDrops(table, drops, null);
addTCCurio(table);

table.removePool("pool2");