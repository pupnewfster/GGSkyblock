import mods.compatskills.Requirement.addRequirement;
import mods.compatskills.EMCLock.addEMCLock;
import crafttweaker.data.IData;

addRequirement(<projecte:item.pe_transmutation_tablet>, "trait|compatskills:wireless");
addRequirement(<projecte:condenser_mk2>, "reskillable:magic|41");

addRequirement(<projecte:dm_pedestal>, "reskillable:magic|67");
addRequirement(<projectex:personal_link>, "reskillable:magic|128", "compatskills:technology|109");

addRequirement(<projecte:item.pe_mercurial_eye>, "reskillable:building|37", "reskillable:magic|27");

addRequirement(<projecte:transmutation_table>, "none");
addRequirement(<projecte:item.pe_philosophers_stone>, "none");

addRequirement(<projecte:item.pe_tome>, "reskillable:agility|256", "reskillable:attack|256", "reskillable:building|256", "reskillable:defense|256", "reskillable:farming|256", "reskillable:gathering|256", "reskillable:magic|256", "reskillable:mining|256", "compatskills:smithing|256", "compatskills:technology|256", "compatskills:taming|256");


//Generates from the values below intermediary locks as well: https://pastebin.com/HZWLkNP1

var gap = 256;
var values = [
	[256 as IData, 16 as IData],
	[512 as IData, 19 as IData],
	[1024 as IData, 23 as IData],
	[2048 as IData, 32 as IData],
	[3072 as IData, 41 as IData],
	[4096 as IData, 48 as IData],
	[8192 as IData, 64 as IData],
	[65536 as IData, 77 as IData],
	[139264 as IData, 84 as IData],
	[5971968 as IData, 98 as IData],
	[430055424 as long as IData, 134 as IData],
	[5483151360 as long as IData, 163 as IData],
	[200000000000 as long as IData, 198 as IData],
	[1000000000000 as long as IData, 232 as IData],
	[1000000000000000 as long as IData, 256 as IData]
] as IData[][];

addEMCLock(32, "reskillable:magic|2");
addEMCLock(48, "reskillable:magic|3");
addEMCLock(64, "reskillable:magic|4");
addEMCLock(96, "reskillable:magic|6");
addEMCLock(128, "reskillable:magic|8");
addEMCLock(160, "reskillable:magic|10");
addEMCLock(192, "reskillable:magic|12");
addEMCLock(224, "reskillable:magic|14");

for i in 0 to values.length {
	var emc = values[i][0];
	var level = values[i][1];
	if (i == values.length - 1) {
		addEMCLock(emc, "reskillable:magic|" + level);
	} else {
		var emcDif = values[i + 1][0] - emc;
		var levelDif = values[i + 1][1] - level;
		var count = emcDif / gap;
		if (count == 0) {

		} else if (count <= levelDif) {
			var levelChange = levelDif / count;
			for j in 0 to count {
				addEMCLock(emc + j * gap, "reskillable:magic|" + (level + levelChange * j));
			}
		} else {
			var emcChange = emcDif / levelDif;
			for j in 0 to levelDif {
				addEMCLock(emc + emcChange * j, "reskillable:magic|" + (level + j));
			}
		}
	}
}