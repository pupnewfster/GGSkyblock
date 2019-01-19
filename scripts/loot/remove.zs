import loottweaker.vanilla.loot.LootTables;

//Remove things from the end cities and nether fortresses

val end_city = LootTables.getTable("minecraft:chests/end_city_treasure");
end_city.removePool("Ender IO");
end_city.removePool("lootPool_techreborn:chests/end_city_treasure");

val main_end_city = end_city.getPool("main");
main_end_city.removeEntry("minecraft:diamond_sword");
main_end_city.removeEntry("minecraft:diamond_boots");
main_end_city.removeEntry("minecraft:diamond_chestplate");
main_end_city.removeEntry("minecraft:diamond_leggings");
main_end_city.removeEntry("minecraft:diamond_helmet");
main_end_city.removeEntry("minecraft:diamond_pickaxe");
main_end_city.removeEntry("minecraft:diamond_shovel");
main_end_city.removeEntry("minecraft:iron_sword");
main_end_city.removeEntry("minecraft:iron_boots");
main_end_city.removeEntry("minecraft:iron_chestplate");
main_end_city.removeEntry("minecraft:iron_leggings");
main_end_city.removeEntry("minecraft:iron_helmet");
main_end_city.removeEntry("minecraft:iron_pickaxe");
main_end_city.removeEntry("minecraft:iron_shovel");

val nether_bridge = LootTables.getTable("minecraft:chests/nether_bridge");
nether_bridge.removePool("Ender IO");
nether_bridge.removePool("lootPool_techreborn:chests/nether_bridge");

val main_nether_bridge = nether_bridge.getPool("main");
main_nether_bridge.removeEntry("minecraft:golden_chestplate");
main_nether_bridge.removeEntry("minecraft:golden_sword");