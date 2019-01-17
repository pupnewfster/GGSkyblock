//Make slab recipes allow for slabs to have EMC values
recipes.remove(<minecraft:stone_slab>);
recipes.addShaped("CTStoneSlab", <minecraft:stone_slab> * 3, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);

recipes.remove(<minecraft:stone_slab:3>);
recipes.addShaped("CTCobbleSlab", <minecraft:stone_slab:3> * 3, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);

recipes.remove(<minecraft:stone_slab:5>);
recipes.addShaped("CTStoneBrickSlab", <minecraft:stone_slab:5> * 3, [[<minecraft:stonebrick:*>, <minecraft:stonebrick:*>, <minecraft:stonebrick:*>]]);


recipes.remove(<botania:livingrock0slab>);
recipes.addShaped("CTLivingrockSlab", <botania:livingrock0slab> * 3, [[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);

recipes.remove(<botania:livingrock1slab>);
recipes.addShaped("CTLivingrockBrickSlab", <botania:livingrock1slab> * 3, [[<botania:livingrock:1>, <botania:livingrock:1>, <botania:livingrock:1>]]);