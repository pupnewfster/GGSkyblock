//Circuit (add a recipe to mekanism)
mods.jei.JEI.removeAndHide(<techreborn:part:29>);
mods.jei.JEI.removeAndHide(<techreborn:part:30>);
mods.jei.JEI.removeAndHide(<techreborn:part:1>);

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


//Disable Soalr Panels
mods.jei.JEI.removeAndHide(<techreborn:solar_panel:*>);

//Disable Chunk Loader
mods.jei.JEI.removeAndHide(<techreborn:chunk_loader>);

mods.jei.JEI.removeAndHide(<techreborn:quantum_tank>);
mods.jei.JEI.removeAndHide(<techreborn:quantum_chest>);
mods.jei.JEI.hide(<techreborn:magic_energy_converter>);
mods.jei.JEI.hide(<techreborn:magic_energy_absorber>);
mods.jei.JEI.hide(<techreborn:omnitool>);

mods.jei.JEI.removeAndHide(<techreborn:nuggets:24>);
recipes.removeByRecipeName("techreborn:diamond");


//Disable tools/armor
mods.jei.JEI.removeAndHide(<techreborn:bronzeboots>);
mods.jei.JEI.removeAndHide(<techreborn:bronzechestplate>);
mods.jei.JEI.removeAndHide(<techreborn:bronzehelmet>);
mods.jei.JEI.removeAndHide(<techreborn:bronzeleggings>);
mods.jei.JEI.removeAndHide(<techreborn:bronzeaxe>);
mods.jei.JEI.removeAndHide(<techreborn:bronzehoe>);
mods.jei.JEI.removeAndHide(<techreborn:bronzepickaxe>);
mods.jei.JEI.removeAndHide(<techreborn:bronzespade>);
mods.jei.JEI.removeAndHide(<techreborn:bronzesword>);

mods.jei.JEI.removeAndHide(<techreborn:rubyboots>);
mods.jei.JEI.removeAndHide(<techreborn:rubychestplate>);
mods.jei.JEI.removeAndHide(<techreborn:rubyhelmet>);
mods.jei.JEI.removeAndHide(<techreborn:rubyleggings>);
mods.jei.JEI.removeAndHide(<techreborn:rubyaxe>);
mods.jei.JEI.removeAndHide(<techreborn:rubyhoe>);
mods.jei.JEI.removeAndHide(<techreborn:rubypickaxe>);
mods.jei.JEI.removeAndHide(<techreborn:rubyspade>);
mods.jei.JEI.removeAndHide(<techreborn:rubysword>);

mods.jei.JEI.removeAndHide(<techreborn:sapphireboots>);
mods.jei.JEI.removeAndHide(<techreborn:sapphirechestplate>);
mods.jei.JEI.removeAndHide(<techreborn:sapphirehelmet>);
mods.jei.JEI.removeAndHide(<techreborn:sapphireleggings>);
mods.jei.JEI.removeAndHide(<techreborn:sapphireaxe>);
mods.jei.JEI.removeAndHide(<techreborn:sapphirehoe>);
mods.jei.JEI.removeAndHide(<techreborn:sapphirepickaxe>);
mods.jei.JEI.removeAndHide(<techreborn:sapphirespade>);
mods.jei.JEI.removeAndHide(<techreborn:sapphiresword>);

mods.jei.JEI.removeAndHide(<techreborn:peridotboots>);
mods.jei.JEI.removeAndHide(<techreborn:peridotchestplate>);
mods.jei.JEI.removeAndHide(<techreborn:peridothelmet>);
mods.jei.JEI.removeAndHide(<techreborn:peridotleggings>);
mods.jei.JEI.removeAndHide(<techreborn:peridotaxe>);
mods.jei.JEI.removeAndHide(<techreborn:peridothoe>);
mods.jei.JEI.removeAndHide(<techreborn:peridotpickaxe>);
mods.jei.JEI.removeAndHide(<techreborn:peridotspade>);
mods.jei.JEI.removeAndHide(<techreborn:peridotsword>);


mods.jei.JEI.removeAndHide(<techreborn:irondrill>);
mods.jei.JEI.removeAndHide(<techreborn:diamonddrill>);
mods.jei.JEI.removeAndHide(<techreborn:advanceddrill>);

mods.jei.JEI.removeAndHide(<techreborn:ironchainsaw>);
mods.jei.JEI.removeAndHide(<techreborn:diamondchainsaw>);
mods.jei.JEI.removeAndHide(<techreborn:advancedchainsaw>);
mods.jei.JEI.removeAndHide(<techreborn:steeljackhammer>);
mods.jei.JEI.removeAndHide(<techreborn:diamondjackhammer>);
mods.jei.JEI.removeAndHide(<techreborn:ironjackhammer>);
mods.jei.JEI.removeAndHide(<techreborn:nanosaber>);
mods.jei.JEI.removeAndHide(<techreborn:rockcutter>);