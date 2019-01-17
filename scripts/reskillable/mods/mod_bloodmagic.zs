#modloaded compatskills reskillable bloodmagic

import mods.compatskills.Requirement.addRequirement;
import mods.compatskills.RitualHandler.addRitualCostLock;

addRequirement(<bloodmagic:teleposer>, "trait|compatskills:wireless");

addRitualCostLock(0, "trait|compatskills:unlock_bloodmagic"); //All rituals require blood magic unlocked

addRitualCostLock(450, "reskillable:magic|5");

addRitualCostLock(2000, "reskillable:magic|15");
addRitualCostLock(10000, "reskillable:magic|34");
addRitualCostLock(25000, "reskillable:magic|68");
addRitualCostLock(40000, "reskillable:magic|92");