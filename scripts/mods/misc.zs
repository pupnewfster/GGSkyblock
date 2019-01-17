//Flint and Steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless("CTFlintAndSteel", <minecraft:flint_and_steel>, [<minecraft:flint>, <ore:ingotSteel>]);

//Chunk Loaders
recipes.remove(<chickenchunks:chunk_loader>);
recipes.addShaped("CTChunkLoader", <chickenchunks:chunk_loader>, [[<mekanism:teleportationcore>, <actuallyadditions:block_misc:6>, <mekanism:teleportationcore>], [<ore:blockGold>, <ore:blockGold>, <ore:blockGold>], [<ore:blockGold>, <minecraft:enchanting_table>, <ore:blockGold>]]);

//Disable probe paper
mods.jei.JEI.removeAndHide(<theoneprobe:probenote>);