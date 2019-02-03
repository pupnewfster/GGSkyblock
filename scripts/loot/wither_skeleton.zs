#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;

import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;

//coal, quartz, black quartz, certus quartz, ruby, sapphire, pyrite, sphalerite, peridot, lead, amber, ardite, cobalt

var drops = {
	//coal
	<minecraft:coal> : {
		6 : null
	} as string[][int],
	//quartz
	<minecraft:quartz> : {
		7 : null
	} as string[][int],
	//black quartz ore
	<actuallyadditions:block_misc:3> : {
		7 : null
	} as string[][int],
	//certus quartz
	<appliedenergistics2:material> : {
		1 : null
	} as string[][int],
	//ruby
	<techreborn:gem> : {
		2 : null
	} as string[][int],
	//sapphire
	<techreborn:gem:1> : {
		2 : null
	} as string[][int],
	//pyrite dust
	<techreborn:dust:39> : {
		1 : null
	} as string[][int],
	//sphalerite dust
	<techreborn:dust:50> : {
		1 : null
	} as string[][int],
	//peridot
	<techreborn:gem:2> : {
		2 : null
	} as string[][int],
	//lead ore
	<techreborn:ore:12> : {
		1 : null
	} as string[][int],
	//amber
	<thaumcraft:amber> : {
		3 : null
	} as string[][int],
	//cobalt ore
	<tconstruct:ore> : {
		6 : null
	} as string[][int],
	//ardite ore
	<tconstruct:ore:1> : {
		6 : null
	} as string[][int]
} as string[][int][IItemStack];

val table = LootTables.getTable("minecraft:entities/wither_skeleton");

addDrops(table, drops, null);
addTCCurio(table);

val main = table.getPool("main");
main.removeEntry("minecraft:coal");