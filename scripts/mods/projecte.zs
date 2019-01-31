#priority 800

import mods.projecte.WorldTransmutation;
import mods.projecte.EntityRandomizer;

//Remove all philo stone smelting recipes
recipes.removeByRegex("(projecte:philstone_smelt_).*");


//Make Philo Stone easier as nether is locked and transmutation is staged
recipes.remove(<projecte:item.pe_philosophers_stone>);
recipes.addShaped("CTPhiloStone", <projecte:item.pe_philosophers_stone>, [[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust>], [<projecte:item.pe_covalence_dust:1>, <ore:sonarStableStone>, <projecte:item.pe_covalence_dust:1>], [<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust>]]);
recipes.addShaped("CTPhiloStone2", <projecte:item.pe_philosophers_stone>, [[<projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>], [<projecte:item.pe_covalence_dust>, <ore:sonarStableStone>, <projecte:item.pe_covalence_dust>], [<projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>]]);

//Talisman of repair
recipes.remove(<projecte:item.pe_repair_talisman>);
recipes.addShapedMirrored("CTRepairTalisman", <projecte:item.pe_repair_talisman>, [[<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust>], [<projecte:item.pe_matter>, <actuallyadditions:block_item_repairer>, <projecte:item.pe_matter>], [<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>]]);

//Harvest Goddess Band
recipes.remove(<projecte:item.pe_harvest_god>);
recipes.addShaped("CTHarvestBand", <projecte:item.pe_harvest_god>, [[<ore:treeSapling>, <minecraft:red_flower>, <ore:treeSapling>], [<projecte:item.pe_matter>, <actuallyadditions:item_growth_ring>, <projecte:item.pe_matter>], [<ore:treeSapling>, <minecraft:red_flower>, <ore:treeSapling>]]);


//Alchemical Chest
recipes.remove(<projecte:alchemical_chest>);
recipes.addShaped("CTAlchemicalChest", <projecte:alchemical_chest>, [[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>], [<ore:stone>, <appliedenergistics2:material:9>, <ore:stone>], [<minecraft:iron_ingot>, <metalchests:metal_chest:4>, <minecraft:iron_ingot>]]);

//Alchemical Coal
recipes.remove(<projecte:item.pe_fuel>);
recipes.addShapeless("CTAlchemical1", <projecte:item.pe_fuel>, [<projecte:item.pe_philosophers_stone>, <ore:blockCoal>, <ore:blockCoal>, <ore:blockCoal>, <ore:blockCoal>]);
recipes.addShapeless("CTAlchemical2", <projecte:item.pe_fuel> * 9, [<projecte:fuel_block>]);

//Mobius fuel
recipes.remove(<projecte:item.pe_fuel:1>);
recipes.addShapeless("CTMobius1", <projecte:item.pe_fuel:1>, [<projecte:item.pe_philosophers_stone>, <projecte:fuel_block>, <projecte:fuel_block>, <projecte:fuel_block>, <projecte:fuel_block>]);
recipes.addShapeless("CTMobius2", <projecte:item.pe_fuel:1> * 9, [<projecte:fuel_block:1>]);

//Aeternalis fuel
recipes.remove(<projecte:item.pe_fuel:2>);
recipes.addShapeless("CTAeternalis1", <projecte:item.pe_fuel:2>, [<projecte:item.pe_philosophers_stone>, <projecte:fuel_block:1>, <projecte:fuel_block:1>, <projecte:fuel_block:1>, <projecte:fuel_block:1>]);
recipes.addShapeless("CTAeternalis2", <projecte:item.pe_fuel:2> * 9, [<projecte:fuel_block:2>]);

//Coal from alchemical Coal
recipes.removeShapeless(<minecraft:coal> * 4, [<projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel>]);
recipes.addShapeless("CTACCoal", <minecraft:coal_block> * 4, [<projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel>]);

//Fuel Blocks
recipes.addShapeless("CTAlchemicalBlock", <projecte:fuel_block> * 4, [<projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel:1>]);
recipes.addShapeless("CTMobiusBlock", <projecte:fuel_block:1> * 4, [<projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel:2>]);

