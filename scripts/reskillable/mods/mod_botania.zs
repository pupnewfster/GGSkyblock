#modloaded compatskills reskillable botania

import mods.compatskills.Requirement.addRequirement;

addRequirement(<botania:pool:1>, "none");
addRequirement(<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}), "none");

addRequirement(<botania:cellblock>, "none");

addRequirement(<botania:spawnermover>, "compatskills:taming|103", "reskillable:magic|76");

addRequirement(<extrabotany:flyingboat>, "reskillable:magic|49", "reskillable:agility|58", "compatskills:technology|21");
addRequirement(<extrabotany:flyingboat:1>, "reskillable:magic|49", "reskillable:agility|58", "compatskills:technology|21");
addRequirement(<extrabotany:flyingboat:2>, "reskillable:magic|49", "reskillable:agility|58", "compatskills:technology|21");

addRequirement(<extrabotany:managenerator>, "reskillable:magic|129", "compatskills:technology|167");