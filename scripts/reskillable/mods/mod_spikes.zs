#modloaded compatskills reskillable spikemod

import mods.compatskills.Requirement.addRequirement;

addRequirement(<spikemod:wooden_spike>, "reskillable:attack|5");
addRequirement(<spikemod:stone_spike>, "reskillable:attack|8");
addRequirement(<spikemod:iron_spike>, "reskillable:attack|15", "reskillable:gathering|5", "compatskills:smithing|9");
addRequirement(<spikemod:golden_spike>, "reskillable:attack|21", "reskillable:gathering|9", "trait|compatskills:novice");
addRequirement(<spikemod:diamond_spike>, "reskillable:attack|35", "reskillable:gathering|14", "reskillable:magic|21", "trait|compatskills:apprentice");

addRequirement(<spikemod:freezing_spike>, "reskillable:attack|5", "reskillable:magic|5");
addRequirement(<spikemod:extra_sharp_spike>, "reskillable:attack|12", "compatskills:smithing|6");
addRequirement(<spikemod:hot_spike>, "reskillable:attack|17", "reskillable:gathering|5", "compatskills:smithing|11", "reskillable:magic|5");
addRequirement(<spikemod:looting_spike>, "reskillable:attack|45", "reskillable:gathering|21", "reskillable:magic|42", "trait|compatskills:apprentice");