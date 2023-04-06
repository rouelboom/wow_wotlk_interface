local addonName, addon = ...

addon.QUESTIE.correctionsObjectiveOrder = {
	-- https://tbc.wowhead.com/quest=10503/the-bladespire-threat
	-- objectives switched; first kill credit then creature
	[10503] = {2, 1},
	-- https://tbc.wowhead.com/quest=10861/veil-lithic-preemptive-strike
	-- objectives switched; first object then creature
	[10861] = {2, 1},
}

-- for some reason (probably a good one e.g. performance) questie reports quests started by an item as started by the item dropping the item
-- we want to know which quests is started by an item in order to generate the use item button
-- therefore we 'correct' this here
-- ids for items starting a quest exported from wowhead: https://www.wowhead.com/wotlk/items?filter=6;1;0
addon.QUESTIE.correctionsQuestAccept =
{
	[13326] = {{Type = "item", Id = 44326}},
	[24554] = {{Type = "item", Id = 50380}},
	[13375] = {{Type = "item", Id = 44577}},
	[11178] = {{Type = "item", Id = 33102}},
	[12518] = {{Type = "item", Id = 44148}},
	[10413] = {{Type = "item", Id = 29738}},
	[13148] = {{Type = "item", Id = 43297}},
	[13372] = {{Type = "item", Id = 44569}},
	[12517] = {{Type = "item", Id = 37163}},
	[14443] = {{Type = "item", Id = 50379}},
	[10825] = {{Type = "item", Id = 31489}},
	[10938] = {{Type = "item", Id = 31890}},
	[11007] = {{Type = "item", Id = 32405}},
	[9731] = {{Type = "item", Id = 24330}},
	[9861] = {{Type = "item", Id = 24504}},
	[485] = {{Type = "item", Id = 8704}},
	[12798] = {{Type = "item", Id = 37164}},
	[9827] = {{Type = "item", Id = 24483}},
	[10941] = {{Type = "item", Id = 31914}},
	[10940] = {{Type = "item", Id = 31907}},
	[351] = {{Type = "item", Id = 8623}},
	[10793] = {{Type = "item", Id = 31345}},
	[9373] = {{Type = "item", Id = 23338}},
	[13311] = {{Type = "item", Id = 44158}},
	[2198] = {{Type = "item", Id = 7666}},
	[2766] = {{Type = "item", Id = 8705}},
	[10754] = {{Type = "item", Id = 31239}},
	[9872] = {{Type = "item", Id = 24558}},
	[11002] = {{Type = "item", Id = 32385}},
	[10939] = {{Type = "item", Id = 31891}},
	[635] = {{Type = "item", Id = 4614}},
	[10719] = {{Type = "item", Id = 31120}},
	[9764] = {{Type = "item", Id = 24367}},
	[10524] = {{Type = "item", Id = 30431}},
	[11400] = {{Type = "item", Id = 33978}},
	[10395] = {{Type = "item", Id = 29588}},
	[10621] = {{Type = "item", Id = 30756}},
	[10797] = {{Type = "item", Id = 31363}},
	[13622] = {{Type = "item", Id = 45039}},
	[2882] = {{Type = "item", Id = 9254}},
	[10810] = {{Type = "item", Id = 31384}},
	[13325] = {{Type = "item", Id = 44276}},
	[11081] = {{Type = "item", Id = 32726}},
	[136] = {{Type = "item", Id = 1357}},
	[6522] = {{Type = "item", Id = 17008}},
	[337] = {{Type = "item", Id = 2794}},
	[9871] = {{Type = "item", Id = 24559}},
	[13327] = {{Type = "item", Id = 44294}},
	[624] = {{Type = "item", Id = 4056}},
	[11041] = {{Type = "item", Id = 32621}},
	[12888] = {{Type = "item", Id = 41267}},
	[9418] = {{Type = "item", Id = 23580}},
	[7907] = {{Type = "item", Id = 19228}},
	[9911] = {{Type = "item", Id = 25459}},
	[10880] = {{Type = "item", Id = 31707}},
	[522] = {{Type = "item", Id = 3668}},
	[9301] = {{Type = "item", Id = 22970}},
	[11419] = {{Type = "item", Id = 34028}},
	[6981] = {{Type = "item", Id = 10441}},
	[2876] = {{Type = "item", Id = 9250}},
	[9247] = {{Type = "item", Id = 22723}},
	[13324] = {{Type = "item", Id = 44259}},
	[13845] = {{Type = "item", Id = 46004}},
	[12491] = {{Type = "item", Id = 38280}},
	[1148] = {{Type = "item", Id = 5877}},
	[6564] = {{Type = "item", Id = 16790}},
	[24431] = {{Type = "item", Id = 49667}},
	[10755] = {{Type = "item", Id = 31241}},
	[7704] = {{Type = "item", Id = 18950}},
	[10134] = {{Type = "item", Id = 29476}},
	[11021] = {{Type = "item", Id = 32523}},
	[11531] = {{Type = "item", Id = 34469}},
	[5202] = {{Type = "item", Id = 13140}},
	[9300] = {{Type = "item", Id = 22974}},
	[9587] = {{Type = "item", Id = 23890}},
	[7929] = {{Type = "item", Id = 19267}},
	[9828] = {{Type = "item", Id = 24484}},
	[7928] = {{Type = "item", Id = 19257}},
	[10623] = {{Type = "item", Id = 30579}},
	[897] = {{Type = "item", Id = 5138}},
	[13631] = {{Type = "item", Id = 46052}},
	[123] = {{Type = "item", Id = 1307}},
	[9299] = {{Type = "item", Id = 22972}},
	[637] = {{Type = "item", Id = 4433}},
	[5083] = {{Type = "item", Id = 12771}},
	[6922] = {{Type = "item", Id = 16782}},
	[184] = {{Type = "item", Id = 1972}},
	[7810] = {{Type = "item", Id = 18706}},
	[968] = {{Type = "item", Id = 5352}},
	[9302] = {{Type = "item", Id = 22973}},
	[11003] = {{Type = "item", Id = 32386}},
	[11941] = {{Type = "item", Id = 35648}},
	[5123] = {{Type = "item", Id = 12842}},
	[7927] = {{Type = "item", Id = 19277}},
	[12922] = {{Type = "item", Id = 41556}},
	[13604] = {{Type = "item", Id = 45506}},
	[9295] = {{Type = "item", Id = 22977}},
	[9588] = {{Type = "item", Id = 23892}},
	[1918] = {{Type = "item", Id = 16408}},
	[2945] = {{Type = "item", Id = 9326}},
	[8446] = {{Type = "item", Id = 20644}},
	[12492] = {{Type = "item", Id = 38281}},
	[8552] = {{Type = "item", Id = 3985}},
	[1480] = {{Type = "item", Id = 20310}},
	[770] = {{Type = "item", Id = 4854}},
	[9304] = {{Type = "item", Id = 22975}},
	[654] = {{Type = "item", Id = 8524}},
	[10305] = {{Type = "item", Id = 29234}},
	[927] = {{Type = "item", Id = 5179}},
	[3513] = {{Type = "item", Id = 10621}},
	[9514] = {{Type = "item", Id = 23759}},
	[10307] = {{Type = "item", Id = 29236}},
	[373] = {{Type = "item", Id = 2874}},
	[3884] = {{Type = "item", Id = 11116}},
	[7495] = {{Type = "item", Id = 18423}},
	[7490] = {{Type = "item", Id = 18422}},
	[10306] = {{Type = "item", Id = 29235}},
	[178] = {{Type = "item", Id = 1962}},
	[1649] = {{Type = "item", Id = 6776}},
	[3373] = {{Type = "item", Id = 10454}},
	[12421] = {{Type = "item", Id = 37737}},
	[460] = {{Type = "item", Id = 3317}},
	[10182] = {{Type = "item", Id = 29233}},
	[10229] = {{Type = "item", Id = 28552}},
	[12420] = {{Type = "item", Id = 37736}},
	[9455] = {{Type = "item", Id = 23678}},
	[14079] = {{Type = "item", Id = 46875}},
	[14083] = {{Type = "item", Id = 46877}},
	[8470] = {{Type = "item", Id = 20741}},
	[12278] = {{Type = "item", Id = 37571}},
	[9875] = {{Type = "item", Id = 24407}},
	[14203] = {{Type = "item", Id = 48679}},
	[7738] = {{Type = "item", Id = 18972}},
	[13819] = {{Type = "item", Id = 46053}},
	[12839] = {{Type = "item", Id = 40666}},
	[832] = {{Type = "item", Id = 4903}},
	[2978] = {{Type = "item", Id = 9370}},
	[5262] = {{Type = "item", Id = 13250}},
	[7501] = {{Type = "item", Id = 18359}},
	[8801] = {{Type = "item", Id = 21221}},
	[14352] = {{Type = "item", Id = 49205}},
	[4451] = {{Type = "item", Id = 11818}},
	[4882] = {{Type = "item", Id = 12558}},
	[12146] = {{Type = "item", Id = 36855}},
	[3181] = {{Type = "item", Id = 10000}},
	[7735] = {{Type = "item", Id = 18969}},
	[8791] = {{Type = "item", Id = 21220}},
	[12055] = {{Type = "item", Id = 36742}},
	[12507] = {{Type = "item", Id = 38321}},
	[1100] = {{Type = "item", Id = 5791}},
	[12631] = {{Type = "item", Id = 38660}},
	[7761] = {{Type = "item", Id = 18987}},
	[7781] = {{Type = "item", Id = 19003}},
	[13204] = {{Type = "item", Id = 43512}},
	[14085] = {{Type = "item", Id = 46876}},
	[14082] = {{Type = "item", Id = 46879}},
	[361] = {{Type = "item", Id = 2839}},
	[9616] = {{Type = "item", Id = 23910}},
	[11632] = {{Type = "item", Id = 34777}},
	[819] = {{Type = "item", Id = 4926}},
	[939] = {{Type = "item", Id = 11668}},
	[12059] = {{Type = "item", Id = 36746}},
	[13420] = {{Type = "item", Id = 44725}},
	[883] = {{Type = "item", Id = 5099}},
	[885] = {{Type = "item", Id = 5103}},
	[7502] = {{Type = "item", Id = 18360}},
	[8308] = {{Type = "item", Id = 20461}},
	[9564] = {{Type = "item", Id = 23850}},
	[12633] = {{Type = "item", Id = 38673}},
	[23] = {{Type = "item", Id = 16303}},
	[7498] = {{Type = "item", Id = 18356}},
	[8887] = {{Type = "item", Id = 21776}},
	[10244] = {{Type = "item", Id = 28598}},
	[10393] = {{Type = "item", Id = 29590}},
	[11729] = {{Type = "item", Id = 34984}},
	[12590] = {{Type = "item", Id = 38567}},
	[7938] = {{Type = "item", Id = 19424}},
	[12306] = {{Type = "item", Id = 37599}},
	[14087] = {{Type = "item", Id = 46884}},
	[551] = {{Type = "item", Id = 3706}},
	[594] = {{Type = "item", Id = 4098}},
	[3374] = {{Type = "item", Id = 10589}},
	[7787] = {{Type = "item", Id = 19018}},
	[4881] = {{Type = "item", Id = 12564}},
	[2] = {{Type = "item", Id = 16305}},
	[7604] = {{Type = "item", Id = 18628}},
	[7650] = {{Type = "item", Id = 18770}},
	[7785] = {{Type = "item", Id = 19016}},
	[8183] = {{Type = "item", Id = 19802}},
	[8778] = {{Type = "item", Id = 21257}},
	[9695] = {{Type = "item", Id = 24228}},
	[11972] = {{Type = "item", Id = 35723}},
	[24] = {{Type = "item", Id = 16304}},
	[7649] = {{Type = "item", Id = 18769}},
	[8784] = {{Type = "item", Id = 21230}},
	[9175] = {{Type = "item", Id = 22597}},
	[9181] = {{Type = "item", Id = 22602}},
	[9535] = {{Type = "item", Id = 23797}},
	[9550] = {{Type = "item", Id = 23837}},
	[13043] = {{Type = "item", Id = 42772}},
	[14081] = {{Type = "item", Id = 46882}},
	[7504] = {{Type = "item", Id = 18362}},
	[7632] = {{Type = "item", Id = 18703}},
	[8471] = {{Type = "item", Id = 20742}},
	[8482] = {{Type = "item", Id = 20765}},
	[9985] = {{Type = "item", Id = 25706}},
	[12105] = {{Type = "item", Id = 36940}},
	[5805] = {{Type = "item", Id = 14646}},
	[5843] = {{Type = "item", Id = 14649}},
	[6681] = {{Type = "item", Id = 17126}},
	[8540] = {{Type = "item", Id = 20939}},
	[14086] = {{Type = "item", Id = 46880}},
	[830] = {{Type = "item", Id = 4881}},
	[1392] = {{Type = "item", Id = 6196}},
	[7499] = {{Type = "item", Id = 18357}},
	[7651] = {{Type = "item", Id = 18771}},
	[7783] = {{Type = "item", Id = 19002}},
	[8687] = {{Type = "item", Id = 21251}},
	[9120] = {{Type = "item", Id = 22520}},
	[11654] = {{Type = "item", Id = 34815}},
	[12168] = {{Type = "item", Id = 36958}},
	[14084] = {{Type = "item", Id = 46878}},
	[24745] = {{Type = "item", Id = 50320}},
	[1423] = {{Type = "item", Id = 6172}},
	[7500] = {{Type = "item", Id = 18358}},
	[8541] = {{Type = "item", Id = 20940}},
	[8501] = {{Type = "item", Id = 20941}},
	[9613] = {{Type = "item", Id = 23904}},
	[11186] = {{Type = "item", Id = 33115}},
	[11398] = {{Type = "item", Id = 33962}},
	[13817] = {{Type = "item", Id = 45857}},
	[14088] = {{Type = "item", Id = 46883}},
	[1642] = {{Type = "item", Id = 6775}},
	[5582] = {{Type = "item", Id = 13920}},
	[8547] = {{Type = "item", Id = 20938}},
	[8536] = {{Type = "item", Id = 21751}},
	[9250] = {{Type = "item", Id = 22727}},
	[8474] = {{Type = "item", Id = 23228}},
	[9576] = {{Type = "item", Id = 23870}},
	[9672] = {{Type = "item", Id = 24132}},
	[9984] = {{Type = "item", Id = 25705}},
	[11790] = {{Type = "item", Id = 35120}},
	[12979] = {{Type = "item", Id = 42203}},
	[1] = {{Type = "item", Id = 6497}},
	[7503] = {{Type = "item", Id = 18361}},
	[7505] = {{Type = "item", Id = 18363}},
	[8497] = {{Type = "item", Id = 20807}},
	[8737] = {{Type = "item", Id = 21245}},
	[9187] = {{Type = "item", Id = 22608}},
	[9205] = {{Type = "item", Id = 22623}},
	[9326] = {{Type = "item", Id = 23181}},
	[9520] = {{Type = "item", Id = 23777}},
	[11185] = {{Type = "item", Id = 33114}},
	[11237] = {{Type = "item", Id = 33289}},
	[11260] = {{Type = "item", Id = 33345}},
	[11452] = {{Type = "item", Id = 34090}},
	[12147] = {{Type = "item", Id = 36856}},
	[5847] = {{Type = "item", Id = 14651}},
	[7506] = {{Type = "item", Id = 18364}},
	[7944] = {{Type = "item", Id = 19443}},
	[8489] = {{Type = "item", Id = 20798}},
	[8738] = {{Type = "item", Id = 21166}},
	[8775] = {{Type = "item", Id = 21253}},
	[8804] = {{Type = "item", Id = 21378}},
	[9197] = {{Type = "item", Id = 22615}},
	[9201] = {{Type = "item", Id = 22620}},
	[9594] = {{Type = "item", Id = 23900}},
	[11189] = {{Type = "item", Id = 33121}},
	[11395] = {{Type = "item", Id = 33961}},
	[11453] = {{Type = "item", Id = 34091}},
	[12057] = {{Type = "item", Id = 36744}},
	[12419] = {{Type = "item", Id = 37833}},
	[12781] = {{Type = "item", Id = 39713}},
	[884] = {{Type = "item", Id = 5102}},
	[3482] = {{Type = "item", Id = 10590}},
	[4281] = {{Type = "item", Id = 11463}},
	[5841] = {{Type = "item", Id = 14647}},
	[6662] = {{Type = "item", Id = 17116}},
	[7945] = {{Type = "item", Id = 19452}},
	[8308] = {{Type = "item", Id = 20460}},
	[8338] = {{Type = "item", Id = 20483}},
	[8537] = {{Type = "item", Id = 20945}},
	[8777] = {{Type = "item", Id = 21256}},
	[8809] = {{Type = "item", Id = 21381}},
	[9182] = {{Type = "item", Id = 22603}},
	[9185] = {{Type = "item", Id = 22606}},
	[9325] = {{Type = "item", Id = 23180}},
	[9330] = {{Type = "item", Id = 23182}},
	[9360] = {{Type = "item", Id = 23249}},
	[9798] = {{Type = "item", Id = 24414}},
	[10152] = {{Type = "item", Id = 28114}},
	[11987] = {{Type = "item", Id = 35744}},
	[708] = {{Type = "item", Id = 4613}},
	[1646] = {{Type = "item", Id = 6916}},
	[5089] = {{Type = "item", Id = 12780}},
	[5842] = {{Type = "item", Id = 14648}},
	[6661] = {{Type = "item", Id = 17115}},
	[1155] = {{Type = "item", Id = 17409}},
	[8502] = {{Type = "item", Id = 20942}},
	[8498] = {{Type = "item", Id = 20943}},
	[8536] = {{Type = "item", Id = 20946}},
	[8535] = {{Type = "item", Id = 20947}},
	[8575] = {{Type = "item", Id = 20949}},
	[8739] = {{Type = "item", Id = 21167}},
	[8770] = {{Type = "item", Id = 21246}},
	[8771] = {{Type = "item", Id = 21247}},
	[8773] = {{Type = "item", Id = 21248}},
	[8772] = {{Type = "item", Id = 21250}},
	[8774] = {{Type = "item", Id = 21252}},
	[8776] = {{Type = "item", Id = 21255}},
	[8779] = {{Type = "item", Id = 21259}},
	[8781] = {{Type = "item", Id = 21260}},
	[8782] = {{Type = "item", Id = 21262}},
	[8780] = {{Type = "item", Id = 21263}},
	[8783] = {{Type = "item", Id = 21265}},
	[8805] = {{Type = "item", Id = 21379}},
	[8806] = {{Type = "item", Id = 21380}},
	[8808] = {{Type = "item", Id = 21384}},
	[8810] = {{Type = "item", Id = 21385}},
	[8829] = {{Type = "item", Id = 21514}},
	[8770] = {{Type = "item", Id = 21749}},
	[8771] = {{Type = "item", Id = 21750}},
	[9186] = {{Type = "item", Id = 22607}},
	[9188] = {{Type = "item", Id = 22609}},
	[9190] = {{Type = "item", Id = 22610}},
	[9204] = {{Type = "item", Id = 22622}},
	[9206] = {{Type = "item", Id = 22624}},
	[9324] = {{Type = "item", Id = 23179}},
	[9331] = {{Type = "item", Id = 23183}},
	[9332] = {{Type = "item", Id = 23184}},
	[11266] = {{Type = "item", Id = 33347}},
	[11935] = {{Type = "item", Id = 35568}},
	[11933] = {{Type = "item", Id = 35569}},
	[12067] = {{Type = "item", Id = 36756}},
	[12271] = {{Type = "item", Id = 37432}},
	[12423] = {{Type = "item", Id = 37830}},
	[14089] = {{Type = "item", Id = 46881}},
	[4903] = {{Type = "item", Id = 12563}},
	[5844] = {{Type = "item", Id = 14650}},
	[8740] = {{Type = "item", Id = 20944}},
	[8538] = {{Type = "item", Id = 20948}},
	[8534] = {{Type = "item", Id = 21165}},
	[8539] = {{Type = "item", Id = 21249}},
	[8785] = {{Type = "item", Id = 21258}},
	[8786] = {{Type = "item", Id = 21261}},
	[8807] = {{Type = "item", Id = 21382}},
	[9178] = {{Type = "item", Id = 22600}},
	[9179] = {{Type = "item", Id = 22601}},
	[9183] = {{Type = "item", Id = 22604}},
	[9184] = {{Type = "item", Id = 22605}},
	[9194] = {{Type = "item", Id = 22612}},
	[9200] = {{Type = "item", Id = 22617}},
	[9202] = {{Type = "item", Id = 22618}},
	[9278] = {{Type = "item", Id = 22888}},
	[10130] = {{Type = "item", Id = 28113}},
	[11249] = {{Type = "item", Id = 33314}},
	[12021] = {{Type = "item", Id = 35855}},
	[14160] = {{Type = "item", Id = 47246}},
	[14483] = {{Type = "item", Id = 49641}},
	[7937] = {{Type = "item", Id = 19423}},
	[8496] = {{Type = "item", Id = 20806}},
	[8787] = {{Type = "item", Id = 21264}},
	[9191] = {{Type = "item", Id = 22611}},
	[9195] = {{Type = "item", Id = 22613}},
	[9196] = {{Type = "item", Id = 22614}},
	[9198] = {{Type = "item", Id = 22616}},
	[9203] = {{Type = "item", Id = 22621}},
	[9233] = {{Type = "item", Id = 22719}},
	[12085] = {{Type = "item", Id = 36780}},
}
