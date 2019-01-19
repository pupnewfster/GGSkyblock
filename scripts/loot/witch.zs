#priority 1000

import scripts.loot.loot_tweaker.getConditions;

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/witch");
val pool = table.getPool("main");

//iron, lapis, redstone,certus quartz, galena, bauxite, lead, amber, cinnabar