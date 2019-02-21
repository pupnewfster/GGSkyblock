#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

createFluidRarity("aeternalis", colorLookup.aeternalis, 1000, 1700, 4000, "UNCOMMON");
createFluidRarity("evaporated_aeternalis", 0xB5B5B5, 1000, 1700, 4000, "UNCOMMON");
createFluidRarity("dirty_dark_matter", 0x37173E, 0, 2000, 8000, "RARE");
createFluidRarity("dark_matter", colorLookup.dark_matter, 0, 2000, 8000, "RARE");
createFluidRarity("red_matter", colorLookup.red_matter, 500, 2500, 16000, "RARE");
createFluidRarity("heavy_red_matter", 0xE53D3D, 500, 2500, 16000, "RARE");
createFluidRarity("orange_matter", colorLookup.orange_matter, 1000, 3000, 32000, "EPIC");
createFluidRarity("activated_orange_matter", 0xFF8900, 1000, 3000, 32000, "EPIC");
createFluidRarity("impure_yellow_matter", 0xCE9704, 1500, 3500, 48000, "EPIC");
createFluidRarity("clean_yellow_matter", 0xFFBA00, 1500, 3500, 48000, "EPIC");
createFluidRarity("yellow_matter", colorLookup.yellow_matter, 1500, 3500, 48000, "EPIC");
createFluidRarity("green_matter", colorLookup.green_matter, 2000, 4000, 64000, "EPIC");
createFluidRarity("blue_matter", colorLookup.blue_matter, 2500, 4500, 88000, "EPIC");

createFluid("tier14", colorLookup.tier14);
createFluid("tier18", colorLookup.tier18);
createFluid("tier19", colorLookup.tier19);
createFluid("tier25blood", 0x760000);
createFluid("tier30_dirty", 0xC49147);
createFluid("tier37_dirty", 0xA0AABC);

createFluid("bloody_tier31_essence", 0xC47F66);
createFluid("evaporated_bloody_tier31", 0xE1BF99);

createFluidLight("tier30_clean", colorLookup.tier30, 1000);
createFluidLight("tier37_clean", colorLookup.tier37, 1000);


function createFluid(name as string, color as int) {
    createFluidLight(name, color, 0);
}

function createFluidLight(name as string, color as int, luminosity as int) {
    createFluidTemp(name, color, luminosity, 300);
}

function createFluidTemp(name as string, color as int, luminosity as int, temperature as int) {
    createFluidDensity(name, color, luminosity, temperature, 1000);
}

function createFluidDensity(name as string, color as int, luminosity as int, temperature as int, density as int) {
    createFluidRarity(name, color, luminosity, temperature, density, "COMMON");
}

function createFluidRarity(name as string, color as int, luminosity as int, temperature as int, density as int, rarity as string) {
    var fluid = VanillaFactory.createFluid(name, color);
    fluid.material = <blockmaterial:lava>;
    fluid.colorize = false;
    fluid.setStillLocation("contenttweaker:fluids/" + name);
    fluid.setFlowingLocation("contenttweaker:fluids/" + name + "_flow");

    fluid.luminosity = luminosity;
    fluid.temperature = temperature;
    fluid.density = density;
    fluid.rarity = rarity;
    fluid.register();
}