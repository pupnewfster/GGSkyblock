#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;


var liquidAeternalis = VanillaFactory.createFluid("liquidaeternalis", colorLookup.aeternalis);
liquidAeternalis.material = <blockmaterial:lava>;
liquidAeternalis.luminosity = 1000;
liquidAeternalis.density = 4000;
liquidAeternalis.rarity = "RARE";
liquidAeternalis.colorize = false;
liquidAeternalis.temperature = 1700;
liquidAeternalis.setStillLocation("contenttweaker:fluids/aeternalis");
liquidAeternalis.setFlowingLocation("contenttweaker:fluids/aeternalis_flow");
liquidAeternalis.register();


var dirtyDarkMatter = VanillaFactory.createFluid("dirtydarkmatter", 0x37173E);
dirtyDarkMatter.material = <blockmaterial:lava>;
dirtyDarkMatter.density = 8000;
dirtyDarkMatter.rarity = "RARE";
dirtyDarkMatter.colorize = false;
dirtyDarkMatter.temperature = 2000;
dirtyDarkMatter.setStillLocation("contenttweaker:fluids/dirty_dark_matter");
dirtyDarkMatter.setFlowingLocation("contenttweaker:fluids/dirty_dark_matter_flow");
dirtyDarkMatter.register();


var liquidDarkMatter = VanillaFactory.createFluid("liquiddarkmatter", colorLookup.dark_matter);
liquidDarkMatter.material = <blockmaterial:lava>;
liquidDarkMatter.density = 8000;
liquidDarkMatter.rarity = "RARE";
liquidDarkMatter.colorize = false;
liquidDarkMatter.temperature = 2000;
liquidDarkMatter.setStillLocation("contenttweaker:fluids/dark_matter");
liquidDarkMatter.setFlowingLocation("contenttweaker:fluids/dark_matter_flow");
liquidDarkMatter.register();

var liquidRedMatter = VanillaFactory.createFluid("liquidredmatter", colorLookup.red_matter);
liquidRedMatter.material = <blockmaterial:lava>;
liquidRedMatter.luminosity = 500;
liquidRedMatter.density = 16000;
liquidRedMatter.rarity = "EPIC";
liquidRedMatter.colorize = false;
liquidRedMatter.temperature = 2500;
liquidRedMatter.setStillLocation("contenttweaker:fluids/red_matter");
liquidRedMatter.setFlowingLocation("contenttweaker:fluids/red_matter_flow");
liquidRedMatter.register();

var liquidBlueMatter = VanillaFactory.createFluid("liquidbluematter", colorLookup.blue_matter);
liquidBlueMatter.material = <blockmaterial:lava>;
liquidBlueMatter.luminosity = 1000;
liquidBlueMatter.density = 32000;
liquidBlueMatter.rarity = "EPIC";
liquidBlueMatter.colorize = false;
liquidRedMatter.temperature = 3000;
liquidBlueMatter.setStillLocation("contenttweaker:fluids/blue_matter");
liquidBlueMatter.setFlowingLocation("contenttweaker:fluids/blue_matter_flow");
liquidBlueMatter.register();

var liquidtier14 = VanillaFactory.createFluid("liquidtier14", colorLookup.tier14);
liquidtier14.material = <blockmaterial:lava>;
liquidtier14.colorize = false;
liquidtier14.setStillLocation("contenttweaker:fluids/tier14");
liquidtier14.setFlowingLocation("contenttweaker:fluids/tier14_flow");
liquidtier14.register();

var liquidtier18 = VanillaFactory.createFluid("liquidtier18", colorLookup.tier18);
liquidtier18.material = <blockmaterial:lava>;
liquidtier18.colorize = false;
liquidtier18.setStillLocation("contenttweaker:fluids/tier18");
liquidtier18.setFlowingLocation("contenttweaker:fluids/tier18_flow");
liquidtier18.register();

var liquidtier19 = VanillaFactory.createFluid("liquidtier19", colorLookup.tier19);
liquidtier19.material = <blockmaterial:lava>;
liquidtier19.colorize = false;
liquidtier19.setStillLocation("contenttweaker:fluids/tier19");
liquidtier19.setFlowingLocation("contenttweaker:fluids/tier19_flow");
liquidtier19.register();


var tier25blood = VanillaFactory.createFluid("tier25blood", 0x760000);
tier25blood.material = <blockmaterial:lava>;
tier25blood.colorize = false;
tier25blood.setStillLocation("contenttweaker:fluids/tier25blood");
tier25blood.setFlowingLocation("contenttweaker:fluids/tier25blood_flow");
tier25blood.register();


var tier30Dirty = VanillaFactory.createFluid("tier30_dirty", 0xC49147);
tier30Dirty.material = <blockmaterial:lava>;
tier30Dirty.colorize = false;
tier30Dirty.setStillLocation("contenttweaker:fluids/tier30_dirty");
tier30Dirty.setFlowingLocation("contenttweaker:fluids/tier30_dirty_flow");
tier30Dirty.register();


var tier30Clean = VanillaFactory.createFluid("tier30_clean", colorLookup.tier30);
tier30Clean.material = <blockmaterial:lava>;
liquidBlueMatter.luminosity = 1000;
tier30Clean.colorize = false;
tier30Clean.setStillLocation("contenttweaker:fluids/tier30_clean");
tier30Clean.setFlowingLocation("contenttweaker:fluids/tier30_clean_flow");
tier30Clean.register();



/*function createBasicFluid(name as string, ) {

}*/






//https://manytools.org/image/colorize-filter/ multiply