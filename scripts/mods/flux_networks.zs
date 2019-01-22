//Flux plug
recipes.remove(<fluxnetworks:fluxplug>);
recipes.addShaped("CTFluxPlug", <fluxnetworks:fluxplug>, [[<mekanism:transmitter>.withTag({tier: 3}), <fluxnetworks:fluxcore>, <mekanism:transmitter>.withTag({tier: 3})], [<fluxnetworks:fluxcore>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxcore>], [<mekanism:transmitter>.withTag({tier: 3}), <fluxnetworks:fluxcore>, <mekanism:transmitter>.withTag({tier: 3})]]);

//Flux point
recipes.remove(<fluxnetworks:fluxpoint>);
recipes.addShaped("CTFluxPoint", <fluxnetworks:fluxpoint>, [[<mekanism:transmitter>.withTag({tier: 3}), <fluxnetworks:fluxcore>, <mekanism:transmitter>.withTag({tier: 3})], [<fluxnetworks:fluxcore>, <ore:blockRedstone>, <fluxnetworks:fluxcore>], [<mekanism:transmitter>.withTag({tier: 3}), <fluxnetworks:fluxcore>, <mekanism:transmitter>.withTag({tier: 3})]]);