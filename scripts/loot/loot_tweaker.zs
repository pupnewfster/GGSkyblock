#priority 1300

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;


//table.addPool(String poolName, int minRolls, int maxRolls, int minBonusRolls, int maxBonusRolls);



//pool.addItemEntryHelper(item, weight, quality, function, conditions);
//weight: Determines how often this entry will be chosen out of all the entries in the pool, higher weight will be used more often, chance is weight/all entries weight
//quality: modify weight based on luck attribute, floor(weight + (quality * luck))

//https://github.com/Daomephsta/LootTweaker/blob/1.12/src/main/java/leviathan143/loottweaker/common/zenscript/adders/ItemEntryAdder.java
//https://minecraft.gamepedia.com/Loot_table

//val table = LootTables.getTable("minecraft:entities/pig");
//val pool = table.getPool("main");
//pool.addItemEntryHelper(<minecraft:diamond>, 1, 0, null, getConditions(["reskillable:attack|5", "reskillable:magic|7"]));

//TODO: Remove some drops from base pools such as iron from zombies



static conds as LootCondition[] = [
    Conditions.parse({
       "inverse": false,
       "condition": "minecraft:killed_by_player"
     }),
    Conditions.parse({
      "chance": 0.25,
      "looting_multiplier": 0.08,
      "condition": "minecraft:random_chance_with_looting"
    })
] as LootCondition[];

function getConditions(conditions as string[]) as LootCondition {
    if (isNull(conditions) | conditions.length == 0) {
        return null;
    }
	var c = [] as IData;
	for condition in conditions {
		c += [condition];
	}

	return [Conditions.parse({
        "condition" : "reskillable:requirement",
        "requiresPlayer" : true,
        "requirements" : c
    })];
}

function addDrops(table as LootTable, drops as string[][int][IItemStack], minRequirements as string[]) {//TODO: Min requirements needed to even bother looking at the table
    val pool = table.addPool("resources", 1, 1, 0, 0);
    val minReqs = getConditions(minRequirements);
    if (isNull(minReqs)) {
        pool.addConditionsHelper(scripts.loot.loot_tweaker.conds);
    } else {
        pool.addConditionsHelper(scripts.loot.loot_tweaker.conds + minReqs);
    }

    for item, value in drops {
        for weight, requirements in value {//Only ever should be one iteration of this loop
            pool.addItemEntryHelper(item, weight, 0, null, [getConditions(requirements)]);
        }
    }
}

//If high warp make mobs drop curious from thaumcraft if you have the thaumcraft trait, witches, wither skeletons, villagers, other things that drop amber

//TODO: Remove these from the loot tables that they are still in now that loot table tweaker is gone
/*import mods.ltt.LootTable.removeGlobalItem;

removeGlobalItem("enderio:item_material");
removeGlobalItem("enderio:item_dark_steel_boots");
removeGlobalItem("enderio:item_conduit_probe");
removeGlobalItem("enderio:item_alloy_ingot");
removeGlobalItem("enderio:item_dark_steel_sword");
removeGlobalItem("enderio:item_dark_steel_bow");
removeGlobalItem("enderio:item_dark_steel_axe");
removeGlobalItem("enderio:item_travel_staff");
removeGlobalItem("techreborn:machine_frame");
removeGlobalItem("techreborn:machine_frame:2");
removeGlobalItem("techreborn:ingot");
removeGlobalItem("techreborn:part");
removeGlobalItem("techreborn:part:2");
removeGlobalItem("techreborn:part:29");
removeGlobalItem("botania:lexicon");
removeGlobalItem("botania:manabottle");
removeGlobalItem("botania:manaresource");

removeGlobalItem("minecraft:diamond_helmet");
removeGlobalItem("minecraft:diamond_chestplate");
removeGlobalItem("minecraft:diamond_leggings");
removeGlobalItem("minecraft:diamond_boots");
removeGlobalItem("minecraft:iron_helmet");
removeGlobalItem("minecraft:iron_chestplate");
removeGlobalItem("minecraft:iron_leggings");
removeGlobalItem("minecraft:iron_boots");
removeGlobalItem("minecraft:diamond_pickaxe");
removeGlobalItem("minecraft:diamond_shovel");
removeGlobalItem("minecraft:diamond_sword");
removeGlobalItem("minecraft:diamond_hoe");
removeGlobalItem("minecraft:iron_pickaxe");
removeGlobalItem("minecraft:iron_shovel");
removeGlobalItem("minecraft:iron_sword");
removeGlobalItem("minecraft:golden_chestplate");
removeGlobalItem("minecraft:golden_sword");
removeGlobalItem("minecraft:stone_axe");
removeGlobalItem("minecraft:chainmail_chestplate");*/