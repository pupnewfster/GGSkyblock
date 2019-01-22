mods.jei.JEI.removeAndHide(<solarflux:blank_upgrade>);

//Mirror
recipes.remove(<solarflux:mirror>);
recipes.addShaped("CTMirror", <solarflux:mirror>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],[null, <ore:ingotSteel>, null]]);



//Make solar panels require tech stuff
recipes.remove(<solarflux:solar_panel_7>);
recipes.addShaped("CTSolar7", <solarflux:solar_panel_7> * 2, [[<solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>], [<solarflux:solar_panel_6>, <techreborn:machine_casing:2>, <solarflux:solar_panel_6>], [<solarflux:solar_panel_6>, <minecraft:dragon_breath>, <solarflux:solar_panel_6>]]);


recipes.remove(<solarflux:solar_panel_8>);
recipes.addShaped("CTSolar8", <solarflux:solar_panel_8> * 2, [[<solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>], [<solarflux:solar_panel_7>, <enderio:item_material:55>, <solarflux:solar_panel_7>], [<solarflux:solar_panel_7>, <minecraft:dragon_egg>, <solarflux:solar_panel_7>]]);