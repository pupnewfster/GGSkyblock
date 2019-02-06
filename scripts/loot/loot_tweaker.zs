#priority 1300

import loottweaker.vanilla.loot.LootTable;

import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.LootFunction;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;


//table.addPool(String poolName, int minRolls, int maxRolls, int minBonusRolls, int maxBonusRolls);

//pool.addItemEntryHelper(item, weight, quality, functions, conditions);
//weight: Determines how often this entry will be chosen out of all the entries in the pool, higher weight will be used more often, chance is weight/all entries weight
//quality: modify weight based on luck attribute, floor(weight + (quality * luck))


static baseValues as string[][IItemStack] = {
	<minecraft:coal> : ["reskillable:mining|3", "reskillable:gathering|3"],
	<minecraft:redstone> : ["reskillable:mining|10", "reskillable:gathering|6", "compatskills:smithing|5", "compatskills:technology|7"],
	<minecraft:quartz> : ["reskillable:mining|15", "reskillable:gathering|8", "compatskills:smithing|9", "reskillable:attack|5"],
	<minecraft:iron_ore> : ["reskillable:mining|5", "compatskills:smithing|3"],
	<minecraft:gold_ore> : ["reskillable:mining|10", "compatskills:smithing|5", "reskillable:magic|7"],
	<minecraft:diamond> : ["reskillable:mining|20", "reskillable:gathering|15", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5", "reskillable:attack|5", "reskillable:defense|5"],
	<minecraft:emerald> : ["reskillable:mining|22", "reskillable:gathering|18", "compatskills:smithing|24", "reskillable:agility|9", "reskillable:magic|14"],
	//Lapis
	<minecraft:dye:4> : ["reskillable:mining|10", "reskillable:gathering|8", "reskillable:magic|12"],

	<thaumcraft:amber> : ["reskillable:mining|5", "reskillable:gathering|9", "compatskills:smithing|13", "reskillable:magic|13"],
	<thaumcraft:ore_cinnabar> : ["reskillable:mining|10", "compatskills:smithing|13", "reskillable:magic|12"],

	//Black quartz
	<actuallyadditions:block_misc:3> : ["reskillable:mining|5", "compatskills:smithing|3"],

	//Certus Quartz
	<appliedenergistics2:material> : ["reskillable:mining|16", "reskillable:gathering|8", "compatskills:smithing|21", "compatskills:technology|21"],

	//Osmium Ore
	<mekanism:oreblock> : ["reskillable:mining|7", "compatskills:smithing|9", "compatskills:technology|17"],
	//Copper ore
	<mekanism:oreblock:1> : ["reskillable:mining|7", "compatskills:smithing|7", "compatskills:technology|13"],
	//Tin ore
	<mekanism:oreblock:2> : ["reskillable:mining|7", "compatskills:smithing|6", "reskillable:agility|5"],

	//Cobalt Ore
	<tconstruct:ore> : ["reskillable:mining|32", "compatskills:smithing|35", "reskillable:attack|10"],
	//Ardite Ore
	<tconstruct:ore:1> : ["reskillable:mining|32", "compatskills:smithing|35", "reskillable:attack|10"],

	//Ruby
	<techreborn:gem> : ["reskillable:mining|20", "reskillable:gathering|15", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"],
	//Sapphire
	<techreborn:gem:1> : ["reskillable:mining|20", "reskillable:gathering|15", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"],
	//Peridot
	<techreborn:gem:2> : ["reskillable:mining|20", "reskillable:gathering|15", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"],

	//Pyrite dust
	<techreborn:dust:39> : ["reskillable:mining|16", "reskillable:gathering|11", "compatskills:technology|12"],
	//Sodalite dust
	<techreborn:dust:48> : ["reskillable:mining|21", "reskillable:gathering|13", "compatskills:technology|17", "reskillable:magic|10"],
	//Sphalerite dust
	<techreborn:dust:50> : ["reskillable:mining|16", "reskillable:gathering|11", "compatskills:technology|12"],

	//Galena Ore
	<techreborn:ore> : ["reskillable:mining|10"],
	//Iridium Ore
	<techreborn:ore:1> : ["reskillable:mining|22", "compatskills:smithing|24", "compatskills:technology|42"],
	//Bauxite Ore
	<techreborn:ore:4> : ["reskillable:mining|10"],
	//Tungsten Ore
	<techreborn:ore:8> : ["reskillable:mining|17", "reskillable:magic|13", "reskillable:defense|11"],
	//Sheldonite ore
	<techreborn:ore:9> : ["reskillable:mining|10", "reskillable:magic|5"],
	//Lead Ore
	<techreborn:ore:12> : ["reskillable:mining|10", "compatskills:smithing|13", "reskillable:magic|12", "reskillable:defense|16"],
	//Silver Ore
	<techreborn:ore:13> : ["reskillable:mining|10", "compatskills:smithing|16", "reskillable:magic|8"]
} as string[][IItemStack];



function combine(first as string[], second as string[]) as string[] {
	var array as string[] = first;
	for s in second {
		array += s;
	}
	return array;
}

static conds as LootCondition[] = [
	Conditions.parse({
		"inverse": false,
		"condition": "minecraft:killed_by_player"
	 }),
	Conditions.parse({
		"chance": 0.5,
		"looting_multiplier": 0.17,
		"condition": "minecraft:random_chance_with_looting"
	})
] as LootCondition[];

static looting as LootFunction[] = [
	Functions.parse({
		"count": {
		"min": 0.0,
		"max": 1.0
		},
		"function": "minecraft:looting_enchant"
	})
] as LootFunction[];

function getConditions(conditions as string[]) as LootCondition {
	if (isNull(conditions) || conditions.length == 0) {
		return null;
	}

	var c = [] as IData;
	for condition in conditions {
		c += [condition];
	}
	return Conditions.parse({
		"condition" : "reskillable:requirement",
		"requiresPlayer" : true,
		"requirements" : c
	});
}

function addDrops(table as LootTable, drops as string[][int][IItemStack], minRequirements as string[]) {
	val pool = table.addPool("resources", 1, 1, 0, 0);
	val minReqs = getConditions(minRequirements);
	pool.addConditionsHelper(isNull(minReqs) ? scripts.loot.loot_tweaker.conds : scripts.loot.loot_tweaker.conds + minReqs);

	for item, value in drops {
		for weight, requirements in value {//Only ever should be one iteration of this loop
			var c = getConditions(requirements);
			if (isNull(c)) {
				c = getConditions(scripts.loot.loot_tweaker.baseValues[item]);
			}
			pool.addItemEntryHelper(item, weight, 0, scripts.loot.loot_tweaker.looting, isNull(c) ? [] : [c]);
		}
	}
}

function addTCCurio(table as LootTable) {
	val pool = table.addPool("curios", 1, 1, 0, 0);
	pool.addConditionsHelper([getConditions(["trait|compatskills:unlock_thaumcraft", "warp|10"])]);
	pool.addItemEntryHelper(<thaumcraft:curio:1>, 1, 0, scripts.loot.loot_tweaker.looting, null);
}