#priority 600

import mods.mekatweaker.GasFactory;
import mods.mekatweaker.Gas;

var heavyGas = GasFactory.createFromFluid(<liquid:heavywater>);
heavyGas.register();

var gasAeternalis = GasFactory.createFromFluid(<liquid:liquidaeternalis>);
gasAeternalis.register();

var gasDirtyDarkMatter = GasFactory.createFromFluid(<liquid:dirtydarkmatter>);
gasDirtyDarkMatter.register();

var gasDarkMatter = GasFactory.createFromFluid(<liquid:liquiddarkmatter>);
gasDarkMatter.register();

var gasRedMatter = GasFactory.createFromFluid(<liquid:liquidredmatter>);
gasRedMatter.register();

var gasBlueMatter = GasFactory.createFromFluid(<liquid:liquidbluematter>);
gasBlueMatter.register();





var lpGas = GasFactory.createFromFluid(<liquid:lifeessence>);
lpGas.register();

var refinedLPGas = GasFactory.createFromFluid(<liquid:refined_life_essence>);
refinedLPGas.register();



var gasTier14 = GasFactory.createFromFluid(<liquid:liquidtier14>);
gasTier14.register();

var gasTier18 = GasFactory.createFromFluid(<liquid:liquidtier18>);
gasTier18.register();

var gasTier19 = GasFactory.createFromFluid(<liquid:liquidtier19>);
gasTier19.register();

var gasTier25Blood = GasFactory.createFromFluid(<liquid:tier25blood>);
gasTier25Blood.register();

var gasTier30Dirty = GasFactory.createFromFluid(<liquid:tier30_dirty>);
gasTier30Dirty.register();

var gasTier30Clean = GasFactory.createFromFluid(<liquid:tier30_clean>);
gasTier30Clean.register();