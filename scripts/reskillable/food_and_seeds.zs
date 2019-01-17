#modloaded compatskills reskillable

import mods.compatskills.Requirement.addRequirement;
import mods.compatskills.FoodTweaker.addHungerLock;
import mods.compatskills.FoodTweaker.addSaturationLock;

addHungerLock(4, "reskillable:farming|7");
addHungerLock(6, "reskillable:farming|11");
addHungerLock(8, "reskillable:farming|14");
addHungerLock(14, "reskillable:farming|27");
addHungerLock(20, "reskillable:farming|42");

addSaturationLock(20, "reskillable:farming|87");



//Crops
addRequirement(<minecraft:wheat_seeds>, "reskillable:farming|3");
addRequirement(<minecraft:pumpkin_seeds>, "reskillable:farming|3");
addRequirement(<minecraft:melon_seeds>, "reskillable:farming|3");
addRequirement(<minecraft:beetroot_seeds>, "reskillable:farming|3");
addRequirement(<actuallyadditions:item_misc:23>, "reskillable:farming|21"); //crystallized canola seed
addRequirement(<actuallyadditions:item_misc:24>, "reskillable:farming|25"); //empowered canola seed
addRequirement(<actuallyadditions:item_rice_seed>, "reskillable:farming|9");
addRequirement(<actuallyadditions:item_canola_seed>, "reskillable:farming|13");
addRequirement(<actuallyadditions:item_flax_seed>, "reskillable:farming|12");
addRequirement(<actuallyadditions:item_coffee_seed>, "reskillable:farming|10");
addRequirement(<thaumicbases:plaxseed>, "reskillable:farming|17");
addRequirement(<thaumicbases:sweedseed>, "reskillable:farming|17");
addRequirement(<thaumicbases:metalleatseed>, "reskillable:farming|17");
addRequirement(<thaumicbases:lazulliaseed>, "reskillable:farming|17");
addRequirement(<thaumicbases:redlonseed>, "reskillable:farming|17");
addRequirement(<thaumicbases:lucriteseed>, "reskillable:farming|17");
addRequirement(<thaumicbases:glieoniaseed>, "reskillable:farming|17");
addRequirement(<thaumicbases:voidseed>, "reskillable:farming|43");
addRequirement(<thaumicbases:tobaccoseed>, "reskillable:farming|17");
addRequirement(<botania:grassseeds>, "reskillable:farming|21"); //Pasture
addRequirement(<botania:grassseeds:1>, "reskillable:farming|21"); //Boreal
addRequirement(<botania:grassseeds:3>, "reskillable:farming|19"); //Dry Pasture
addRequirement(<botania:grassseeds:4>, "reskillable:farming|24"); //Golden Pasture
addRequirement(<botania:grassseeds:5>, "reskillable:farming|27"); //Vivid Pasture
addRequirement(<botania:grassseeds:6>, "reskillable:farming|20"); //Scorched Pasture
addRequirement(<botania:grassseeds:7>, "reskillable:farming|26"); //Infused Pasture
addRequirement(<botania:grassseeds:8>, "reskillable:farming|24"); //Mutated Pasture