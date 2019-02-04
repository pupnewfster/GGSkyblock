import mods.tconstruct.Fuel;
import mods.jei.JEI;

recipes.addShapeless("CTBlueVine", <tconstruct:slime_vine_blue>, [<minecraft:vine>, <tconstruct:edible:1>]);
recipes.addShapeless("CTPurpleVine", <tconstruct:slime_vine_purple>, [<minecraft:vine>, <tconstruct:edible:2>]);

recipes.addShapeless("CTBlueSlime", <tconstruct:edible:1>, [<ore:slimeball>, <ore:dyeBlue>]);
recipes.addShapeless("CTPurpleSlime", <tconstruct:edible:2>, [<ore:slimeball>, <ore:dyePurple>]);
recipes.addShapeless("CTOrangeSlime", <tconstruct:edible:4>, [<minecraft:magma_cream>, <ore:dyeOrange>]);


recipes.addShapeless("CTBlueLeaves", <tconstruct:slime_leaves:0>, [<ore:treeLeaves>, <tconstruct:edible:1>]);
recipes.addShapeless("CTPurpleLeaves", <tconstruct:slime_leaves:1>, [<ore:treeLeaves>, <tconstruct:edible:2>]);
recipes.addShapeless("CTOrangeLeaves", <tconstruct:slime_leaves:2>, [<ore:treeLeaves>, <tconstruct:edible:4>]);

JEI.removeAndHide(<tinker_io:stirling_engine>);
JEI.removeAndHide(<tinker_io:ore_crusher>);
JEI.removeAndHide(<tinker_io:what_a_beautiful_block>);
JEI.removeAndHide(<tinker_io:crushed_ore>);

JEI.removeAndHide(<tcomplement:melter>);
JEI.removeAndHide(<tcomplement:melter:8>);


Fuel.registerFuel(<liquid:aeternalis>, 160);
Fuel.registerFuel(<liquid:dark_matter>, 320);
Fuel.registerFuel(<liquid:red_matter>, 640);
Fuel.registerFuel(<liquid:orange_matter>, 1280);
Fuel.registerFuel(<liquid:yellow_matter>, 2560);
Fuel.registerFuel(<liquid:green_matter>, 5120);
Fuel.registerFuel(<liquid:blue_matter>, 10240);




//Disable conflicting recipes of disabled/hidden items anyways
recipes.removeByRecipeName("plustic:metals/invar_nugget");
recipes.removeByRecipeName("plustic:metals/invar_block");
recipes.removeByRecipeName("plustic:metals/invar_ingot_nugget");
recipes.removeByRecipeName("plustic:metals/invar_nugget");