//Base klein star
recipes.remove(<projecte:item.pe_klein_star>);
recipes.addShaped("CTKleinStar", <projecte:item.pe_klein_star>, [[<projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>], [<projecte:item.pe_fuel:2>, <ore:blockDiamond>, <projecte:item.pe_fuel:2>], [<projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>]]);

//Collectors
recipes.remove(<projecte:collector_mk1>);
recipes.addShaped("CTCollectorMk1", <projecte:collector_mk1>, [[<mysticalagriculture:tin_essence>, <solarflux:solar_panel_3>, <mysticalagriculture:tin_essence>], [<mekanism:basicblock:4>, <mysticalagriculture:tin_essence>, <mekanism:basicblock:4>], [<mekanism:basicblock:4>, <mekanism:basicblock:4>, <mekanism:basicblock:4>]]);

recipes.remove(<projecte:collector_mk2>);
recipes.addShaped("CTCollectorMk2", <projecte:collector_mk2>, [[<projecte:collector_mk1>, <projecte:matter_block>, <projecte:collector_mk1>], [<mekanism:basicblock:4>, <projecte:collector_mk1>, <mekanism:basicblock:4>], [<mekanism:basicblock:4>, <mekanism:basicblock:4>, <mekanism:basicblock:4>]]);

recipes.remove(<projecte:collector_mk3>);
recipes.addShaped("CTCollectorMk3", <projecte:collector_mk3>, [[<projecte:collector_mk2>, <projecte:matter_block:1>, <projecte:collector_mk2>], [<mekanism:basicblock:4>, <projecte:collector_mk2>, <mekanism:basicblock:4>], [<mekanism:basicblock:4>, <mekanism:basicblock:4>, <mekanism:basicblock:4>]]);

recipes.remove(<auxiliumequivalence:collector_mk4>);
recipes.addShaped("CTCollectorMk4", <auxiliumequivalence:collector_mk4>, [[<projecte:collector_mk3>, <auxiliumequivalence:matter_block>, <projecte:collector_mk3>], [<mekanism:basicblock:4>, <projecte:collector_mk3>, <mekanism:basicblock:4>], [<mekanism:basicblock:4>, <mekanism:basicblock:4>, <mekanism:basicblock:4>]]);

recipes.remove(<auxiliumequivalence:collector_mk5>);
recipes.addShaped("CTCollectorMk5", <auxiliumequivalence:collector_mk5>, [[<auxiliumequivalence:collector_mk4>, <auxiliumequivalence:matter_block:1>, <auxiliumequivalence:collector_mk4>], [<mekanism:basicblock:4>, <auxiliumequivalence:collector_mk4>, <mekanism:basicblock:4>], [<mekanism:basicblock:4>, <mekanism:basicblock:4>, <mekanism:basicblock:4>]]);

recipes.remove(<auxiliumequivalence:collector_mk6>);
recipes.addShaped("CTCollectorMk6", <auxiliumequivalence:collector_mk6>, [[<auxiliumequivalence:collector_mk5>, <auxiliumequivalence:matter_block:2>, <auxiliumequivalence:collector_mk5>], [<mekanism:basicblock:4>, <auxiliumequivalence:collector_mk5>, <mekanism:basicblock:4>], [<mekanism:basicblock:4>, <mekanism:basicblock:4>, <mekanism:basicblock:4>]]);

recipes.remove(<auxiliumequivalence:collector_mk7>);
recipes.addShaped("CTCollectorMk7", <auxiliumequivalence:collector_mk7>, [[<auxiliumequivalence:collector_mk6>, <auxiliumequivalence:matter_block:3>, <auxiliumequivalence:collector_mk6>], [<mekanism:basicblock:4>, <auxiliumequivalence:collector_mk6>, <mekanism:basicblock:4>], [<mekanism:basicblock:4>, <mekanism:basicblock:4>, <mekanism:basicblock:4>]]);


