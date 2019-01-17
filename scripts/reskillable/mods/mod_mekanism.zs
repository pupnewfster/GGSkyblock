#modloaded compatskills reskillable mekanism

import mods.compatskills.Requirement.addRequirement;

addRequirement(<mekanism:basicblock:6>.withTag({tier: 4}), "none");
addRequirement(<mekanism:energycube>.withTag({tier: 4}), "none");
addRequirement(<mekanism:machineblock2:11>.withTag({tier: 4}), "none");
addRequirement(<mekanism:gastank>.withTag({tier: 4}), "none");

addRequirement(<mekanism:machineblock3>, "trait|compatskills:wireless");
addRequirement(<mekanism:basicblock:7>, "trait|compatskills:advwireless");
addRequirement(<mekanism:machineblock:11>, "trait|compatskills:advwireless");
addRequirement(<mekanism:portableteleporter>, "trait|compatskills:advwireless");
addRequirement(<mekanism:machineblock3:1>, "trait|compatskills:clean_energy");


addRequirement(<mekanism:machineblock2:13>, "compatskills:technology|45");
addRequirement(<mekanism:machineblock2:14>, "compatskills:technology|67");
addRequirement(<mekanism:machineblock2:15>, "compatskills:technology|79");

//mekanism reactor locks
addRequirement(<mekanismgenerators:reactor>, "compatskills:technology|137");
addRequirement(<mekanismgenerators:reactor:1>, "compatskills:technology|115");
addRequirement(<mekanismgenerators:reactor:2>, "compatskills:technology|125");
addRequirement(<mekanismgenerators:reactor:3>, "compatskills:technology|142");
addRequirement(<mekanismgenerators:reactorglass>, "compatskills:technology|115", "reskillable:building|109");
addRequirement(<mekanismgenerators:reactorglass:1>, "compatskills:technology|121", "reskillable:building|109");


addRequirement(<mekanism:jetpack>, "compatskills:technology|45");
addRequirement(<mekanism:jetpack>, "compatskills:technology|57", "reskillable:defense|67");


var locks = {
	smelter : ["compatskills:smithing|27"],
	smelter1 : ["compatskills:smithing|36", "compatskills:technology|31"],
	smelter2 : ["compatskills:smithing|42", "compatskills:technology|42"],
	smelter3 : ["compatskills:smithing|57", "compatskills:technology|53"],
	
	enrichment : ["compatskills:technology|31"],
	enrichment1 : ["compatskills:technology|41"],
	enrichment2 : ["compatskills:technology|56"],
	enrichment3 : ["compatskills:technology|71"],
	
	crusher : ["reskillable:building|6", "reskillable:mining|12"],
	crusher1 : ["reskillable:building|8", "reskillable:mining|14", "compatskills:technology|31"],
	crusher2 : ["reskillable:building|10", "reskillable:mining|16", "compatskills:technology|42"],
	crusher3 : ["reskillable:building|12", "reskillable:mining|18", "compatskills:technology|53"],
	
	compressing1 : ["compatskills:technology|31"],
	compressing2 : ["compatskills:technology|43"],
	compressing3 : ["compatskills:technology|56"],
	
	combiner : ["reskillable:building|17"],
	combiner1 : ["reskillable:building|21", "compatskills:technology|31"],
	combiner2 : ["reskillable:building|26", "compatskills:technology|42"],
	combiner3 : ["reskillable:building|32", "compatskills:technology|53"],
	
	purification : ["compatskills:smithing|32", "reskillable:building|10", "reskillable:agility|13"],
	purification1 : ["compatskills:smithing|41", "reskillable:building|14", "reskillable:agility|15", "compatskills:technology|31"],
	purification2 : ["compatskills:smithing|52", "reskillable:building|19", "reskillable:agility|17", "compatskills:technology|42"],
	purification3 : ["compatskills:smithing|63", "reskillable:building|26", "reskillable:agility|19", "compatskills:technology|53"],
	
	injection : ["compatskills:technology|51"],
	injection1 : ["compatskills:technology|63"],
	injection2 : ["compatskills:technology|74"],
	injection3 : ["compatskills:technology|82"],
	
	infuser : ["compatskills:smithing|29"],
	infuser1 : ["compatskills:smithing|33", "compatskills:technology|41"],
	infuser2 : ["compatskills:smithing|38", "compatskills:technology|56"],
	infuser3 : ["compatskills:smithing|47", "compatskills:technology|71"],
	
	condensentrator : ["compatskills:technology|32"],
	oxidizer : ["compatskills:technology|41"],
	chemical_infuser : ["compatskills:technology|41"],
	sawmill : ["reskillable:building|12"],
	dissolution : ["compatskills:technology|73"],
	washer : ["compatskills:technology|67"],
	crystallizer : ["compatskills:technology|64"],
	reaction : ["compatskills:technology|34"],
	
	bin : ["reskillable:building|14"],
	bin1 : ["reskillable:building|28"],
	bin2 : ["reskillable:building|56", "compatskills:technology|24"],
	bin3 : ["reskillable:building|112", "compatskills:technology|48"],
	
	fluid_tank : ["reskillable:building|14"],
	fluid_tank1 : ["reskillable:building|28"],
	fluid_tank2 : ["reskillable:building|56", "compatskills:technology|27"],
	fluid_tank3 : ["reskillable:building|112", "compatskills:technology|53"],
	
	gas_tank : ["reskillable:building|14"],
	gas_tank1 : ["reskillable:building|28"],
	gas_tank2 : ["reskillable:building|56", "compatskills:technology|28"],
	gas_tank3 : ["reskillable:building|112", "compatskills:technology|54"],
	
	power_cube : ["compatskills:technology|36"],
	power_cube1 : ["compatskills:technology|52"],
	power_cube2 : ["compatskills:technology|73"],
	power_cube3 : ["compatskills:technology|99"],
	
	induction : ["compatskills:technology|47"],
	induction1 : ["compatskills:technology|63"],
	induction2 : ["compatskills:technology|84"],
	induction3 : ["compatskills:technology|110"]
} as string[][string];


