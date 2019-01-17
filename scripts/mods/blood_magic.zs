//Disable tools

mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_wooden_axe>);
mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_wooden_sickle>);
mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_wooden_pickaxe>);
mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_wooden_shovel>);
mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_wooden_sword>);

mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_iron_axe>);
mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_iron_sickle>);
mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_iron_pickaxe>);
mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_iron_shovel>);
mods.jei.JEI.removeAndHide(<bloodarsenal:blood_infused_iron_sword>);

mods.jei.JEI.removeAndHide(<bloodarsenal:stasis_axe>);
mods.jei.JEI.removeAndHide(<bloodarsenal:stasis_pickaxe>);
mods.jei.JEI.removeAndHide(<bloodarsenal:stasis_shovel>);
mods.jei.JEI.removeAndHide(<bloodarsenal:stasis_sword>);

//Add work around bound recipes
recipes.addShapeless("CTBoundSickle", <bloodarsenal:bound_sickle>, [<minecraft:diamond_hoe>, <bloodmagic:component:8>, <bloodmagic:arcane_ashes>]);
recipes.addShapeless("CTBoundBlade", <bloodmagic:bound_sword>, [<minecraft:diamond_sword>, <bloodmagic:component:8>, <bloodmagic:arcane_ashes>]);
recipes.addShapeless("CTBoundPick", <bloodmagic:bound_pickaxe>, [<minecraft:diamond_pickaxe>, <bloodmagic:component:8>, <bloodmagic:arcane_ashes>]);
recipes.addShapeless("CTBoundAxe", <bloodmagic:bound_axe>, [<minecraft:diamond_axe>, <bloodmagic:component:8>, <bloodmagic:arcane_ashes>]);
recipes.addShapeless("CTBoundShovel", <bloodmagic:bound_shovel>, [<minecraft:diamond_shovel>, <bloodmagic:component:8>, <bloodmagic:arcane_ashes>]);
recipes.addShapeless("CTBoundKhopesh", <animus:kama_bound>, [<animus:kama_diamond>, <bloodmagic:component:8>, <bloodmagic:arcane_ashes>]);