//Relays
recipes.remove(<projecte:relay_mk1>);
recipes.addShaped("CTRelayMk1", <projecte:relay_mk1>, [[<actuallyadditions:block_laser_relay_extreme>, <projecte:fuel_block:2>, <actuallyadditions:block_laser_relay_extreme>], [<mekanism:basicblock:2>, <actuallyadditions:block_laser_relay_extreme>, <mekanism:basicblock:2>], [<mekanism:basicblock:2>, <mekanism:basicblock:2>, <mekanism:basicblock:2>]]);

recipes.remove(<projecte:relay_mk2>);
recipes.addShaped("CTRelayMk2", <projecte:relay_mk2>, [[<projecte:relay_mk1>, <projecte:matter_block>, <projecte:relay_mk1>], [<mekanism:basicblock:2>, <projecte:relay_mk1>, <mekanism:basicblock:2>], [<mekanism:basicblock:2>, <mekanism:basicblock:2>, <mekanism:basicblock:2>]]);

recipes.remove(<projecte:relay_mk3>);
recipes.addShaped("CTRelayMk3", <projecte:relay_mk3>, [[<projecte:relay_mk2>, <projecte:matter_block:1>, <projecte:relay_mk2>], [<mekanism:basicblock:2>, <projecte:relay_mk2>, <mekanism:basicblock:2>], [<mekanism:basicblock:2>, <mekanism:basicblock:2>, <mekanism:basicblock:2>]]);

recipes.remove(<auxiliumequivalence:relay_mk4>);
recipes.addShaped("CTRelayMk4", <auxiliumequivalence:relay_mk4>, [[<projecte:relay_mk3>, <auxiliumequivalence:matter_block>, <projecte:relay_mk3>], [<mekanism:basicblock:2>, <projecte:relay_mk3>, <mekanism:basicblock:2>], [<mekanism:basicblock:2>, <mekanism:basicblock:2>, <mekanism:basicblock:2>]]);

recipes.remove(<auxiliumequivalence:relay_mk5>);
recipes.addShaped("CTRelayMk5", <auxiliumequivalence:relay_mk5>, [[<auxiliumequivalence:relay_mk4>, <auxiliumequivalence:matter_block:1>, <auxiliumequivalence:relay_mk4>], [<mekanism:basicblock:2>, <auxiliumequivalence:relay_mk4>, <mekanism:basicblock:2>], [<mekanism:basicblock:2>, <mekanism:basicblock:2>, <mekanism:basicblock:2>]]);

recipes.remove(<auxiliumequivalence:relay_mk6>);
recipes.addShaped("CTRelayMk6", <auxiliumequivalence:relay_mk6>, [[<auxiliumequivalence:relay_mk5>, <auxiliumequivalence:matter_block:2>, <auxiliumequivalence:relay_mk5>], [<mekanism:basicblock:2>, <auxiliumequivalence:relay_mk5>, <mekanism:basicblock:2>], [<mekanism:basicblock:2>, <mekanism:basicblock:2>, <mekanism:basicblock:2>]]);

recipes.remove(<auxiliumequivalence:relay_mk7>);
recipes.addShaped("CTRelayMk7", <auxiliumequivalence:relay_mk7>, [[<auxiliumequivalence:relay_mk6>, <auxiliumequivalence:matter_block:3>, <auxiliumequivalence:relay_mk6>], [<mekanism:basicblock:2>, <auxiliumequivalence:relay_mk6>, <mekanism:basicblock:2>], [<mekanism:basicblock:2>, <mekanism:basicblock:2>, <mekanism:basicblock:2>]]);


//Make armors take blocks instead of base matter types (Thanks to longs they still will be transmutable)

recipes.remove(<projecte:item.pe_dm_armor_3>);
recipes.addShaped("CTDarkHelmet", <projecte:item.pe_dm_armor_3>, [[<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>], [<projecte:matter_block>, null, <projecte:matter_block>]]);

