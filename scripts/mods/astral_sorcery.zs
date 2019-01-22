import mods.astralsorcery.LightTransmutation;

LightTransmutation.addTransmutation(<minecraft:concrete_powder:4>, <minecraft:glowstone>, 25);
LightTransmutation.addTransmutation(<jaopca:block_blockaquamarine>, <astralsorcery:blockcustomore>, 100);

recipes.addShaped("CTBlankConstellation", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {}}), [[<astralsorcery:itemcraftingcomponent>, <minecraft:paper>, <astralsorcery:itemcraftingcomponent>], [<minecraft:paper>, <minecraft:dye>, <minecraft:paper>], [<astralsorcery:itemcraftingcomponent>, <minecraft:paper>, <astralsorcery:itemcraftingcomponent>]]);