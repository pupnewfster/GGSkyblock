#priority 1000

import scripts.loot.loot_tweaker.getConditions;

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/wither_skeleton");
val pool = table.getPool("main");

//coal, quartz, black quartz, certus quartz, ruby, sapphire, pyrite, sphalerite, peridot, lead, amber, ardite, cobalt