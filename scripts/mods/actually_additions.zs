import crafttweaker.item.IItemStack;
import mods.jei.JEI;

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
JEI.removeAndHide(<actuallyadditions:block_xp_solidifier>);
JEI.removeAndHide(<actuallyadditions:block_smiley_cloud>);


//Ring of Growth
recipes.remove(<actuallyadditions:item_growth_ring>);
recipes.addShaped("CTGrowthRing", <actuallyadditions:item_growth_ring>, [[<minecraft:wheat_seeds>, <actuallyadditions:item_crystal_empowered:5>, <minecraft:wheat_seeds>], [<actuallyadditions:item_crystal_empowered:5>, <astralsorcery:itemcoloredlens:2>, <actuallyadditions:item_crystal_empowered:5>], [<minecraft:wheat_seeds>, <actuallyadditions:item_crystal_empowered:5>, <minecraft:wheat_seeds>]]);

//Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);
recipes.addShaped("CTEmpowerer", <actuallyadditions:block_empowerer>, [[null, <actuallyadditions:item_crystal:0>, null], [null, <actuallyadditions:item_battery_double>, null], [<enderio:item_material:1>, <actuallyadditions:block_display_stand>, <enderio:item_material:1>]]);

//Farmer
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShaped("CTFarmer", <actuallyadditions:block_farmer>, [[<actuallyadditions:block_crystal:5>, <minecraft:wheat_seeds>, <actuallyadditions:block_crystal:5>], [<minecraft:wheat_seeds>, <techreborn:machine_casing:1>, <minecraft:wheat_seeds>], [<actuallyadditions:block_crystal:5>, <minecraft:wheat_seeds>, <actuallyadditions:block_crystal:5>]]);

//Hide duplicate charcoal block
JEI.removeAndHide(<actuallyadditions:block_misc:5>);

//Remove Drills
JEI.removeAndHide(<actuallyadditions:item_misc:16>);
JEI.removeAndHide(<actuallyadditions:item_drill:*>);
JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_speed>);
JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_speed_ii>);
JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_speed_iii>);
JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_silk_touch>);
JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_fortune>);
JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_fortune_ii>);
JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_three_by_three>);
JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_five_by_five>);
JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_block_placing>);

//Disable Solar panel
JEI.removeAndHide(<actuallyadditions:block_furnace_solar>);

//Get rid of greenhouse glass
JEI.removeAndHide(<actuallyadditions:block_greenhouse_glass>);

//Disable Magnet Rings
JEI.removeAndHide(<actuallyadditions:magnet_ring_bauble>);
JEI.removeAndHide(<actuallyadditions:item_suction_ring>);

//Disable coal generator in favor of tech reborn generator
JEI.removeAndHide(<actuallyadditions:block_coal_generator>);

//Disable some things
JEI.removeAndHide(<actuallyadditions:block_miner>);
JEI.removeAndHide(<actuallyadditions:block_giant_chest>);
JEI.removeAndHide(<actuallyadditions:block_giant_chest_medium>);
JEI.removeAndHide(<actuallyadditions:block_giant_chest_large>);
JEI.removeAndHide(<actuallyadditions:item_chest_to_crate_upgrade>);
JEI.removeAndHide(<actuallyadditions:item_small_to_medium_crate_upgrade>);
JEI.removeAndHide(<actuallyadditions:item_medium_to_large_crate_upgrade>);
JEI.removeAndHide(<actuallyadditions:item_crate_keeper>);

JEI.removeAndHide(<actuallyadditions:block_breaker>);
JEI.removeAndHide(<actuallyadditions:block_directional_breaker>);
JEI.removeAndHide(<actuallyadditions:block_phantom_breaker>);
JEI.removeAndHide(<actuallyadditions:block_fluid_collector>);
JEI.removeAndHide(<actuallyadditions:block_placer>);
JEI.removeAndHide(<actuallyadditions:block_phantom_placer>);
JEI.removeAndHide(<actuallyadditions:block_fluid_placer>);


JEI.removeAndHide(<actuallyadditions:block_grinder>);
JEI.removeAndHide(<actuallyadditions:block_grinder_double>);
JEI.removeAndHide(<actuallyadditions:block_furnace_double>);

JEI.removeAndHide(<actuallyadditions:item_wings_of_the_bats>);
JEI.removeAndHide(<actuallyadditions:item_crafter_on_a_stick>);

JEI.removeAndHide(<actuallyadditions:item_crystal_shard>);
JEI.removeAndHide(<actuallyadditions:item_crystal_shard:1>);
JEI.removeAndHide(<actuallyadditions:item_crystal_shard:2>);
JEI.removeAndHide(<actuallyadditions:item_crystal_shard:3>);
JEI.removeAndHide(<actuallyadditions:item_crystal_shard:4>);
JEI.removeAndHide(<actuallyadditions:item_crystal_shard:5>);