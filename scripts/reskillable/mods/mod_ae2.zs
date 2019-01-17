#modloaded compatskills reskillable appliedenergistics2

import mods.compatskills.Requirement.addRequirement;

addRequirement(<appliedenergistics2:creative_energy_cell>, "none");
addRequirement(<appliedenergistics2:creative_storage_cell>, "none");
addRequirement(<appliedenergistics2:sky_stone_block>, "none");
addRequirement(<appliedenergistics2:smooth_sky_stone_block>, "none");
addRequirement(<appliedenergistics2:sky_stone_brick>, "none");
addRequirement(<appliedenergistics2:sky_stone_small_brick>, "none");

addRequirement(<appliedenergistics2:wireless_access_point>, "trait|compatskills:wireless");
addRequirement(<appliedenergistics2:wireless_terminal>, "trait|compatskills:wireless");
addRequirement(<appliedenergistics2:quantum_ring>, "trait|compatskills:wireless", "compatskills:technology|132");
addRequirement(<appliedenergistics2:quantum_link>, "trait|compatskills:wireless", "compatskills:technology|132");

addRequirement(<extracells:terminal.fluid.wireless>, "trait|compatskills:wireless");
addRequirement(<extracells:terminal.universal.wireless>, "trait|compatskills:wireless", "compatskills:technology|132");
addRequirement(<extracells:terminal.gas.wireless>, "trait|compatskills:wireless");



addRequirement(<appliedenergistics2:dense_energy_cell>, "compatskills:technology|66");
addRequirement(<appliedenergistics2:controller>, "compatskills:technology|47");
addRequirement(<appliedenergistics2:crafting_storage_4k>, "compatskills:technology|47");
addRequirement(<appliedenergistics2:crafting_storage_16k>, "compatskills:technology|86");
addRequirement(<appliedenergistics2:crafting_storage_64k>, "compatskills:technology|172");
addRequirement(<appliedenergistics2:crafting_accelerator>, "compatskills:technology|85", "reskillable:agility|31");
addRequirement(<appliedenergistics2:security_station>, "compatskills:technology|56", "reskillable:defense|26");
addRequirement(<appliedenergistics2:part:300>, "compatskills:technology|44", "reskillable:mining|21", "reskillable:gathering|21");
addRequirement(<appliedenergistics2:part:320>, "compatskills:technology|44", "reskillable:building|35");
addRequirement(<appliedenergistics2:part:360>, "compatskills:technology|55");
addRequirement(<appliedenergistics2:part:520>, "compatskills:technology|55");
addRequirement(<appliedenergistics2:part:480>, "compatskills:technology|55");
addRequirement(<appliedenergistics2:part:360>, "compatskills:technology|55");

addRequirement(<extracells:part.base:15>, "compatskills:technology|55");
addRequirement(<extracells:hardmedrive>, "compatskills:technology|55", "reskillable:defense|19");