#priority 1000

import scripts.loot.loot_tweaker.getConditions;

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/squid");
val pool = table.getPool("main");

//coal, black quartz, galena, bauxite, lead