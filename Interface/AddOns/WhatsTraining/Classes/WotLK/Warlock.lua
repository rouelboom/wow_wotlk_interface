local _, wt = ...
if (wt.currentClass ~= "WARLOCK") then return end
wt.SpellsByLevel = {
	[1] = {{id = 688, cost = 100},{id = 348, cost = 10},},
	[4] = {{id = 172, cost = 100},{id = 702, cost = 100},},
	[6] = {{id = 1454, cost = 100},{id = 695, cost = 100, requiredIds = {686}},},
	[8] = {{id = 980, cost = 200},{id = 5782, cost = 200},},
	[10] = {{id = 1120, cost = 300},{id = 6201, cost = 300, requiredIds = {1120}},{id = 696, cost = 300, requiredIds = {687}},{id = 707, cost = 300, requiredIds = {348}},},
	[12] = {{id = 1108, cost = 600, requiredIds = {702}},{id = 755, cost = 600},{id = 705, cost = 600, requiredIds = {695}},},
	[14] = {{id = 6222, cost = 900, requiredIds = {172}},{id = 689, cost = 900},},
	[16] = {{id = 1455, cost = 1080, requiredIds = {1454}},{id = 5697, cost = 1200},},
	[18] = {{id = 1014, cost = 1500, requiredIds = {980}},{id = 693, cost = 1500, requiredIds = {1120}},{id = 5676, cost = 1500},},
	[20] = {{id = 706, cost = 2000},{id = 3698, cost = 2000, requiredIds = {755}},{id = 698, cost = 2000},{id = 1094, cost = 2000, requiredIds = {707}},{id = 5740, cost = 2000},{id = 1088, cost = 2000, requiredIds = {705}},{id = 5784, cost = 3500},},
	[22] = {{id = 6205, cost = 2500, requiredIds = {1108}},{id = 699, cost = 2500, requiredIds = {689}},{id = 6202, cost = 2500, requiredIds = {6201}},{id = 126, cost = 2500},},
	[24] = {{id = 6223, cost = 3000, requiredIds = {6222}},{id = 5138, cost = 3000},{id = 8288, cost = 3000, requiredIds = {1120}},{id = 5500, cost = 3000},{id = 18867, cost = 149, requiredTalentId = 17877},},
	[26] = {{id = 1714, cost = 4000},{id = 1456, cost = 3600, requiredIds = {1455}},{id = 132, cost = 4000},{id = 17919, cost = 4000, requiredIds = {5676}},},
	[28] = {{id = 6217, cost = 5000, requiredIds = {1014}},{id = 710, cost = 5000},{id = 6366, cost = 5000, requiredIds = {1120}},{id = 3699, cost = 5000, requiredIds = {3698}},{id = 1106, cost = 5000, requiredIds = {1088}},},
	[30] = {{id = 709, cost = 6000, requiredIds = {699}},{id = 20752, cost = 6000, requiredIds = {693}},{id = 1086, cost = 6000, requiredIds = {706}},{id = 1098, cost = 6000},{id = 1949, cost = 6000},{id = 2941, cost = 6000, requiredIds = {1094}},},
	[32] = {{id = 7646, cost = 7000, requiredIds = {6205}},{id = 1490, cost = 7000},{id = 6213, cost = 7000, requiredIds = {5782}},{id = 6229, cost = 7000},{id = 18868, cost = 349, requiredIds = {18867}, requiredTalentId = 17877},},
	[34] = {{id = 7648, cost = 8000, requiredIds = {6223}},{id = 5699, cost = 8000, requiredIds = {6202}},{id = 6219, cost = 8000, requiredIds = {5740}},{id = 17920, cost = 8000, requiredIds = {17919}},},
	[36] = {{id = 11687, cost = 8100, requiredIds = {1456}},{id = 17951, cost = 9000, requiredIds = {6366}},{id = 2362, cost = 9000, requiredIds = {1120}},{id = 3700, cost = 9000, requiredIds = {3699}},{id = 7641, cost = 9000, requiredIds = {1106}},},
	[38] = {{id = 11711, cost = 10000, requiredIds = {6217}},{id = 7651, cost = 10000, requiredIds = {709}},{id = 8289, cost = 10000, requiredIds = {8288}},},
	[40] = {{id = 5484, cost = 11000},{id = 20755, cost = 11000, requiredIds = {20752}},{id = 11733, cost = 11000, requiredIds = {1086}},{id = 11665, cost = 11000, requiredIds = {2941}},{id = 18869, cost = 549, requiredIds = {18868}, requiredTalentId = 17877},{id = 23161, cost = 20000},},
	[42] = {{id = 11707, cost = 11000, requiredIds = {7646}},{id = 6789, cost = 11000},{id = 11739, cost = 11000, requiredIds = {6229}},{id = 11683, cost = 11000, requiredIds = {1949}},{id = 17921, cost = 11000, requiredIds = {17920}},},
	[44] = {{id = 11671, cost = 12000, requiredIds = {7648}},{id = 11693, cost = 12000, requiredIds = {3700}},{id = 11725, cost = 12000, requiredIds = {1098}},{id = 11659, cost = 12000, requiredIds = {7641}},},
	[46] = {{id = 11721, cost = 13000, requiredIds = {1490}},{id = 11699, cost = 13000, requiredIds = {7651}},{id = 11688, cost = 11700, requiredIds = {11687}},{id = 17952, cost = 13000, requiredIds = {17951}},{id = 11729, cost = 13000, requiredIds = {5699}},{id = 11677, cost = 13000, requiredIds = {6219}},},
	[48] = {{id = 11712, cost = 14000, requiredIds = {11711}},{id = 18647, cost = 14000, requiredIds = {710}},{id = 17727, cost = 14000, requiredIds = {2362}},{id = 18870, cost = 700, requiredIds = {18869}, requiredTalentId = 17877},{id = 6353, cost = 14000},},
	[50] = {{id = 11719, cost = 15000, requiredIds = {1714}},{id = 18937, cost = 749, requiredTalentId = 18220},{id = 17925, cost = 15000, requiredIds = {6789}},{id = 20756, cost = 15000, requiredIds = {20755}},{id = 11734, cost = 15000, requiredIds = {11733}},{id = 11667, cost = 15000, requiredIds = {11665}},{id = 17922, cost = 15000, requiredIds = {17921}},},
	[52] = {{id = 11708, cost = 18000, requiredIds = {11707}},{id = 11675, cost = 18000, requiredIds = {8289}},{id = 11694, cost = 18000, requiredIds = {11693}},{id = 11740, cost = 18000, requiredIds = {11739}},{id = 11660, cost = 18000, requiredIds = {11659}},},
	[54] = {{id = 11672, cost = 20000, requiredIds = {11671}},{id = 11700, cost = 20000, requiredIds = {11699}},{id = 17928, cost = 20000, requiredIds = {5484}},{id = 11684, cost = 20000, requiredIds = {11683}},},
	[56] = {{id = 6215, cost = 22000, requiredIds = {6213}},{id = 11689, cost = 19800, requiredIds = {11688}},{id = 17953, cost = 22000, requiredIds = {17952}},{id = 18871, cost = 1100, requiredIds = {18870}, requiredTalentId = 17877},{id = 17924, cost = 22000, requiredIds = {6353}},},
	[58] = {{id = 11713, cost = 24000, requiredIds = {11712}},{id = 17926, cost = 24000, requiredIds = {17925}},{id = 11730, cost = 24000, requiredIds = {11729}},{id = 11726, cost = 24000, requiredIds = {11725}},{id = 11678, cost = 24000, requiredIds = {11677}},{id = 17923, cost = 24000, requiredIds = {17922}},},
	[60] = {{id = 25311, cost = 26000, requiredIds = {11672}},{id = 603, cost = 26000},{id = 11722, cost = 26000, requiredIds = {11721}},{id = 18938, cost = 1300, requiredIds = {18937}, requiredTalentId = 18220},{id = 30404, cost = 2500, requiredTalentId = 30108},{id = 20757, cost = 26000, requiredIds = {20756}},{id = 17728, cost = 26000, requiredIds = {17727}},{id = 11735, cost = 26000, requiredIds = {11734}},{id = 11695, cost = 26000, requiredIds = {11694}},{id = 28610, cost = 34000, requiredIds = {11740}},{id = 11668, cost = 26000, requiredIds = {11667}},{id = 25309, cost = 26000, requiredIds = {11668}},{id = 11661, cost = 26000, requiredIds = {11660}},{id = 30413, cost = 2500, requiredTalentId = 30283},},
	[61] = {{id = 27224, cost = 30000, requiredIds = {11708}},},
	[62] = {{id = 27219, cost = 30000, requiredIds = {11700}},{id = 28176, cost = 34000},{id = 25307, cost = 26000, requiredIds = {11661}},},
	[63] = {{id = 27263, cost = 1300, requiredIds = {18871}, requiredTalentId = 17877},},
	[64] = {{id = 29722, cost = 42000},{id = 27211, cost = 42000, requiredIds = {17924}},},
	[65] = {{id = 27216, cost = 46000, requiredIds = {25311}},{id = 27210, cost = 46000, requiredIds = {17923}},},
	[66] = {{id = 27250, cost = 51000, requiredIds = {17953}},{id = 28172, cost = 51000, requiredIds = {17728}},{id = 29858, cost = 51000, requiredIds = {1120}},},
	[67] = {{id = 27218, cost = 57000, requiredIds = {11713}},{id = 27217, cost = 57000, requiredIds = {11675}},{id = 27259, cost = 57000, requiredIds = {11695}},},
	[68] = {{id = 27223, cost = 63000, requiredIds = {17926}},{id = 27222, cost = 56700, requiredIds = {11689}},{id = 27230, cost = 63000, requiredIds = {11730}},{id = 29893, cost = 63000, requiredIds = {1120}},{id = 27213, cost = 63000, requiredIds = {11684}},},
	[69] = {{id = 30909, cost = 70000, requiredIds = {27224}},{id = 27228, cost = 70000, requiredIds = {11722}},{id = 27220, cost = 70000, requiredIds = {27219}},{id = 28189, cost = 70000, requiredIds = {28176}},{id = 27215, cost = 70000, requiredIds = {25309}},{id = 27212, cost = 70000, requiredIds = {11678}},{id = 27209, cost = 70000, requiredIds = {25307}},},
	[70] = {{id = 30910, cost = 78000, requiredIds = {603}},{id = 27265, cost = 1300, requiredIds = {18938}, requiredTalentId = 18220},{id = 59161, cost = 2500, requiredTalentId = 48181},{id = 27243, cost = 78000},{id = 30405, cost = 2500, requiredIds = {30404}, requiredTalentId = 30108},{id = 27238, cost = 78000, requiredIds = {20757}},{id = 27260, cost = 78000, requiredIds = {11735}},{id = 59170, cost = 2500, requiredTalentId = 50796},{id = 32231, cost = 78000, requiredIds = {29722}},{id = 30459, cost = 78000, requiredIds = {27210}},{id = 30546, cost = 3900, requiredIds = {27263}, requiredTalentId = 17877},{id = 30414, cost = 2500, requiredIds = {30413}, requiredTalentId = 30283},{id = 30545, cost = 78000, requiredIds = {27211}},},
	[71] = {{id = 47812, cost = 160000, requiredIds = {27216}},{id = 50511, cost = 160000, requiredIds = {30909}},},
	[72] = {{id = 47886, cost = 160000, requiredIds = {28172}},{id = 47890, cost = 160000, requiredIds = {28610}},{id = 61191, cost = 70000, requiredIds = {11726}},{id = 47819, cost = 160000, requiredIds = {27212}},},
	[73] = {{id = 47863, cost = 160000, requiredIds = {27218}},{id = 47859, cost = 160000, requiredIds = {27223}},{id = 47871, cost = 160000, requiredIds = {27230}},},
	[74] = {{id = 60219, cost = 160000, requiredIds = {27250}},{id = 47892, cost = 160000, requiredIds = {28189}},{id = 47837, cost = 100000, requiredIds = {32231}},{id = 47814, cost = 160000, requiredIds = {30459}},{id = 47808, cost = 160000, requiredIds = {27209}},},
	[75] = {{id = 59163, cost = 8000, requiredIds = {59161}, requiredTalentId = 48181},{id = 47835, cost = 160000, requiredIds = {27243}},{id = 47841, cost = 8000, requiredIds = {30405}, requiredTalentId = 30108},{id = 59171, cost = 8000, requiredIds = {59170}, requiredTalentId = 50796},{id = 47810, cost = 160000, requiredIds = {27215}},{id = 47826, cost = 8000, requiredIds = {30546}, requiredTalentId = 17877},{id = 47897, cost = 10000},{id = 47846, cost = 8000, requiredIds = {30414}, requiredTalentId = 30283},{id = 47824, cost = 160000, requiredIds = {30545}},},
	[76] = {{id = 47884, cost = 160000, requiredIds = {27238}},{id = 47793, cost = 160000, requiredIds = {27260}},{id = 47856, cost = 160000, requiredIds = {27259}},},
	[77] = {{id = 47813, cost = 160000, requiredIds = {47812}},{id = 47855, cost = 160000, requiredIds = {27217}},},
	[78] = {{id = 47865, cost = 160000, requiredIds = {27228}},{id = 47860, cost = 160000, requiredIds = {47859}},{id = 47857, cost = 160000, requiredIds = {27220}},{id = 47888, cost = 160000, requiredIds = {47886}},{id = 47891, cost = 160000, requiredIds = {47890}},{id = 47823, cost = 160000, requiredIds = {27213}},},
	[79] = {{id = 47864, cost = 160000, requiredIds = {47863}},{id = 47878, cost = 160000, requiredIds = {47871}},{id = 47893, cost = 160000, requiredIds = {47892}},{id = 47820, cost = 160000, requiredIds = {47819}},{id = 47815, cost = 160000, requiredIds = {47814}},{id = 47809, cost = 160000, requiredIds = {47808}},},
	[80] = {{id = 47867, cost = 160000, requiredIds = {30910}},{id = 59092, cost = 160000, requiredIds = {27265}, requiredTalentId = 18220},{id = 59164, cost = 8000, requiredIds = {59163}, requiredTalentId = 48181},{id = 57946, cost = 160000, requiredIds = {27222}},{id = 47836, cost = 160000, requiredIds = {47835}},{id = 47843, cost = 8000, requiredIds = {47841}, requiredTalentId = 30108},{id = 60220, cost = 160000, requiredIds = {60219}},{id = 47889, cost = 160000, requiredIds = {47793}},{id = 48018, cost = 160000},{id = 48020, cost = 160000},{id = 58887, cost = 160000, requiredIds = {29893}},{id = 59172, cost = 8000, requiredIds = {59171}, requiredTalentId = 50796},{id = 47811, cost = 160000, requiredIds = {47810}},{id = 47838, cost = 100000, requiredIds = {47837}},{id = 47827, cost = 8000, requiredIds = {47826}, requiredTalentId = 17877},{id = 61290, cost = 10000, requiredIds = {47897}},{id = 47847, cost = 8000, requiredIds = {47846}, requiredTalentId = 30283},{id = 47825, cost = 160000, requiredIds = {47824}},},
}