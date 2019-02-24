#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;
import scripts.emc_generation.cot_classes.fluid_info;

val moltenFluids = {
    tier18 : -1,
    tier19 : -1,
    tier20 : -1,
    tier21 : -1,
    tier25 : -1,
    tier26 : -1,
    tier29 : -1,
    tier32 : -1,
    tier33 : -1,

    tier21_evaporated : 0x3678C9,
    "18_19" : 0xDFA5B7,
    "25_26" : colorLookup.tier25_26alloy,
    orange_32 : 0xB7BEAA
} as int[string];

for name, color in moltenFluids {
    val moltenCustom as fluid_info = fluid_info("molten" + name, (color == -1 ? colorLookup[name] : color) as int, 15, 1700);
    moltenCustom.setTexture("tconstruct:blocks/fluids/molten_metal");
    moltenCustom.createFluid();
}