var basic_installer = "mekanism:tierinstaller";
var advanced_installer = "mekanism:tierinstaller:1";
var elite_installer = "mekanism:tierinstaller:2";
var ultimate_installer = "mekanism:tierinstaller:3";



//bins
addRequirement(<mekanism:basicblock:6>.withTag({tier: 0}), combine(locks.bin, installerLock(advanced_installer, locks.bin1)));
addRequirement(<mekanism:basicblock:6>.withTag({tier: 1}), combine(locks.bin1, installerLock(elite_installer, locks.bin2)));
addRequirement(<mekanism:basicblock:6>.withTag({tier: 2}), combine(locks.bin2, installerLock(ultimate_installer, locks.bin3)));
addRequirement(<mekanism:basicblock:6>.withTag({tier: 3}), locks.bin3);

//fluid tanks
addRequirement(<mekanism:machineblock2:11>.withTag({tier: 0}), combine(locks.fluid_tank, installerLock(advanced_installer, locks.fluid_tank1)));
addRequirement(<mekanism:machineblock2:11>.withTag({tier: 1}), combine(locks.fluid_tank1, installerLock(elite_installer, locks.fluid_tank2)));
addRequirement(<mekanism:machineblock2:11>.withTag({tier: 2}), combine(locks.fluid_tank2, installerLock(ultimate_installer, locks.fluid_tank3)));
addRequirement(<mekanism:machineblock2:11>.withTag({tier: 3}), locks.fluid_tank3);

//gas tanks
addRequirement(<mekanism:gastank>.withTag({tier: 0}), combine(locks.gas_tank, installerLock(advanced_installer, locks.gas_tank1)));
addRequirement(<mekanism:gastank>.withTag({tier: 1}), combine(locks.gas_tank1, installerLock(elite_installer, locks.gas_tank2)));
addRequirement(<mekanism:gastank>.withTag({tier: 2}), combine(locks.gas_tank2, installerLock(ultimate_installer, locks.gas_tank3)));
addRequirement(<mekanism:gastank>.withTag({tier: 3}), locks.gas_tank3);

//power cubes
addRequirement(<mekanism:energycube>.withTag({tier: 0}), combine(locks.power_cube, installerLock(advanced_installer, locks.power_cube1)));
addRequirement(<mekanism:energycube>.withTag({tier: 1}), combine(locks.power_cube1, installerLock(elite_installer, locks.power_cube2)));
addRequirement(<mekanism:energycube>.withTag({tier: 2}), combine(locks.power_cube2, installerLock(ultimate_installer, locks.power_cube3)));
addRequirement(<mekanism:energycube>.withTag({tier: 3}), locks.power_cube3);

//Induction
addRequirement(<mekanism:basicblock2:3>.withTag({tier: 0}), locks.induction);
addRequirement(<mekanism:basicblock2:3>.withTag({tier: 1}), locks.induction1);
addRequirement(<mekanism:basicblock2:3>.withTag({tier: 2}), locks.induction2);
addRequirement(<mekanism:basicblock2:3>.withTag({tier: 3}), locks.induction3);
addRequirement(<mekanism:basicblock2:4>.withTag({tier: 0}), locks.induction);
addRequirement(<mekanism:basicblock2:4>.withTag({tier: 1}), locks.induction1);
addRequirement(<mekanism:basicblock2:4>.withTag({tier: 2}), locks.induction2);
addRequirement(<mekanism:basicblock2:4>.withTag({tier: 3}), locks.induction3);


addRequirement(<mekanism:machineblock:10>, combine(locks.smelter, installerLock(basic_installer, locks.smelter1)));
addRequirement(<mekanism:machineblock:5>.withTag({recipeType: 0}), combine(locks.smelter1, installerLock(advanced_installer, locks.smelter2)));
addRequirement(<mekanism:machineblock:6>.withTag({recipeType: 0}), combine(locks.smelter2, installerLock(elite_installer, locks.smelter3)));
addRequirement(<mekanism:machineblock:7>.withTag({recipeType: 0}), locks.smelter3);


