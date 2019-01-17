#modloaded compatskills reskillable

import mods.compatskills.Requirement.addRequirement;

addRequirement(<minecraft:torch>, "compatskills:technology|5");
addRequirement(<minecraft:redstone_torch>, "compatskills:technology|12");

val bed_requirements = ["compatskills:technology|7", "reskillable:building|4"] as string[];

addRequirement(<minecraft:bed>, bed_requirements);
addRequirement(<minecraft:bed:1>, bed_requirements);
addRequirement(<minecraft:bed:2>, bed_requirements);
addRequirement(<minecraft:bed:3>, bed_requirements);
addRequirement(<minecraft:bed:4>, bed_requirements);
addRequirement(<minecraft:bed:5>, bed_requirements);
addRequirement(<minecraft:bed:6>, bed_requirements);
addRequirement(<minecraft:bed:7>, bed_requirements);
addRequirement(<minecraft:bed:8>, bed_requirements);
addRequirement(<minecraft:bed:9>, bed_requirements);
addRequirement(<minecraft:bed:10>, bed_requirements);
addRequirement(<minecraft:bed:11>, bed_requirements);
addRequirement(<minecraft:bed:12>, bed_requirements);
addRequirement(<minecraft:bed:13>, bed_requirements);
addRequirement(<minecraft:bed:14>, bed_requirements);
addRequirement(<minecraft:bed:15>, bed_requirements);


addRequirement(<minecraft:hopper>, "compatskills:technology|5");
addRequirement(<minecraft:crafting_table>, "compatskills:technology|2");
addRequirement(<minecraft:chest>, "compatskills:technology|3", "reskillable:building|2");
addRequirement(<minecraft:trapped_chest>, "compatskills:technology|7", "reskillable:building|4");
addRequirement(<minecraft:ender_chest>, "compatskills:technology|31", "reskillable:magic|21", "reskillable:building|16");
addRequirement(<minecraft:piston>, "compatskills:technology|5");
addRequirement(<minecraft:sticky_piston>, "compatskills:technology|10");
addRequirement(<minecraft:dispenser>, "compatskills:technology|5");
addRequirement(<minecraft:dropper>, "compatskills:technology|5");
addRequirement(<minecraft:observer>, "compatskills:technology|17");
addRequirement(<minecraft:observer>, "compatskills:technology|7", "reskillable:agility|5");
addRequirement(<minecraft:beacon>, "compatskills:technology|37", "reskillable:magic|76", "reskillable:agility|21", "reskillable:attack|21", "reskillable:defense|21");
addRequirement(<minecraft:enchanting_table>, "reskillable:magic|27");
addRequirement(<minecraft:end_portal_frame>, "reskillable:magic|49");


addRequirement(<minecraft:egg>, "trait|compatskills:small_tamer");


addRequirement(<minecraft:dye:15>, "reskillable:farming|13");