recipes.remove(<projecte:item.pe_dm_armor_2>);
recipes.addShaped("CTDarkChest", <projecte:item.pe_dm_armor_2>, [[<projecte:matter_block>, null, <projecte:matter_block>], [<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>], [<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>]]);

recipes.remove(<projecte:item.pe_dm_armor_1>);
recipes.addShaped("CTDarkLeggings", <projecte:item.pe_dm_armor_1>, [[<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>], [<projecte:matter_block>, null, <projecte:matter_block>], [<projecte:matter_block>, null, <projecte:matter_block>]]);

recipes.remove(<projecte:item.pe_dm_armor_0>);
recipes.addShaped("CTDarkBoots", <projecte:item.pe_dm_armor_0>, [[<projecte:matter_block>, null, <projecte:matter_block>], [<projecte:matter_block>, null, <projecte:matter_block>]]);


recipes.remove(<projecte:item.pe_rm_armor_3>);
recipes.addShaped("CTRedHelmet", <projecte:item.pe_rm_armor_3>, [[<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:item.pe_dm_armor_3>, <projecte:matter_block:1>]]);

recipes.remove(<projecte:item.pe_rm_armor_2>);
recipes.addShaped("CTRedChest", <projecte:item.pe_rm_armor_2>, [[<projecte:matter_block:1>, <projecte:item.pe_dm_armor_2>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>]]);

recipes.remove(<projecte:item.pe_rm_armor_1>);
recipes.addShaped("CTRedLeggings", <projecte:item.pe_rm_armor_1>, [[<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:item.pe_dm_armor_1>, <projecte:matter_block:1>], [<projecte:matter_block:1>, null, <projecte:matter_block:1>]]);

recipes.remove(<projecte:item.pe_rm_armor_0>);
recipes.addShaped("CTRedBoots", <projecte:item.pe_rm_armor_0>, [[<projecte:matter_block:1>, <projecte:item.pe_dm_armor_0>, <projecte:matter_block:1>], [<projecte:matter_block:1>, null, <projecte:matter_block:1>]]);


//Make gem armor require the full klein star like in ee2
recipes.remove(<projecte:item.pe_gem_armor_3>);
recipes.addShapeless("CTGemHelmet", <projecte:item.pe_gem_armor_3>, [<projecte:item.pe_rm_armor_3>, <projecte:item.pe_klein_star:5>.withTag({StoredEMC: 5.12E7}), <projecte:item.pe_evertide_amulet>, <projecte:item.pe_soul_stone>, <auxiliumequivalence:matter>]);

recipes.remove(<projecte:item.pe_gem_armor_2>);
recipes.addShapeless("CTGemChest", <projecte:item.pe_gem_armor_2>, [<projecte:item.pe_rm_armor_2>, <projecte:item.pe_klein_star:5>.withTag({StoredEMC: 5.12E7}), <projecte:item.pe_volcanite_amulet>, <projecte:item.pe_body_stone>, <auxiliumequivalence:matter>]);

recipes.remove(<projecte:item.pe_gem_armor_1>);
recipes.addShapeless("CTGemLeggings", <projecte:item.pe_gem_armor_1>, [<projecte:item.pe_rm_armor_1>, <projecte:item.pe_klein_star:5>.withTag({StoredEMC: 5.12E7}), <projecte:item.pe_black_hole>, <projecte:item.pe_time_watch>, <auxiliumequivalence:matter>]);

recipes.remove(<projecte:item.pe_gem_armor_0>);
recipes.addShapeless("CTGemBoots", <projecte:item.pe_gem_armor_0>, [<projecte:item.pe_rm_armor_0>, <projecte:item.pe_klein_star:5>.withTag({StoredEMC: 5.12E7}), <projecte:item.pe_swrg>, <projecte:item.pe_swrg>, <auxiliumequivalence:matter>]);


//Make dark matter require aeternalis blocks
recipes.remove(<projecte:item.pe_matter>);
recipes.addShaped("CTDarkMatter1", <projecte:item.pe_matter>, [[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <ore:blockDiamond>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>]]);
recipes.addShapeless("CTDarkMatter2", <projecte:item.pe_matter> * 4, [<projecte:matter_block>]);


