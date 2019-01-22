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
   <minecraft:coal> : ["reskillable:gathering|3", "reskillable:mining|3"],
   //Black quartz
   <actuallyadditions:block_misc:3> : ["reskillable:mining|5", "compatskills:smithing|3"],
   <minecraft:redstone> : ["reskillable:gathering|6", "reskillable:mining|10", "compatskills:smithing|5", "compatskills:technology|7"],
   <minecraft:quartz> : ["reskillable:gathering|8", "reskillable:mining|15", "reskillable:attack|5", "compatskills:smithing|9"],
   //Certus Quartz
   <appliedenergistics2:material> : ["reskillable:gathering|8", "reskillable:mining|16", "compatskills:smithing|21", "compatskills:technology|21"],
   //Copper ore
   <mekanism:oreblock:1> : ["reskillable:mining|7", "compatskills:smithing|7", "compatskills:technology|13"],
   //Tin ore
   <mekanism:oreblock:2> : ["reskillable:mining|7", "compatskills:smithing|6", "compatskills:agility|5"],
   //Pyrite dust
   <techreborn:dust:39> : ["reskillable:gathering|11", "reskillable:mining|16", "compatskills:technology|12"],
   //sphalerite dust
   <techreborn:dust:50> : ["reskillable:gathering|11", "reskillable:mining|16", "compatskills:technology|12"],
   //Silver Ore
   <techreborn:ore:13> : ["reskillable:mining|10", "compatskills:smithing|16", "reskillable:magic|8"],
   <thaumcraft:amber> : ["reskillable:gathering|9", "reskillable:mining|5", "reskillable:magic|13", "compatskills:smithing|13"],
   //Cobalt Ore
   <tconstruct:ore> : ["reskillable:mining|32", "compatskills:smithing|35", "reskillable:attack|10"],
   //Ardite Ore
   <tconstruct:ore:1> : ["reskillable:mining|32", "compatskills:smithing|35", "reskillable:attack|10"],
   //Ruby
   <techreborn:gem> : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"],
   //Sapphire
   <techreborn:gem:1> : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"],
   //Peridot
   <techreborn:gem:2> : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5"],
   //Lead Ore
   <techreborn:ore:12> : ["reskillable:mining|10", "compatskills:smithing|13", "reskillable:magic|12", "reskillable:defense|16"],
   <minecraft:iron_ore> : ["reskillable:mining|5", "compatskills:smithing|3"],
   <minecraft:gold_ore> : ["reskillable:mining|10", "compatskills:smithing|5", "compatskills:magic|7"],
   //Osmium Ore
   <mekanism:oreblock> : ["reskillable:mining|7", "compatskills:smithing|9", "compatskills:technology|17"],
   <thaumcraft:ore_cinnabar> : ["reskillable:mining|10", "reskillable:magic|12", "compatskills:smithing|13"],
   //Lapis
   <minecraft:dye:4> : ["reskillable:gathering|8", "reskillable:mining|10", "reskillable:magic|12"],
   //Galena Ore
   <techreborn:ore> : ["reskillable:mining|10"],
   //Bauxite Ore
   <techreborn:ore:4> : ["reskillable:mining|10"],
   <minecraft:diamond> : ["reskillable:gathering|15", "reskillable:mining|20", "compatskills:smithing|21", "reskillable:agility|9", "reskillable:magic|5", "reskillable:attack|5", "reskillable:defense|5"],
   <minecraft:emerald> : ["reskillable:gathering|18", "reskillable:mining|22", "compatskills:smithing|24", "reskillable:agility|9", "reskillable:magic|14"],
   //Iridium Ore
   <techreborn:ore:1> : ["reskillable:mining|22", "compatskills:smithing|24", "compatskills:technology|42"],
   //Tungsten Ore
   <techreborn:ore:8> : ["reskillable:mining|17", "reskillable:magic|13", "reskillable:defense|11"],
   //sheldonite ore
   <techreborn:ore:9> : ["reskillable:mining|10", "reskillable:magic|5"],
   //sodalite dust
   <techreborn:dust:48> : ["reskillable:gathering|13", "reskillable:mining|21", "compatskills:technology|17", "reskillable:magic|10"]
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
      "looting_multiplier": 0.08,
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
    if (isNull(conditions)) {
        return null;
    }
    if (conditions.length == 0) {
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
    val minReqs = getConditions(["trait|compatskills:unlock_thaumcraft", "warp|100"]);
    pool.addConditionsHelper([getConditions(["trait|compatskills:unlock_thaumcraft", "warp|100"])]);
    pool.addItemEntryHelper(<thaumcraft:curio:1>, 1, 0, scripts.loot.loot_tweaker.looting, null);
}