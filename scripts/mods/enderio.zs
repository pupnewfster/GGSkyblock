import mods.jei.JEI;
import mods.enderio.AlloySmelter;

//Simple Machine Chassis, Force steel to force tech reborn blast furnace
recipes.remove(<enderio:item_material>);
recipes.addShaped("CTSimpleChassis", <enderio:item_material>, [[<minecraft:iron_bars>, <ore:ingotSteel>, <minecraft:iron_bars>], [<ore:ingotSteel>, <enderio:item_material:20>, <ore:ingotSteel>], [<minecraft:iron_bars>, <ore:ingotSteel>, <minecraft:iron_bars>]]);

//Enhanced Machine Chassis
recipes.remove(<enderio:item_material:66>);
recipes.addShaped("CTEnhancedChassis", <enderio:item_material:66>, [[<enderio:block_end_iron_bars>, <enderio:item_material:53>, <enderio:block_end_iron_bars>], [<enderio:item_alloy_ingot:8>, <techreborn:machine_casing:1>, <enderio:item_alloy_ingot:8>], [<enderio:block_end_iron_bars>, <enderio:item_material:53>, <enderio:block_end_iron_bars>]]);

//Enhanced Soulless Machine Chassis
recipes.remove(<enderio:item_material:55>);
recipes.addShaped("CTSoullessChassis", <enderio:item_material:55>, [[<enderio:block_industrial_insulation>, <enderio:item_material:56>, <enderio:block_industrial_insulation>], [<enderio:block_industrial_insulation>, <techreborn:machine_casing:2>, <enderio:block_industrial_insulation>], [<enderio:block_industrial_insulation>, <enderio:item_material:56>, <enderio:block_industrial_insulation>]]);

recipes.remove(<enderio:block_travel_anchor>);
recipes.addShaped("CTTravelAnchor", <enderio:block_travel_anchor>, [[<ore:ingotSteel>, <mekanism:teleportationcore>, <ore:ingotSteel>], [<enderio:item_material:4>, <enderio:item_material:14>, <enderio:item_material:4>], [<ore:ingotSteel>, <mekanism:teleportationcore>, <ore:ingotSteel>]]);

recipes.remove(<enderio:item_travel_staff>);
recipes.addShapedMirrored("CTTravelStaff", <enderio:item_travel_staff>, [[null, null, <enderio:item_material:16>], [null, <enderio:item_material:71>, null], [<enderio:block_travel_anchor>, null, null]]);

recipes.remove(<enderio:item_rod_of_return>);
recipes.addShapedMirrored("CTRodOfReturn", <enderio:item_rod_of_return>, [[null, <enderio:item_material:14>, <enderio:item_material:16>], [null, <enderio:item_material:71>, <enderio:item_material:14>], [<enderio:block_tele_pad>, null, null]]);

//Fix Missing pink slime
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:4>, [<enderio:item_alloy_ingot:5>, <tconstruct:edible:2>], 25000, 0.5);

AlloySmelter.removeRecipe(<enderio:item_material:3>);

JEI.removeAndHide(<enderio:item_material:38>);


JEI.removeAndHide(<enderio:item_dark_steel_helmet>);
JEI.removeAndHide(<enderio:item_dark_steel_chestplate>);
JEI.removeAndHide(<enderio:item_dark_steel_leggings>);
JEI.removeAndHide(<enderio:item_dark_steel_boots>);
JEI.removeAndHide(<enderio:item_dark_steel_sword>);
JEI.removeAndHide(<enderio:item_dark_steel_pickaxe>);
JEI.removeAndHide(<enderio:item_dark_steel_axe>);
JEI.removeAndHide(<enderio:item_dark_steel_bow>);
JEI.removeAndHide(<enderio:item_dark_steel_shears>);
JEI.removeAndHide(<enderio:item_dark_steel_crook>);
JEI.removeAndHide(<enderio:item_end_steel_helmet>);
JEI.removeAndHide(<enderio:item_end_steel_chestplate>);
JEI.removeAndHide(<enderio:item_end_steel_leggings>);
JEI.removeAndHide(<enderio:item_end_steel_boots>);
JEI.removeAndHide(<enderio:item_end_steel_sword>);
JEI.removeAndHide(<enderio:item_end_steel_pickaxe>);
JEI.removeAndHide(<enderio:item_end_steel_axe>);
JEI.removeAndHide(<enderio:item_end_steel_bow>);

