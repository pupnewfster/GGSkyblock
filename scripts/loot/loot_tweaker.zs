#priority 1300

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

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

//TODO: Remove some drops from base pools such as iron from zombies



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
            pool.addItemEntryHelper(item, weight, 0, scripts.loot.loot_tweaker.looting, [getConditions(requirements)]);
        }
    }
}

//If high warp make mobs drop curious from thaumcraft if you have the thaumcraft trait, witches, wither skeletons, villagers, other things that drop amber