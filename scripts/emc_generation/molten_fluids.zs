#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

val moltenFluids = {
    tier18 : colorLookup.tier18,
    tier19 : colorLookup.tier19,
    tier20 : colorLookup.tier20,
    tier21 : colorLookup.tier21,
    tier25 : colorLookup.tier25,
    tier26 : colorLookup.tier26,
    tier29 : colorLookup.tier29,
    tier32 : colorLookup.tier32,
    tier33 : colorLookup.tier33,

    tier21_evaporated : 0x3678C9,
    "18_19" : 0xDFA5B7,
    "25_26" : colorLookup.tier25_26alloy,
    orange_32 : 0xB7BEAA
} as int[string];

createMolten(moltenFluids, 1700);

function createMolten(moltenFluids as int[string], temp as int) {
    for name, color in moltenFluids {
        var moltenCustom = VanillaFactory.createFluid("molten" + name, color);
        moltenCustom.material = <blockmaterial:lava>;
        moltenCustom.temperature = temp;
        moltenCustom.setStillLocation("tconstruct:blocks/fluids/molten_metal");
        moltenCustom.setFlowingLocation("tconstruct:blocks/fluids/molten_metal_flow");
        moltenCustom.register();
    }
}