//Make red matter require blocks
recipes.remove(<projecte:item.pe_matter:1>);
recipes.addShaped("CTRedMatter1", <projecte:item.pe_matter:1>, [[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>], [<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>], [<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>]]);
recipes.addShaped("CTRedMatter2", <projecte:item.pe_matter:1>, [[<projecte:fuel_block:2>, <projecte:matter_block>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <projecte:matter_block>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <projecte:matter_block>, <projecte:fuel_block:2>]]);
recipes.addShapeless("CTRedMatter3", <projecte:item.pe_matter:1> * 4, [<projecte:matter_block:1>]);

//Swiftwolf rending gale
recipes.remove(<projecte:item.pe_swrg>);
recipes.addShaped("CTSwiftwolf", <projecte:item.pe_swrg>, [[<projecte:matter_block>, <minecraft:feather>, <projecte:matter_block>], [<minecraft:feather>, <projecte:item.pe_ring_iron_band>, <minecraft:feather>], [<projecte:matter_block>, <minecraft:feather>, <projecte:matter_block>]]);

//Harder interdiction torches
recipes.remove(<projecte:interdiction_torch>);
recipes.addShaped("CTInterdictionTorch", <projecte:interdiction_torch>, [[<minecraft:redstone_torch>, <projecte:item.pe_fuel:2>, <minecraft:redstone_torch>], [<ore:gemDiamond>, <projecte:item.pe_philosophers_stone>, <ore:gemDiamond>], [<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>]]);



//Remove Philo stone conversion recipes
recipes.removeByRecipeName("projecte:conversions/emerald_to_diamond");
recipes.removeByRecipeName("projecte:conversions/iron_to_ender_pearl");
recipes.removeByRecipeName("projecte:conversions/alchemical_coal_to_coal");
recipes.removeByRecipeName("projecte:conversions/diamond_to_emerald");
recipes.removeByRecipeName("projecte:conversions/gold_to_diamond");
recipes.removeByRecipeName("projecte:conversions/iron_to_gold");
recipes.removeByRecipeName("projecte:conversions/gold_to_iron");
recipes.removeByRecipeName("projecte:conversions/diamond_to_iron");

mods.jei.JEI.hide(<projecte:item.pe_manual>);



//Orange Matter
recipes.remove(<auxiliumequivalence:matter>);
recipes.addShaped("CTOrangeMatter1", <auxiliumequivalence:matter>, [[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>], [<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>], [<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>]]);
recipes.addShaped("CTOrangeMatter2", <auxiliumequivalence:matter>, [[<projecte:fuel_block:2>, <projecte:matter_block:1>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <projecte:matter_block:1>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <projecte:matter_block:1>, <projecte:fuel_block:2>]]);
recipes.addShapeless("CTOrangeMatter3", <auxiliumequivalence:matter> * 4, [<auxiliumequivalence:matter_block>]);

//Yellow Matter
recipes.remove(<auxiliumequivalence:matter:1>);
recipes.addShaped("CTYellowMatter1", <auxiliumequivalence:matter:1>, [[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>], [<auxiliumequivalence:matter_block>, <auxiliumequivalence:matter_block>, <auxiliumequivalence:matter_block>], [<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>]]);
recipes.addShaped("CTYellowMatter2", <auxiliumequivalence:matter:1>, [[<projecte:fuel_block:2>, <auxiliumequivalence:matter_block>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <auxiliumequivalence:matter_block>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <auxiliumequivalence:matter_block>, <projecte:fuel_block:2>]]);
recipes.addShapeless("CTYellowMatter3", <auxiliumequivalence:matter:1> * 4, [<auxiliumequivalence:matter_block:1>]);

