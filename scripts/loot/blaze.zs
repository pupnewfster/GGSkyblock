#priority 1000

import scripts.loot.loot_tweaker.getConditions;

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/blaze");
val pool = table.getPool("main");

//redstone, quartz, certus quartz, copper, pyrite, sphalerite, silver, amber, ardite, cobalt