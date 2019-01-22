import mods.tconstruct.Fuel;

recipes.addShapeless("CTBlueVine", <tconstruct:slime_vine_blue>, [<minecraft:vine>, <tconstruct:edible:1>]);
recipes.addShapeless("CTPurpleVine", <tconstruct:slime_vine_purple>, [<minecraft:vine>, <tconstruct:edible:2>]);

recipes.addShapeless("CTBlueSlime", <tconstruct:edible:1>, [<ore:slimeball>, <ore:dyeBlue>]);
recipes.addShapeless("CTPurpleSlime", <tconstruct:edible:2>, [<ore:slimeball>, <ore:dyePurple>]);
recipes.addShapeless("CTOrangeSlime", <tconstruct:edible:4>, [<minecraft:magma_cream>, <ore:dyeOrange>]);


recipes.addShapeless("CTBlueLeaves", <tconstruct:slime_leaves:0>, [<ore:treeLeaves>, <tconstruct:edible:1>]);
recipes.addShapeless("CTPurpleLeaves", <tconstruct:slime_leaves:1>, [<ore:treeLeaves>, <tconstruct:edible:2>]);
recipes.addShapeless("CTOrangeLeaves", <tconstruct:slime_leaves:2>, [<ore:treeLeaves>, <tconstruct:edible:4>]);

mods.jei.JEI.removeAndHide(<tinker_io:stirling_engine>);
mods.jei.JEI.removeAndHide(<tinker_io:ore_crusher>);
mods.jei.JEI.removeAndHide(<tinker_io:what_a_beautiful_block>);
mods.jei.JEI.removeAndHide(<tinker_io:crushed_ore>);

mods.jei.JEI.removeAndHide(<tcomplement:melter>);
mods.jei.JEI.removeAndHide(<tcomplement:melter:8>);


Fuel.registerFuel(<liquid:liquidaeternalis>, 160);
Fuel.registerFuel(<liquid:liquiddarkmatter>, 320);
Fuel.registerFuel(<liquid:liquidredmatter>, 640);
Fuel.registerFuel(<liquid:liquidbluematter>, 1280);