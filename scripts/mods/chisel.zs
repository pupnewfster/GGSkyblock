import mods.jei.JEI;

JEI.removeAndHide(<chisel:chisel_iron>);
JEI.removeAndHide(<chisel:chisel_diamond>);


//Disable conflicting recipes of disabled/hidden items anyways
recipes.removeByRecipeName("chisel:uncraft_blocktin");
recipes.removeByRecipeName("chisel:uncraft_blockcopper");
recipes.removeByRecipeName("chisel:uncraft_blocksteel");
recipes.removeByRecipeName("chisel:uncraft_blockbronze");
recipes.removeByRecipeName("chisel:uncraft_blocktin");