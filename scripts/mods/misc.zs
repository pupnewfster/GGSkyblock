//Flint and Steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless("CTFlintAndSteel", <minecraft:flint_and_steel>, [<minecraft:flint>, <ore:ingotSteel>]);

//Chunk Loaders
recipes.remove(<chickenchunks:chunk_loader>);
recipes.addShaped("CTChunkLoader", <chickenchunks:chunk_loader>, [[<mekanism:teleportationcore>, <actuallyadditions:block_misc:6>, <mekanism:teleportationcore>], [<ore:blockGold>, <ore:blockGold>, <ore:blockGold>], [<ore:blockGold>, <minecraft:enchanting_table>, <ore:blockGold>]]);

//Disable probe paper
mods.jei.JEI.removeAndHide(<theoneprobe:probenote>);


//Pebbles to cobble
recipes.addShapeless("CTPebbleToCobble", <minecraft:cobblestone>, [<contenttweaker:pebble>, <contenttweaker:pebble>, <contenttweaker:pebble>, <contenttweaker:pebble>]);

//Way to get clay that keeps emc value the same
recipes.addShaped("CTClay", <minecraft:clay_ball>, [[<ore:dirt>, <ore:cobblestone>, <ore:dirt>], [<ore:cobblestone>, <ore:plankWood>, <ore:cobblestone>], [<ore:dirt>, <ore:cobblestone>, <ore:dirt>]]);


//Drawer controller does not require diamond
recipes.remove(<storagedrawers:controller>);
recipes.addShaped("CTDrawerController", <storagedrawers:controller>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<minecraft:comparator>, <ore:drawerBasic>, <minecraft:comparator>], [<ore:stone>, <minecraft:iron_ingot>, <ore:stone>]]);