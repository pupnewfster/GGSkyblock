#loader mekatweaker
#priority 600

import mods.mekatweaker.InfuserType;

val types as string[] = [
    "TIER1",
    "SUGAR",
    "LP",
    "TIER22",
    "TIER30"
];

for type in types {
    InfuserType.addType(type);
}