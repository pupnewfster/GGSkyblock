#modloaded enderio

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



mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_helmet>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_chestplate>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_leggings>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_boots>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_sword>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_pickaxe>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_axe>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_bow>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_shears>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_crook>);
mods.jei.JEI.removeAndHide(<enderio:item_end_steel_helmet>);
mods.jei.JEI.removeAndHide(<enderio:item_end_steel_chestplate>);
mods.jei.JEI.removeAndHide(<enderio:item_end_steel_leggings>);
mods.jei.JEI.removeAndHide(<enderio:item_end_steel_boots>);
mods.jei.JEI.removeAndHide(<enderio:item_end_steel_sword>);
mods.jei.JEI.removeAndHide(<enderio:item_end_steel_pickaxe>);
mods.jei.JEI.removeAndHide(<enderio:item_end_steel_axe>);
mods.jei.JEI.removeAndHide(<enderio:item_end_steel_bow>);

mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_sword>);
mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_pickaxe>);
mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_axe>);
mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_helmet>);
mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_boots>);
mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_chestplate>);
mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_leggings>);

mods.jei.JEI.removeAndHide(<enderio:block_transceiver>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:1>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:2>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:3>);
mods.jei.JEI.removeAndHide(<enderio:block_killer_joe>);

mods.jei.JEI.removeAndHide(<enderio:block_confusion_charge>);
mods.jei.JEI.removeAndHide(<enderio:block_concussion_charge>);
mods.jei.JEI.removeAndHide(<enderio:block_ender_charge>);


//Remove decoration items
mods.jei.JEI.removeAndHide(<enderio:block_decoration1>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:1>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:2>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:3>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:4>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:5>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:6>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:7>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:8>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:9>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:10>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:11>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:12>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:13>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:14>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration1:15>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:1>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:2>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:3>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:4>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:5>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:6>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:7>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:8>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:9>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:10>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:11>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:12>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:13>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:14>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration2:15>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration3>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration3:1>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration3:2>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration3:3>);
mods.jei.JEI.removeAndHide(<enderio:block_decoration3:4>);