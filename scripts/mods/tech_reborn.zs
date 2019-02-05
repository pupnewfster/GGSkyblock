import mods.jei.JEI;

//Circuit (add a recipe to mekanism)
JEI.removeAndHide(<techreborn:part:29>);
JEI.removeAndHide(<techreborn:part:30>);
JEI.removeAndHide(<techreborn:part:1>);

//Reinforced Machine Casing
recipes.remove(<techreborn:machine_casing:1>);
recipes.addShaped("CTReinforcedCasing", <techreborn:machine_casing:1>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:circuitAdvanced>, <mekanism:basicblock:8>, <ore:circuitAdvanced>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

//Advanced Machine Casing
recipes.remove(<techreborn:machine_casing:2>);
recipes.addShaped("CTAdvancedCasing", <techreborn:machine_casing:2>, [[<ore:plateChrome>, <ore:plateChrome>, <ore:plateChrome>], [<ore:circuitElite>, <enderio:item_material:54>, <ore:circuitElite>], [<ore:plateChrome>, <ore:plateChrome>, <ore:plateChrome>]]);

//Industrial Blast Furnace
recipes.remove(<techreborn:industrial_blast_furnace>);
recipes.addShaped("CTBlastFurnace", <techreborn:industrial_blast_furnace>, [[<ore:circuitBasic>, <techreborn:ingot:19>, <ore:circuitBasic>], [<techreborn:ingot:19>, <techreborn:machine_frame:1>, <techreborn:ingot:19>], [<techreborn:electric_furnace>, <techreborn:ingot:19>, <techreborn:electric_furnace>]]);

//Rolling Machine
recipes.remove(<techreborn:rolling_machine>);
recipes.addShaped("CTRollingMachine", <techreborn:rolling_machine>, [[<minecraft:piston>, <ore:circuitBasic>, <minecraft:piston>], [<techreborn:compressor>, <techreborn:machine_frame:0>, <techreborn:compressor>], [<minecraft:piston>, <ore:circuitBasic>, <minecraft:piston>]]);


recipes.addShaped("CTNuke", <techreborn:nuke>, [[<projecte:nova_cataclysm>, <avaritia:endest_pearl>, <projecte:nova_cataclysm>], [<avaritia:endest_pearl>, <projecte:nova_cataclysm>, <avaritia:endest_pearl>], [<projecte:nova_cataclysm>, <avaritia:endest_pearl>, <projecte:nova_cataclysm>]]);


//Disable conflicting recipes of disabled/hidden items anyways
recipes.removeByRecipeName("techreborn:nuggets_1");
recipes.removeByRecipeName("techreborn:nuggets_2");
recipes.removeByRecipeName("techreborn:nuggets_4");
recipes.removeByRecipeName("techreborn:nuggets_8");
recipes.removeByRecipeName("techreborn:nuggets_11");
recipes.removeByRecipeName("techreborn:nuggets_12");
recipes.removeByRecipeName("techreborn:nuggets_13");

recipes.removeByRecipeName("techreborn:ingot_20");
recipes.removeByRecipeName("techreborn:ingot_21");
recipes.removeByRecipeName("techreborn:ingot_23");
recipes.removeByRecipeName("techreborn:ingot_31");
recipes.removeByRecipeName("techreborn:ingot_32");

recipes.removeByRecipeName("techreborn:storage_4");
recipes.removeByRecipeName("techreborn:storage_5");
recipes.removeByRecipeName("techreborn:storage2_6");
recipes.removeByRecipeName("techreborn:storage2_7");
recipes.removeByRecipeName("techreborn:storage_14");


//Disable Soalr Panels
JEI.removeAndHide(<techreborn:solar_panel:*>);

//Disable Chunk Loader
JEI.removeAndHide(<techreborn:chunk_loader>);

JEI.removeAndHide(<techreborn:quantum_tank>);
JEI.removeAndHide(<techreborn:quantum_chest>);

JEI.removeAndHide(<techreborn:nuggets:24>);
recipes.removeByRecipeName("techreborn:diamond");


//Disable tools/armor
JEI.removeAndHide(<techreborn:bronzeboots>);
JEI.removeAndHide(<techreborn:bronzechestplate>);
JEI.removeAndHide(<techreborn:bronzehelmet>);
JEI.removeAndHide(<techreborn:bronzeleggings>);
JEI.removeAndHide(<techreborn:bronzeaxe>);
JEI.removeAndHide(<techreborn:bronzehoe>);
JEI.removeAndHide(<techreborn:bronzepickaxe>);
JEI.removeAndHide(<techreborn:bronzespade>);
JEI.removeAndHide(<techreborn:bronzesword>);

JEI.removeAndHide(<techreborn:rubyboots>);
JEI.removeAndHide(<techreborn:rubychestplate>);
JEI.removeAndHide(<techreborn:rubyhelmet>);
JEI.removeAndHide(<techreborn:rubyleggings>);
JEI.removeAndHide(<techreborn:rubyaxe>);
JEI.removeAndHide(<techreborn:rubyhoe>);
JEI.removeAndHide(<techreborn:rubypickaxe>);
JEI.removeAndHide(<techreborn:rubyspade>);
JEI.removeAndHide(<techreborn:rubysword>);

JEI.removeAndHide(<techreborn:sapphireboots>);
JEI.removeAndHide(<techreborn:sapphirechestplate>);
JEI.removeAndHide(<techreborn:sapphirehelmet>);
JEI.removeAndHide(<techreborn:sapphireleggings>);
JEI.removeAndHide(<techreborn:sapphireaxe>);
JEI.removeAndHide(<techreborn:sapphirehoe>);
JEI.removeAndHide(<techreborn:sapphirepickaxe>);
JEI.removeAndHide(<techreborn:sapphirespade>);
JEI.removeAndHide(<techreborn:sapphiresword>);

JEI.removeAndHide(<techreborn:peridotboots>);
JEI.removeAndHide(<techreborn:peridotchestplate>);
JEI.removeAndHide(<techreborn:peridothelmet>);
JEI.removeAndHide(<techreborn:peridotleggings>);
JEI.removeAndHide(<techreborn:peridotaxe>);
JEI.removeAndHide(<techreborn:peridothoe>);
JEI.removeAndHide(<techreborn:peridotpickaxe>);
JEI.removeAndHide(<techreborn:peridotspade>);
JEI.removeAndHide(<techreborn:peridotsword>);


JEI.removeAndHide(<techreborn:irondrill>);
JEI.removeAndHide(<techreborn:diamonddrill>);
JEI.removeAndHide(<techreborn:advanceddrill>);

JEI.removeAndHide(<techreborn:ironchainsaw>);
JEI.removeAndHide(<techreborn:diamondchainsaw>);
JEI.removeAndHide(<techreborn:advancedchainsaw>);
JEI.removeAndHide(<techreborn:steeljackhammer>);
JEI.removeAndHide(<techreborn:diamondjackhammer>);
JEI.removeAndHide(<techreborn:ironjackhammer>);
JEI.removeAndHide(<techreborn:nanosaber>);
JEI.removeAndHide(<techreborn:rockcutter>);