JEI.removeAndHide(<enderio:item_material:6>);
JEI.removeAndHide(<enderio:item_material:7>);

JEI.removeAndHide(<enderio:item_stellar_alloy_sword>);
JEI.removeAndHide(<enderio:item_stellar_alloy_pickaxe>);
JEI.removeAndHide(<enderio:item_stellar_alloy_axe>);
JEI.removeAndHide(<enderio:item_stellar_alloy_helmet>);
JEI.removeAndHide(<enderio:item_stellar_alloy_boots>);
JEI.removeAndHide(<enderio:item_stellar_alloy_chestplate>);
JEI.removeAndHide(<enderio:item_stellar_alloy_leggings>);

JEI.removeAndHide(<enderio:block_transceiver>);
JEI.removeAndHide(<enderio:block_solar_panel>);
JEI.removeAndHide(<enderio:block_solar_panel:1>);
JEI.removeAndHide(<enderio:block_solar_panel:2>);
JEI.removeAndHide(<enderio:block_solar_panel:3>);
JEI.removeAndHide(<enderio:block_killer_joe>);

JEI.removeAndHide(<enderio:block_confusion_charge>);
JEI.removeAndHide(<enderio:block_concussion_charge>);
JEI.removeAndHide(<enderio:block_ender_charge>);


//Remove decoration items
JEI.removeAndHide(<enderio:block_decoration1>);
JEI.removeAndHide(<enderio:block_decoration1:1>);
JEI.removeAndHide(<enderio:block_decoration1:2>);
JEI.removeAndHide(<enderio:block_decoration1:3>);
JEI.removeAndHide(<enderio:block_decoration1:4>);
JEI.removeAndHide(<enderio:block_decoration1:5>);
JEI.removeAndHide(<enderio:block_decoration1:6>);
JEI.removeAndHide(<enderio:block_decoration1:7>);
JEI.removeAndHide(<enderio:block_decoration1:8>);
JEI.removeAndHide(<enderio:block_decoration1:9>);
JEI.removeAndHide(<enderio:block_decoration1:10>);
JEI.removeAndHide(<enderio:block_decoration1:11>);
JEI.removeAndHide(<enderio:block_decoration1:12>);
JEI.removeAndHide(<enderio:block_decoration1:13>);
JEI.removeAndHide(<enderio:block_decoration1:14>);
JEI.removeAndHide(<enderio:block_decoration1:15>);
JEI.removeAndHide(<enderio:block_decoration2>);
JEI.removeAndHide(<enderio:block_decoration2:1>);
JEI.removeAndHide(<enderio:block_decoration2:2>);
JEI.removeAndHide(<enderio:block_decoration2:3>);
JEI.removeAndHide(<enderio:block_decoration2:4>);
JEI.removeAndHide(<enderio:block_decoration2:5>);
JEI.removeAndHide(<enderio:block_decoration2:6>);
JEI.removeAndHide(<enderio:block_decoration2:7>);
JEI.removeAndHide(<enderio:block_decoration2:8>);
JEI.removeAndHide(<enderio:block_decoration2:9>);
JEI.removeAndHide(<enderio:block_decoration2:10>);
JEI.removeAndHide(<enderio:block_decoration2:11>);
JEI.removeAndHide(<enderio:block_decoration2:12>);
JEI.removeAndHide(<enderio:block_decoration2:13>);
JEI.removeAndHide(<enderio:block_decoration2:14>);
JEI.removeAndHide(<enderio:block_decoration2:15>);
JEI.removeAndHide(<enderio:block_decoration3>);
JEI.removeAndHide(<enderio:block_decoration3:1>);
JEI.removeAndHide(<enderio:block_decoration3:2>);
JEI.removeAndHide(<enderio:block_decoration3:3>);
JEI.removeAndHide(<enderio:block_decoration3:4>);