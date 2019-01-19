#priority 1000

import scripts.loot.loot_tweaker.getConditions;

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

val table = LootTables.getTable("minecraft:entities/enderman");
val pool = table.getPool("main");

//iron, gold, black quartz, osmium, amber, cinnabar

//end: diamond, emerald, ruby, sapphire, tungsten, sheldonite, peridot, sodalite