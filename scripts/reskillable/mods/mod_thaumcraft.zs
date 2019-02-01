import mods.compatskills.Requirement.addRequirement;
import mods.compatskills.Thaumcraft.addResearchLock;
import mods.compatskills.Thaumcraft.addKnowledgeLock;

//Remove uneeded lock from a simple block
addRequirement(<thaumadditions:crafting_furnace>, "none");


addRequirement(<thaumcraft:crystal_essence>, "unobtainable");

//Research

addResearchLock("ESSENTIASMELTERTHAUMIUM", "trait|compatskills:novice", "compatskills:technology|15");

addResearchLock("BASEELDRITCH", "trait|compatskills:apprentice");
addResearchLock("ESSENTIASMELTERVOID", "compatskills:technology|31");

addResearchLock("TAR_MITHRILLIUM", "trait|compatskills:adept");
addResearchLock("TAR_MITHRILLIUM_SMELTER", "compatskills:technology|57");

addResearchLock("TAR_ADAMINITE", "trait|compatskills:master");
addResearchLock("TAR_ADAMINITE_SMELTER", "compatskills:technology|68");

addResearchLock("TAR_MITHMINITE", "trait|compatskills:master", "compatskills:smithing|91");
addResearchLock("TAR_MITHMINITE_SMELTER", "compatskills:technology|83");

addResearchLock("RIFTCLOSER", "reskillable:building|31");

addResearchLock("TAR_MOB_SUMMONING", "compatskills:taming|78");

addResearchLock("INFUSIONELDRITCH", "reskillable:magic|89", "trait|compatskills:master");
addResearchLock("INFUSIONANCIENT", "compatskills:taming|87", "trait|compatskills:master");

addResearchLock("BASICTURRET", "reskillable:attack|19");
addResearchLock("ADVANCEDTURRET", "reskillable:attack|31");

addResearchLock("WORKBENCHCHARGER", "reskillable:magic|29", "reskillable:building|16", "compatskills:technology|17", "reskillable:gathering|9");

//Knowledge

addKnowledgeLock("ARTIFICE", "O", "reskillable:magic|21", "compatskills:smithing|12");
addKnowledgeLock("ARTIFICE", "T", "reskillable:magic|21", "compatskills:smithing|12");

addKnowledgeLock("INFUSION", "O", "reskillable:magic|31", "trait|compatskills:novice");
addKnowledgeLock("INFUSION", "T", "reskillable:magic|31", "trait|compatskills:novice");

addKnowledgeLock("GOLEMANCY", "O", "reskillable:magic|21", "compatskills:technology|21", "compatskills:taming|17");
addKnowledgeLock("GOLEMANCY", "T", "reskillable:magic|21", "compatskills:technology|21", "compatskills:taming|17");

addKnowledgeLock("ELDRITCH", "O", "reskillable:magic|78");
addKnowledgeLock("ELDRITCH", "T", "reskillable:magic|78");

addKnowledgeLock("THAUMADDITIONS", "O", "compatskills:smithing|31");
addKnowledgeLock("THAUMADDITIONS", "T", "compatskills:smithing|31");


//Ensure they have research before they can learn it in transmutation
addRequirement(<thaumadditions:mithrillium_ingot>, "research|TAR_MITHRILLIUM");
addRequirement(<thaumadditions:adaminite_ingot>, "research|TAR_ADAMINITE");
addRequirement(<thaumadditions:adaminite_smelter>, "research|TAR_ADAMINITE_SMELTER");