addRequirement(<mekanism:machineblock>, combine(locks.enrichment, installerLock(basic_installer, locks.enrichment1)));
addRequirement(<mekanism:machineblock:5>.withTag({recipeType: 1}), combine(locks.enrichment1, installerLock(advanced_installer, locks.enrichment2)));
addRequirement(<mekanism:machineblock:6>.withTag({recipeType: 1}), combine(locks.enrichment2, installerLock(elite_installer, locks.enrichment3)));
addRequirement(<mekanism:machineblock:7>.withTag({recipeType: 1}), locks.enrichment3);


addRequirement(<mekanism:machineblock:3>, combine(locks.crusher, installerLock(basic_installer, locks.crusher1)));
addRequirement(<mekanism:machineblock:5>.withTag({recipeType: 2}), combine(locks.crusher1, installerLock(advanced_installer, locks.crusher2)));
addRequirement(<mekanism:machineblock:6>.withTag({recipeType: 2}), combine(locks.crusher2, installerLock(elite_installer, locks.crusher3)));
addRequirement(<mekanism:machineblock:7>.withTag({recipeType: 2}), locks.crusher3);


addRequirement(<mekanism:machineblock:1>, installerLock(basic_installer, locks.compressing1));
addRequirement(<mekanism:machineblock:5>.withTag({recipeType: 3}), combine(locks.compressing1, installerLock(advanced_installer, locks.compressing2)));
addRequirement(<mekanism:machineblock:6>.withTag({recipeType: 3}), combine(locks.compressing2, installerLock(elite_installer, locks.compressing3)));
addRequirement(<mekanism:machineblock:7>.withTag({recipeType: 3}), locks.compressing3);


addRequirement(<mekanism:machineblock:2>, combine(locks.combiner, installerLock(basic_installer, locks.combiner1)));
addRequirement(<mekanism:machineblock:5>.withTag({recipeType: 4}), combine(locks.combiner1, installerLock(advanced_installer, locks.combiner2)));
addRequirement(<mekanism:machineblock:6>.withTag({recipeType: 4}), combine(locks.combiner2, installerLock(elite_installer, locks.combiner3)));
addRequirement(<mekanism:machineblock:7>.withTag({recipeType: 4}), locks.combiner3);


addRequirement(<mekanism:machineblock:8>, combine(locks.infuser, installerLock(basic_installer, locks.infuser1)));
addRequirement(<mekanism:machineblock:5>.withTag({recipeType: 7}), combine(locks.infuser1, installerLock(advanced_installer, locks.infuser2)));
addRequirement(<mekanism:machineblock:6>.withTag({recipeType: 7}), combine(locks.infuser2, installerLock(elite_installer, locks.infuser3)));
addRequirement(<mekanism:machineblock:7>.withTag({recipeType: 7}), locks.infuser3);


addRequirement(<mekanism:machineblock2:3>, combine(locks.injection, installerLock(basic_installer, locks.injection1)));
addRequirement(<mekanism:machineblock:5>.withTag({recipeType: 6}), combine(locks.injection1, installerLock(advanced_installer, locks.injection2)));
addRequirement(<mekanism:machineblock:6>.withTag({recipeType: 6}), combine(locks.injection2, installerLock(elite_installer, locks.injection3)));
addRequirement(<mekanism:machineblock:7>.withTag({recipeType: 6}), locks.injection3);


addRequirement(<mekanism:machineblock:9>, combine(locks.purification, installerLock(basic_installer, locks.purification1)));
addRequirement(<mekanism:machineblock:5>.withTag({recipeType: 5}), combine(locks.purification1, installerLock(advanced_installer, locks.purification2)));
addRequirement(<mekanism:machineblock:6>.withTag({recipeType: 5}), combine(locks.purification2, installerLock(elite_installer, locks.purification3)));
addRequirement(<mekanism:machineblock:7>.withTag({recipeType: 5}), locks.purification3);


addRequirement(<mekanism:machineblock2>, locks.condensentrator);
addRequirement(<mekanism:machineblock2:1>, locks.oxidizer);
addRequirement(<mekanism:machineblock2:2>, locks.chemical_infuser);
addRequirement(<mekanism:machineblock2:5>, locks.sawmill);
addRequirement(<mekanism:machineblock2:6>, locks.dissolution);
addRequirement(<mekanism:machineblock2:7>, locks.washer);
addRequirement(<mekanism:machineblock2:8>, locks.crystallizer);
addRequirement(<mekanism:machineblock2:10>, locks.reaction);

function installerLock(installer as string, nextRequirements as string[]) as string {
	var lastRequirement = "";
	for i, requirement in nextRequirements {
		if (i == 0) {
			lastRequirement = requirement;
		} else {
			lastRequirement = "and|[" + lastRequirement + "]~[" + requirement + "]";
		}
	}
	return "or|[not|stack|" + installer + "]~[" + lastRequirement + "]";
}

function combine(first as string[], second as string) as string[] {
	var array as string[] = first;
	array += second;
	return array;
}