//Green Matter
recipes.remove(<auxiliumequivalence:matter:2>);
recipes.addShaped("CTGreenMatter1", <auxiliumequivalence:matter:2>, [[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>], [<auxiliumequivalence:matter_block:1>, <auxiliumequivalence:matter_block:1>, <auxiliumequivalence:matter_block:1>], [<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>]]);
recipes.addShaped("CTGreenMatter2", <auxiliumequivalence:matter:2>, [[<projecte:fuel_block:2>, <auxiliumequivalence:matter_block:1>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <auxiliumequivalence:matter_block:1>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <auxiliumequivalence:matter_block:1>, <projecte:fuel_block:2>]]);
recipes.addShapeless("CTGreenMatter3", <auxiliumequivalence:matter:2> * 4, [<auxiliumequivalence:matter_block:2>]);

//Blue Matter
recipes.remove(<auxiliumequivalence:matter:3>);
recipes.addShaped("CTBlueMatter1", <auxiliumequivalence:matter:3>, [[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>], [<auxiliumequivalence:matter_block:2>, <auxiliumequivalence:matter_block:2>, <auxiliumequivalence:matter_block:2>], [<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>]]);
recipes.addShaped("CTBlueMatter2", <auxiliumequivalence:matter:3>, [[<projecte:fuel_block:2>, <auxiliumequivalence:matter_block:2>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <auxiliumequivalence:matter_block:2>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <auxiliumequivalence:matter_block:2>, <projecte:fuel_block:2>]]);
recipes.addShapeless("CTBlueMatter3", <auxiliumequivalence:matter:3> * 4, [<auxiliumequivalence:matter_block:3>]);

//Rainbow Matter
recipes.remove(<auxiliumequivalence:matter:4>);
recipes.addShaped("CTRainbowMatter1", <auxiliumequivalence:matter:4>, [[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>], [<auxiliumequivalence:matter_block:3>, <auxiliumequivalence:matter_block:3>, <auxiliumequivalence:matter_block:3>], [<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>]]);
recipes.addShaped("CTRainbowMatter2", <auxiliumequivalence:matter:4>, [[<projecte:fuel_block:2>, <auxiliumequivalence:matter_block:3>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <auxiliumequivalence:matter_block:3>, <projecte:fuel_block:2>], [<projecte:fuel_block:2>, <auxiliumequivalence:matter_block:3>, <projecte:fuel_block:2>]]);
recipes.addShapeless("CTRainbowMatter3", <auxiliumequivalence:matter:4> * 4, [<auxiliumequivalence:matter_block:4>]);


//Tome of knowledge
recipes.remove(<projecte:item.pe_tome>);
recipes.addShaped("CTKnowledgeTome", <projecte:item.pe_tome>, [[<projectex:final_star>, <projectex:final_star>, <projectex:final_star>], [<projectex:final_star>, <projectex:knowledge_sharing_book>, <projectex:final_star>], [<projectex:final_star>, <projectex:final_star>, <projectex:final_star>]]);


//Make other saplings accessible
WorldTransmutation.remove(<minecraft:sapling>, <minecraft:sapling:5>, <minecraft:sapling:4>);

WorldTransmutation.add(<techreborn:rubber_sapling>, <minecraft:sapling:5>, <minecraft:sapling:4>); //dark oak -> rubber, acacia
WorldTransmutation.add(<thaumcraft:sapling_greatwood>, <techreborn:rubber_sapling>, <minecraft:sapling:5>); //rubber -> greatwood, dark oak
WorldTransmutation.add(<thaumcraft:sapling_silverwood>, <thaumcraft:sapling_greatwood>, <techreborn:rubber_sapling>); //greatwood -> silverwood, rubber
WorldTransmutation.add(<minecraft:sapling:0>, <thaumcraft:sapling_silverwood>, <thaumcraft:sapling_greatwood>); //silverwood -> oak, greatwood


WorldTransmutation.remove(<blockstate:minecraft:lava>, <blockstate:minecraft:obsidian>);

EntityRandomizer.removePeaceful(<entity:minecraft:villager>);
EntityRandomizer.removeMob(<entity:minecraft:vex>);
EntityRandomizer.removeMob(<entity:minecraft:shulker>);