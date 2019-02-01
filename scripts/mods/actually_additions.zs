import crafttweaker.item.IItemStack;

//Iron Casing needs Tech reborn standard casing
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped("CTIronCasing", <actuallyadditions:block_misc:9>, [[<ore:ingotSteel> , <ore:gemQuartzBlack>, <ore:ingotSteel>], [<ore:gemQuartzBlack>, <techreborn:machine_casing>, <ore:gemQuartzBlack>], [<ore:ingotSteel> , <ore:gemQuartzBlack>, <ore:ingotSteel>]]);

//Atomic Reconstructor
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
recipes.addShaped("CTAtomicReconstructor", <actuallyadditions:block_atomic_reconstructor>, [[<techreborn:ingot:19>, <projecte:item.pe_covalence_dust:1>, <techreborn:ingot:19>], [<projecte:item.pe_covalence_dust:1>, <actuallyadditions:block_misc:9>, <projecte:item.pe_covalence_dust:1>], [<techreborn:ingot:19>, <projecte:item.pe_covalence_dust:1>, <techreborn:ingot:19>]]);

//Battery
recipes.remove(<actuallyadditions:item_battery>);
recipes.addShaped("CTBattery", <actuallyadditions:item_battery>, [[null, <actuallyadditions:item_crystal>, null], [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_crystal:5>], [<actuallyadditions:item_crystal:5>, <techreborn:rebattery>, <actuallyadditions:item_crystal:5>]]);

//Advanced Coil
recipes.remove(<actuallyadditions:item_misc:8>);
recipes.addShaped("CTAdvancedCoil", <actuallyadditions:item_misc:8>, [[<mekanism:enrichedalloy>, <mekanism:enrichedalloy>, <mekanism:enrichedalloy>], [<mekanism:enrichedalloy>, <actuallyadditions:item_misc:7>, <mekanism:enrichedalloy>], [<mekanism:enrichedalloy>, <mekanism:enrichedalloy>, <mekanism:enrichedalloy>]]);

//XP solidifier
mods.jei.JEI.removeAndHide(<actuallyadditions:block_xp_solidifier>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_smiley_cloud>);
mods.jei.JEI.hide(<actuallyadditions:item_solidified_experience>);

//Ring of Growth
recipes.remove(<actuallyadditions:item_growth_ring>);
recipes.addShaped("CTGrowthRing", <actuallyadditions:item_growth_ring>, [[<minecraft:wheat_seeds>, <actuallyadditions:item_crystal_empowered:5>, <minecraft:wheat_seeds>], [<actuallyadditions:item_crystal_empowered:5>, <astralsorcery:itemcoloredlens:2>, <actuallyadditions:item_crystal_empowered:5>], [<minecraft:wheat_seeds>, <actuallyadditions:item_crystal_empowered:5>, <minecraft:wheat_seeds>]]);

//Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);
recipes.addShaped("CTEmpowerer", <actuallyadditions:block_empowerer>, [[null, <actuallyadditions:item_crystal:0>, null], [null, <actuallyadditions:item_battery_double>, null], [<enderio:item_material:1>, <actuallyadditions:block_display_stand>, <enderio:item_material:1>]]);

//Farmer
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShaped("CTFarmer", <actuallyadditions:block_farmer>, [[<actuallyadditions:block_crystal:5>, <minecraft:wheat_seeds>, <actuallyadditions:block_crystal:5>], [<minecraft:wheat_seeds>, <techreborn:machine_casing:1>, <minecraft:wheat_seeds>], [<actuallyadditions:block_crystal:5>, <minecraft:wheat_seeds>, <actuallyadditions:block_crystal:5>]]);

//Remove Drills
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:16>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:*>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_speed>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_speed_ii>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_speed_iii>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_silk_touch>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_fortune>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_fortune_ii>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_three_by_three>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_five_by_five>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_block_placing>);

//Disable Solar panel
mods.jei.JEI.removeAndHide(<actuallyadditions:block_furnace_solar>);

//Get rid of greenhouse glass
mods.jei.JEI.removeAndHide(<actuallyadditions:block_greenhouse_glass>);

//Disable Magnet Rings
mods.jei.JEI.removeAndHide(<actuallyadditions:magnet_ring_bauble>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_suction_ring>);

//Hide disabled torch
mods.jei.JEI.hide(<actuallyadditions:block_tiny_torch>);

//Disable coal generator in favor of tech reborn generator
mods.jei.JEI.removeAndHide(<actuallyadditions:block_coal_generator>);

//Disable some things
mods.jei.JEI.removeAndHide(<actuallyadditions:block_miner>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_giant_chest>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_giant_chest_medium>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_giant_chest_large>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_chest_to_crate_upgrade>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_small_to_medium_crate_upgrade>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_medium_to_large_crate_upgrade>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crate_keeper>);

mods.jei.JEI.removeAndHide(<actuallyadditions:block_breaker>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_directional_breaker>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_phantom_breaker>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_fluid_collector>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_placer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_phantom_placer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_fluid_placer>);


mods.jei.JEI.removeAndHide(<actuallyadditions:block_grinder>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_grinder_double>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_furnace_double>);

mods.jei.JEI.removeAndHide(<actuallyadditions:item_wings_of_the_bats>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crafter_on_a_stick>);
mods.jei.JEI.hide(<actuallyadditions:item_worm>);
mods.jei.JEI.hide(<actuallyadditions:item_misc:15>);
mods.jei.JEI.hide(<actuallyadditions:block_black_lotus>);


mods.jei.JEI.hide(<actuallyadditions:block_crystal_cluster_redstone>);
mods.jei.JEI.hide(<actuallyadditions:block_crystal_cluster_lapis>);
mods.jei.JEI.hide(<actuallyadditions:block_crystal_cluster_diamond>);
mods.jei.JEI.hide(<actuallyadditions:block_crystal_cluster_coal>);
mods.jei.JEI.hide(<actuallyadditions:block_crystal_cluster_emerald>);
mods.jei.JEI.hide(<actuallyadditions:block_crystal_cluster_iron>);

mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:5>);