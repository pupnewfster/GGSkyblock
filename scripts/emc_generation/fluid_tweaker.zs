#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;
import scripts.emc_generation.cot_classes.fluid_info;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

val customFluids as fluid_info[] = [
    fluid_info("aeternalis", colorLookup.aeternalis as int, 1000, 1700, 4000, "UNCOMMON"),
    fluid_info("evaporated_aeternalis", 0xB5B5B5 as int, 1000, 1700, 4000, "UNCOMMON"),

    fluid_info("dark_matter", colorLookup.dark_matter as int, 0, 2000, 8000, "RARE"),
    fluid_info("dirty_dark_matter", 0x28112D as int, 0, 2000, 8000, "RARE"),

    fluid_info("red_matter", colorLookup.red_matter as int, 500, 2500, 16000, "RARE"),
    fluid_info("heavy_red_matter", 0xE53D3D as int, 500, 2500, 16000, "RARE"),

    fluid_info("orange_matter", colorLookup.orange_matter as int, 1000, 3000, 32000, "EPIC"),
    fluid_info("activated_orange_matter", 0xFF9400 as int, 1000, 3000, 32000, "EPIC"),

    fluid_info("yellow_matter", colorLookup.yellow_matter as int, 1500, 3500, 48000, "EPIC"),
    fluid_info("impure_yellow_matter", 0xBC8900 as int, 1500, 3500, 48000, "EPIC"),
    fluid_info("clean_yellow_matter", 0xFFD000 as int, 1500, 3500, 48000, "EPIC"),

    fluid_info("green_matter", colorLookup.green_matter as int, 2000, 4000, 64000, "EPIC"),

    fluid_info("blue_matter", colorLookup.blue_matter as int, 2500, 4500, 88000, "EPIC"),

    fluid_info("tier14", colorLookup.tier14 as int),
    fluid_info("tier18", colorLookup.tier18 as int),
    fluid_info("tier19", colorLookup.tier19 as int),
    fluid_info("tier25blood", 0x760000 as int),
    fluid_info("tier30_dirty", 0xC49147 as int),
    fluid_info("tier30_clean", colorLookup.tier30 as int, 1000),
    fluid_info("bloody_tier31_essence", 0xC47F66 as int),
    fluid_info("evaporated_bloody_tier31", 0xE1BF99 as int),
    fluid_info("tier37_dirty", 0x939CAD as int),
    fluid_info("tier37_clean", colorLookup.tier37 as int, 1000)
];

for fluid in customFluids {
    fluid.createFluid();
}