#priority 9999

import mods.compatskills.TraitCreator.createTrait;
import mods.compatskills.Skill;

//Magic

var botania = createTrait("unlock_botania", 0, 2, "reskillable:magic", 3);
botania.name = "Botania";
botania.description = "Unlocks access to Botania";
botania.icon = "botania:textures/items/rune0.png";

var thaumcraft = createTrait("unlock_thaumcraft", 0, 0, "reskillable:magic", 4, "trait|compatskills:unlock_botania");
thaumcraft.name = "Thaumcraft";
thaumcraft.description = "Unlocks access to Thaumcraft";
thaumcraft.icon = "thaumcraft:textures/items/thaumonomicon.png";

var bloodmagic = createTrait("unlock_bloodmagic", 3, 0, "reskillable:magic", 3);
bloodmagic.name = "Blood Magic";
bloodmagic.description = "Unlocks access to Blood Magic";
bloodmagic.icon = "bloodmagic:textures/items/blankslate.png";

var astralsorcery = createTrait("unlock_astralsorcery", 4, 1, "reskillable:magic", 2, "trait|compatskills:unlock_botania");
astralsorcery.name = "Astral Sorcery";
astralsorcery.description = "Unlocks access to Astral Sorcery";
astralsorcery.icon = "astralsorcery:textures/items/tome_astral.png";

var projecte = createTrait("unlock_projecte", 2, 3, "reskillable:magic", 2);
projecte.name = "ProjectE";
projecte.description = "Unlocks access to ProjectE";
projecte.icon = "projecte:textures/items/philosophers_stone.png";

//Farming

var mystical = createTrait("unlock_mystical", 1, 0, "reskillable:farming", 3, "trait|compatskills:unlock_projecte");
mystical.name = "Mystical Agriculture";
mystical.description = "Unlocks access to Mystical Agriculture crops";
mystical.icon = "mysticalagriculture:textures/items/master_infusion_crystal.png";


//Technology

var wireless = createTrait("wireless", 2, 0, "compatskills:technology", 7, "compatskills:technology|43");
wireless.name = "Wireless Transmission";
wireless.description = "Unlocks access to being able to transfer energy, items, and liquids without wires or cables.";
wireless.icon = "enderio:textures/blocks/block_wireless_charger_on.png";

var advwireless = createTrait("advwireless", 3, 2, "compatskills:technology", 7, "compatskills:technology|72", "trait|compatskills:wireless");
advwireless.name = "Advanced Wireless Transmission";
advwireless.description = "Allows for understanding of player teleportation.";
advwireless.icon = "mekanism:textures/items/portableteleporter.png";

var clean_energy = createTrait("clean_energy", 1, 3, "compatskills:technology", 4, "compatskills:technology|21", "reskillable:farming|31", "compatskills:taming|11");
clean_energy.name = "Clean Energy";
clean_energy.description = "Unlocks the ability to produce clean renewable energy.";
clean_energy.icon = "enderio:textures/blocks/solar_panel_vibrant_top.png";



//Smithing
var novice = createTrait("novice", 1, 0, "compatskills:smithing", 0, "compatskills:smithing|15");
novice.name = "Novice Smith";
novice.description = "You are comfortable with handling basic materials.";
novice.icon = "minecraft:textures/items/iron_ingot.png";

var apprentice = createTrait("apprentice", 3, 0, "compatskills:smithing", 0, "compatskills:smithing|30");
apprentice.name = "Apprentice Smith";
apprentice.description = "You are comfortable with handling more advanced materials.";
apprentice.icon = "minecraft:textures/items/gold_ingot.png";

var adept = createTrait("adept", 1, 2, "compatskills:smithing", 0, "compatskills:smithing|50", "reskillable:building|7", "reskillable:agility|7");
adept.name = "Adept Smith";
adept.description = "You are comfortable with handling advanced materials.";
adept.icon = "minecraft:textures/items/diamond.png";

var master = createTrait("master", 3, 2, "compatskills:smithing", 0, "compatskills:smithing|75", "reskillable:building|16", "reskillable:agility|16");
master.name = "Master Smith";
master.description = "You are comfortable with handling most materials.";
master.icon = "avaritia:textures/items/resource/crystal_matrix_ingot.png";


//Taming
var small_tamer = createTrait("small_tamer", 0, 1, "compatskills:taming", 0, "compatskills:taming|9", "reskillable:agility|6");
small_tamer.name = "Small Tamer";
small_tamer.description = "Allows the taming of small animals.";
small_tamer.icon = "minecraft:textures/items/fish_cod_raw.png";

var medium_tamer = createTrait("medium_tamer", 1, 3, "compatskills:taming", 0, "compatskills:taming|17", "reskillable:agility|21");
medium_tamer.name = "Medium Tamer";
medium_tamer.description = "Allows the taming of medium sized animals.";
medium_tamer.icon = "minecraft:textures/items/bone.png";

var large_tamer = createTrait("large_tamer", 3, 1, "compatskills:taming", 0, "compatskills:taming|37", "reskillable:agility|45");
large_tamer.name = "Large Tamer";
large_tamer.description = "Allows the taming of large animals.";
large_tamer.icon = "minecraft:textures/items/saddle.png";