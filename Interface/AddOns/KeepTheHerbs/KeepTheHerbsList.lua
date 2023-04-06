local KeepTheHerbs, namespace = ...

-- ====================================================================================================
-- =                          All herbs in the game and all made by Alchemy.                          =
-- =                                  First we start with all herbs.                                  =
-- =                           After all herbs, all item made with Alchemy.                           =
-- ====================================================================================================

-- ====================================================================================================
-- =                                          Herbs used for                                          =
-- ====================================================================================================

HERB_LIST = {

    [765] = {                                           -- Silverleaf 银叶草
        1, 25, 50, 100,             -- Skill to herb
        2454,                       -- Elixir of Lion's Strength 狮王之力药剂
        5997,                       -- Elixir of Minor Defense 初级防御药剂
        118,                        -- Minor Healing Potion 初级治疗药水
        2455,                       -- Minor Mana Potion 初级法力药水
        2457,                       -- Elixir of Minor Agility 初级敏捷药剂
    },
    [785] = {                                           -- Mageroyal 魔皇草
        50, 75, 100, 150,           -- Skill to herb
        2455,                       -- Minor Mana Potion 初级法力药水
        2456,                       -- Minor Rejuvenation Potion 初级活力药水
        3383,                       -- Elixir of Wisdom 智慧药剂
        3384,                       -- Minor Magic Resistance Potion 初级抗魔药水
        3385,                       -- Lesser Mana Potion 次级法力药水
    },
    [2447] = {                                          -- Peacebloom 宁神花
        1, 25, 50, 100,             -- Skill to herb
        118,                        -- Minor Healing Potion 初级治疗药水
        3382,                       -- Weak Troll's Blood Potion 弱效巨魔之血药水
        2456,                       -- Minor Rejuvenation Potion 初级活力药水
        2458,                       -- Elixir of Minor Fortitude 初级坚韧药剂
        4596,                       -- Discolored Healing Potion 褪色的治疗药水
    },
    [2449] = {                                          -- Earthroot 地根草
        15, 40, 65, 115,            -- Skill to herb
        2454,                       -- Elixir of Lion's Strength 狮王之力药剂
        3382,                       -- Weak Troll's Blood Potion 弱效巨魔之血药水
        2458,                       -- Elixir of Minor Fortitude 初级坚韧药剂
        6662,                       -- Elixir of Giant Growth 增长药剂
        3391,                       -- Elixir of Ogre's Strength 食人魔力量药剂
    },
    [2450] = {                                          -- Briarthorn 石南草
        70, 95, 120, 170,           -- Skill to herb
        858,                        -- Lesser Healing Potion 次级治疗药水
        2459,                       -- Swiftness Potion 迅捷药水
        3383,                       -- Elixir of Wisdom 智慧药剂
        929,                        -- Healing Potion 治疗药水
        3388,                       -- Strong Troll's Blood Potion 强力巨魔之血药水
    },
    [2452] = {                                          -- Swiftthistle 雨燕草 Found with [Briarthorn] and [Mageroyal]. 伴生于 [石南草] 和 [魔皇草]中.
        0, 0, 0, 0,                 -- Skill to herb
        2457,                       -- Elixir of Minor Agility 初级敏捷药剂
        2459,                       -- Swiftness Potion 迅捷药水
        6051,                       -- Holy Protection Potion 神圣防护药水
        6372,                       -- Swim Speed Potion 速游药水
        3390,                       -- Elixir of Lesser Agility 次级敏捷药剂
    },
    [2453] = {                                          -- Bruiseweed 跌打草
        100, 125, 150, 200,         -- Skill to herb 跌打草
        6051,                       -- Holy Protection Potion 神圣防护药水
        929,                        -- Healing Potion 治疗药水
        3386,                       -- Potion of Curing 治愈药水
        3388,                       -- Strong Troll's Blood Potion 强力巨魔之血药水
        3826,                       -- Mighty Troll's Blood Potion 超强巨魔之血药水
    },
    [3355] = {                                          -- Wild Steelbloom 野钢花
        115, 140, 165, 215,         -- Skill to herb
        3384,                       -- Minor Magic Resistance Potion 初级抗魔药水
        3389,                       -- Elixir of Defense 防御药剂
        3390,                       -- Elixir of Lesser Agility 次级敏捷药剂
        3823,                       -- Lesser Invisibility Potion 次级隐形药水
        3825,                       -- Elixir of Fortitude 坚韧药剂
        8951,                       -- Elixir of Greater Defense 强效防御药剂
    },
    [3356] = {                                          -- Kingsblood 皇血草
        125, 150, 175, 225,         -- Skill to herb
        5633,                       -- Great Rage Potion 暴怒药水
        6048,                       -- Shadow Protection Potion 暗影防护药水
        6373,                       -- Elixir of Firepower 火力药剂
        3391,                       -- Elixir of Ogre's Strength 食人魔力量药剂
        1710,                       -- Greater Healing Potion 强效治疗药水
        3827,                       -- Mana Potion 法力药水
    },
    [3357] = {                                          -- Liferoot 活根草
        150, 175, 200, 250,         -- Skill to herb
        8827,                       -- Elixir of Water Walking 水上行走药剂
        1710,                       -- Greater Healing Potion 强效治疗药水
        3826,                       -- Mighty Troll's Blood Potion 超强巨魔之血药水
        6052,                       -- Nature Protection Potion 自然防护药水
    },
    [3358] = {                                          -- Khadgar's Whisker 卡德加的胡须
        180, 210, 235, 285,         -- Skill to herb
        17708,                      -- Elixir of Frost Power 冰霜之力药剂
        3828,                       -- Elixir of Detect Lesser Invisibility 侦测次级隐形药剂
        3829,                       -- Frost Oil 冰霜之油
        6149,                       -- Greater Mana Potion 强效法力药水
        9036,                       -- Magic Resistance Potion 抗魔药水
        3928,                       -- Superior Healing Potion 优质治疗药水
        9179,                       -- Elixir of Greater Intellect 强效聪颖药剂
    },
    [3369] = {                                          -- Grave Moss 墓地苔
        120, 145, 170, 220,         -- Skill to herb
        6048,                       -- Shadow Protection Potion 暗影防护药水
        3824,                       -- Shadow Oil 暗影之油
    },
    [3818] = {                                          -- Fadeleaf 枯叶草
        160, 185, 210, 260,         -- Skill to herb
        3823,                       -- Lesser Invisibility Potion 次级隐形药水
        3824,                       -- Shadow Oil 暗影之油
        3828,                       -- Elixir of Detect Lesser Invisibility 侦测次级隐形药剂
        10592,                      -- Catseye Elixir 猫眼药剂
    },
    [3819] = {                                          -- Wintersbite 冬刺草
        195, 220, 245, 295,         -- Skill to herb
        6050,                       -- Frost Protection Potion 冰霜防护药水
        17708,                      -- Elixir of Frost Power 冰霜之力药剂
        3829,                       -- Frost Oil 冰霜之油
    },
    [3820] = {                                          -- Stranglekelp 荆棘藻
        85, 110, 135, 185,          -- Skill to herb
        5996,                       -- Elixir of Water Breathing 水下呼吸药剂
        3385,                       -- Lesser Mana Potion 次级法力药水
        3389,                       -- Elixir of Defense 防御药剂
        5634,                       -- Free Action Potion 自由行动药水
        3827,                       -- Mana Potion 法力药水
        8949,                       -- Elixir of Agility 敏捷药剂
        6052,                       -- Nature Protection Potion 自然防护药水
    },
    [3821] = {                                          -- Goldthorn 金棘草
        170, 195, 220, 270,         -- Skill to herb
        3825,                       -- Elixir of Fortitude 坚韧药剂
        8949,                       -- Elixir of Agility 敏捷药剂
        6050,                       -- Frost Protection Potion 冰霜防护药水
        8951,                       -- Elixir of Greater Defense 强效防御药剂
        10592,                      -- Catseye Elixir 猫眼药剂
        6149,                       -- Greater Mana Potion 强效法力药水
        8956,                       -- Oil of Immolation 献祭之油
        9030,                       -- Restorative Potion 滋补药剂
        4623,                       -- Lesser Stoneshield Potion 次级石盾药水
        9155,                       -- Arcane Elixir 奥法药剂
        9187,                       -- Elixir of Greater Agility 强效敏捷药剂
    },
    [4625] = {                                          -- Firebloom 火焰花
        205, 230, 255, 305,         -- Skill to herb
        8956,                       -- Oil of Immolation 献祭之油
        9061,                       -- Goblin Rocket Fuel 地精火箭燃油
        9149,                       -- Philosopher's Stone 点金石
        21546,                      -- Elixir of Greater Firepower 强效火力药剂
    },
    [8153] = {                                          -- Wildvine 野葡萄藤 Found with [Purple Lotus]. 伴生于 [紫莲花]中.
        0, 0, 0, 0,                 -- Skill to herb
        9144,                       -- Wildvine Potion 野葡萄药水
    },
    [8831] = {                                          -- Purple Lotus 紫莲花
        210, 235, 260, 310,         -- Skill to herb
        9036,                       -- Magic Resistance Potion 抗魔药水
        18294,                      -- Elixir of Greater Water Breathing 强力水下呼吸药剂
        9149,                       -- Philosopher's Stone 点金石
        9144,                       -- Wildvine Potion 野葡萄药水
        12190,                      -- Dreamless Sleep Potion 昏睡药水
        9197,                       -- Elixir of Dream Vision 梦境药剂
    },
    [8836] = {                                          -- Arthas' Tears 阿尔萨斯之泪
        240, 245, 270, 320,         -- Skill to herb
        9154,                       -- Elixir of Detect Undead 侦测亡灵药剂
        9088,                       -- Gift of Arthas 阿尔萨斯的礼物
    },
    [8838] = {                                          -- Sungrass 太阳草
        230, 255, 280, 330,         -- Skill to herb
        3928,                       -- Superior Healing Potion 优质治疗药水
        9172,                       -- Invisibility Potion 隐形药水
        9187,                       -- Elixir of Greater Agility 强效敏捷药剂
        9206,                       -- Elixir of Giants 巨人药剂
        13443,                      -- Superior Mana Potion 优质法力药水
        13445,                      -- Elixir of Superior Defense 超强防御药剂
    },
    [8839] = {                                          -- Blindweed 盲目草
        235, 260, 285, 335,         -- Skill to herb
        9155,                       -- Arcane Elixir 奥法药剂
        9179,                       -- Elixir of Greater Intellect 强效聪颖药剂
        9088,                       -- Gift of Arthas 阿尔萨斯的礼物
        3387,                       -- Limited Invulnerability Potion 有限无敌药水
        13443,                      -- Superior Mana Potion 优质法力药水
    },
    [8845] = {                                          -- Ghost Mushroom 幽灵菇
        240, 270, 295, 345,         -- Skill to herb
        9172,                       -- Invisibility Potion 隐形药水
        9210,                       -- Ghost Dye 幻象染料
        9224,                       -- Elixir of Demonslaying 屠魔药剂
        9264,                       -- Elixir of Shadow Power 暗影之力药剂
        3387,                       -- Limited Invulnerability Potion 有限无敌药水
    },
    [8846] = {                                          -- Gromsblood 格罗姆之血
        250, 275, 300, 350,         -- Skill to herb
        9206,                       -- Elixir of Giants 巨人药剂
        9224,                       -- Elixir of Demonslaying 屠魔药剂
        9233,                       -- Elixir of Detect Demon 侦测恶魔药剂
        13442,                      -- Mighty Rage Potion 强效怒气药水
        13453,                      -- Elixir of Brute Force 蛮力药剂
        20004,                      -- Major Troll's Blood Potion 特效巨魔之血药水
        13510,                      -- Flask of the Titans 泰坦合剂
    },
    [13463] = {                                         -- Dreamfoil 梦叶草
        270, 295, 320, 370,         -- Skill to herb
        13460,                      -- Greater Holy Protection Potion 强效神圣防护药水
        13447,                      -- Elixir of the Sages 先知药剂
        20002,                      -- Greater Dreamless Sleep Potion 强效昏睡药水
        20007,                      -- Mageblood Potion 魔血药剂
        13454,                      -- Greater Arcane Elixir 强效奥法药剂
        13461,                      -- Greater Arcane Protection Potion 强效奥术防护药水
        13457,                      -- Greater Fire Protection Potion 强效火焰防护药水
        13456,                      -- Greater Frost Protection Potion 强效冰霜防护药水
        13458,                      -- Greater Nature Protection Potion 强效自然防护药水
        13459,                      -- Greater Shadow Protection Potion 强效暗影防护药水
        13444,                      -- Major Mana Potion 特效法力药水
        18253,                      -- Major Rejuvenation Potion 特效活力药水
        28103,                      -- Adept's Elixir 法能药剂
        13511,                      -- Flask of Distilled Wisdom 精炼智慧合剂
        13512,                      -- Flask of Supreme Power 超级能量合剂
    },
    [13464] = {                                         -- Golden Sansam 黄金参
        260, 285, 310, 360,         -- Skill to herb
        20002,                      -- Greater Dreamless Sleep Potion 强效昏睡药水
        13446,                      -- Major Healing Potion 特效治疗药水
        18253,                      -- Major Rejuvenation Potion 特效活力药水
        28100,                      -- Volatile Healing Potion 不稳定的治疗药水
        22825,                      -- Elixir of Healing Power 治疗能量药剂
    },
    [13465] = {                                         -- Mountain Silversage 山鼠草
        280, 305, 330, 380,         -- Skill to herb
        13446,                      -- Major Healing Potion 特效治疗药水
        13452,                      -- Elixir of the Mongoose 猫鼬药剂
        13454,                      -- Greater Arcane Elixir 强效奥法药剂
        20008,                      -- Living Action Potion 活力行动药水
        13513,                      -- Flask of Chromatic Resistance 多重抗性合剂
        13506,                      -- Flask of Petrification 化石合剂
        13512,                      -- Flask of Supreme Power 超级能量合剂
        28102,                      -- Onslaught Elixir 强攻药剂
        22824,                      -- Elixir of Major Strength 特效力量药剂
    },
    [13466] = {                                         -- Plaguebloom 瘟疫花
        285, 310, 335, 385,         -- Skill to herb
        13447,                      -- Elixir of the Sages 先知药剂
        13453,                      -- Elixir of Brute Force 蛮力药剂
        20007,                      -- Mageblood Potion 魔血药剂
        13452,                      -- Elixir of the Mongoose 猫鼬药剂
        13462,                      -- Purification Potion 净化药水
        20004,                      -- Major Troll's Blood Potion 特效巨魔之血药水
    },
    [13467] = {                                         -- Icecap 冰盖草
        290, 315, 340, 390,         -- Skill to herb
        20008,                      -- Living Action Potion 活力行动药水
        13462,                      -- Purification Potion 净化药水
        13444,                      -- Major Mana Potion 特效法力药水
        13513,                      -- Flask of Chromatic Resistance 多重抗性合剂
        13511,                      -- Flask of Distilled Wisdom 精炼智慧合剂
    },
    [13468] = {                                         -- Black Lotus 黑莲花
        300, 325, 350, 400,         -- Skill to herb
        13513,                      -- Flask of Chromatic Resistance 多重抗性合剂
        13511,                      -- Flask of Distilled Wisdom 精炼智慧合剂
        13506,                      -- Flask of Petrification 化石合剂
        13512,                      -- Flask of Supreme Power 超级能量合剂
        13510,                      -- Flask of the Titans 泰坦合剂
        19931,                      -- Gurubashi Mojo Madness 古拉巴什疯狂魔精
    },
    [22785] = {                                         -- Felweed 魔草
        300, 325, 350, 400,         -- Skill to herb
        28103,                      -- Adept's Elixir 法能药剂
        28102,                      -- Onslaught Elixir 强攻药剂
        28100,                      -- Volatile Healing Potion 不稳定的治疗药水
        22823,                      -- Elixir of Camouflage 伪装药剂
        22824,                      -- Elixir of Major Strength 特效力量药剂
        32062,                      -- Elixir of Major Fortitude 特效坚韧药剂
        28101,                      -- Unstable Mana Potion 不稳定的法力药水
        28104,                      -- Elixir of Mastery 掌控药剂
        22826,                      -- Sneaking Potion 潜行药水
        32067,                      -- Elixir of Draenic Wisdom 德拉诺智慧药剂
        22829,                      -- Super Healing Potion 超级治疗药水
        22831,                      -- Elixir of Major Agility 特效敏捷药剂
        22832,                      -- Super Mana Potion 超级法力药水
        31676,                      -- Fel Regeneration Potion 魔能回复药水
    },
    [22786] = {                                         -- Dreaming Glory 梦露花
        315, 340, 365, 415,         -- Skill to herb
        22825,                      -- Elixir of Healing Power 治疗能量药剂
        32063,                      -- Earthen Elixir 土灵药剂
        22832,                      -- Super Mana Potion 超级法力药水
        22836,                      -- Major Dreamless Sleep Potion 特效无梦睡眠药水
        33208,                      -- Flask of Chromatic Wonder 多彩奇迹合剂
        22853,                      -- Flask of Mighty Restoration 强效回复合剂
        22850,                      -- Super Rejuvenation Potion 超级活力药水
    },
    [22787] = {                                         -- Ragveil 邪雾草
        325, 350, 375, 425,         -- Skill to herb
        22823,                      -- Elixir of Camouflage 伪装药剂
        32062,                      -- Elixir of Major Fortitude 特效坚韧药剂
        28101,                      -- Unstable Mana Potion 不稳定的法力药水
        22826,                      -- Sneaking Potion 潜行药水
        32063,                      -- Earthen Elixir 土灵药剂
        34440,                      -- Mad Alchemist's Potion 疯狂炼金师药水
        22830,                      -- Elixir of the Searching Eye 搜寻之眼药剂
        32068,                      -- Elixir of Ironskin 铁皮药剂
        22871,                      -- Shrouding Potion 遮罩药水
    },
    [22789] = {                                         -- Terocone 泰罗果
        325, 350, 375, 425,         -- Skill to herb
        28104,                      -- Elixir of Mastery 掌控药剂
        32067,                      -- Elixir of Draenic Wisdom 德拉诺智慧药剂
        22828,                      -- Insane Strength Potion 疯狂力量药水
        22830,                      -- Elixir of the Searching Eye 搜寻之眼药剂
        22831,                      -- Elixir of Major Agility 特效敏捷药剂
        31679,                      -- Fel Strength Elixir 魔能力量药水
        22834,                      -- Elixir of Major Defense 特效防御药剂
        22838,                      -- Haste Potion 加速药水
        22837,                      -- Heroic Potion 英雄药水
        22854,                      -- Flask of Relentless Assault 无情突袭合剂
    },
    [22790] = {                                         -- Ancient Lichen 远古苔
        340, 365, 390, 440,         -- Skill to herb
        22827,                      -- Elixir of Major Frost Power 特效冰霜能量药剂
        32068,                      -- Elixir of Ironskin 铁皮药剂
        22834,                      -- Elixir of Major Defense 特效防御药剂
        22833,                      -- Elixir of Major Firepower 特效火力药剂
        22835,                      -- Elixir of Major Shadow Power 特效暗影能量药剂
        22837,                      -- Heroic Potion 英雄药水
        22840,                      -- Elixir of Major Mageblood 特效魔血药剂
        22849,                      -- Ironshield Potion 铁盾药水
        22851,                      -- Flask of Fortification 强固合剂
    },
    [22791] = {                                         -- Netherbloom 虚空花
        350, 375, 400, 450,         -- Skill to herb
        22521,                      -- Superior Mana Oil 超级法力之油
        22829,                      -- Super Healing Potion 超级治疗药水
        22871,                      -- Shrouding Potion 遮罩药水
        22839,                      -- Destruction Potion 毁灭药水
        22838,                      -- Haste Potion 加速药水
        22840,                      -- Elixir of Major Mageblood 特效魔血药剂
        22848,                      -- Elixir of Empowerment 强化药剂
        33208,                      -- Flask of Chromatic Wonder 多彩奇迹合剂
        22861,                      -- Flask of Blinding Light 盲目光芒合剂
        22850,                      -- Super Rejuvenation Potion 超级活力药水
    },
    [22792] = {                                         -- Nightmare Vine 噩梦藤
        365, 390, 415, 465,         -- Skill to herb
        31679,                      -- Fel Strength Elixir 魔能力量药水
        22522,                      -- Superior Wizard Oil 超级巫师之油
        31676,                      -- Fel Regeneration Potion 魔能回复药水
        22839,                      -- Destruction Potion 毁灭药水
        22835,                      -- Elixir of Major Shadow Power 特效暗影能量药剂
        22836,                      -- Major Dreamless Sleep Potion 特效无梦睡眠药水
        31677,                      -- Fel Mana Potion 魔能法力药水
        22866,                      -- Flask of Pure Death 纯粹死亡合剂
    },
    [22793] = {                                         -- Mana Thistle 法力蓟
        375, 400, 425, 475,         -- Skill to herb
        32839,                      -- Cauldron of Major Arcane Protection 特效奥术防护药锅
        32849,                      -- Cauldron of Major Fire Protection 特效火焰防护药锅
        32850,                      -- Cauldron of Major Frost Protection 特效冰霜防护药锅
        32851,                      -- Cauldron of Major Nature Protection 特效自然防护药锅
        32852,                      -- Cauldron of Major Shadow Protection 特效暗影防护药锅
        31677,                      -- Fel Mana Potion 魔能法力药水
        22845,                      -- Major Arcane Protection Potion 特效奥术防护药水
        22841,                      -- Major Fire Protection Potion 特效火焰防护药水
        22842,                      -- Major Frost Protection Potion 特效冰霜防护药水
        22847,                      -- Major Holy Protection Potion 特效神圣防护药水
        22844,                      -- Major Nature Protection Potion 特效自然防护药水
        22846,                      -- Major Shadow Protection Potion 特效暗影防护药水
        22848,                      -- Elixir of Empowerment 强化药剂
        22861,                      -- Flask of Blinding Light 盲目光芒合剂
        22851,                      -- Flask of Fortification 强固合剂
        22853,                      -- Flask of Mighty Restoration 强效回复合剂
        22866,                      -- Flask of Pure Death 纯粹死亡合剂
        22854,                      -- Flask of Relentless Assault 无情突袭合剂
        22850,                      -- Super Rejuvenation Potion 超级活力药水
    },
    [22794] = {                                         -- Fel Lotus 魔莲花 Found in [Outland] herbs. 伴生于 [外域] 的草药中.
        0, 0, 0, 0,         -- Skill to herb
        13503,                      -- Alchemist's Stone
        33208,                      -- Flask of Chromatic Wonder 多彩奇迹合剂
        22861,                      -- Flask of Blinding Light 盲目光芒合剂
        22851,                      -- Flask of Fortification 强固合剂
        22853,                      -- Flask of Mighty Restoration 强效回复合剂
        22866,                      -- Flask of Pure Death 纯粹死亡合剂
        22854,                      -- Flask of Relentless Assault 无情突袭合剂
    },
-- ====================================================================================================
-- =                           Other herbed stuff, but not used in alchemy.                           =
-- ====================================================================================================
    [19726] = {                                         -- Bloodvine 血藤 Found in [Zul'Gurub] herbs. 伴生于 [祖尔格拉布] 的草药中.
        0, 0, 0, 0,                 -- Skill to herb
    },
    [22710] = {                                         -- Bloodthistle 血蓟
        1, 25, 50, 100,             -- Skill to herb
    },
    [22795] = {                                         -- Fel Blossom 野魔花 Found with [Felweed]. 伴生于 [魔草] 中.
        0, 0, 0, 0,                 -- Skill to herb
    },
    [32468] = {                                         -- Netherdust Bush 灵尘花粉
        350, 375, 400, 450,         -- Skill to herb
    },
}

-- ====================================================================================================
-- =                                    All item made with Alchemy                                    =
-- ====================================================================================================

ALCHEMY_LIST = {

    [118] = {                                           -- Minor Healing Potion 初级治疗药水
        1, 25, 50, 100,     -- Skill to make
        1, 2447,                    -- Peacebloom 宁神花
        1, 765,                     -- Silverleaf 银叶草
        1, 3371,                    -- Empty Vial 空瓶
    },
    [858] = {                                           -- Lesser Healing Potion 次级治疗药水
        55, 85, 105, 125,   -- Skill to make
        1, 118,                     -- Minor Healing Potion
        1, 2450,                    -- Briarthorn 石南草
    },
    [929] = {                                           -- Healing Potion 治疗药水
        110, 135, 155, 175, -- Skill to make
        1, 2453,                    -- Bruiseweed 跌打草
        1, 2450,                    -- Briarthorn 石南草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [1710] = {                                          -- Greater Healing Potion 强效治疗药水
        155, 175, 195, 215, -- Skill to make
        1, 3357,                    -- Liferoot 活根草
        1, 3356,                    -- Kingsblood 皇血草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [2454] = {                                          -- Elixir of Lion's Strength 狮王之力药剂
        1, 55, 75, 95,      -- Skill to make
        1, 2449,                    -- 1 x Earthroot 地根草
        1, 765,                     -- 1 x Silverleaf 银叶草
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [2455] = {                                          -- Minor Mana Potion 初级法力药水
        25, 65, 85, 105,    -- Skill to make
        1, 785,                     -- Mageroyal 魔皇草
        1, 765,                     -- Silverleaf 银叶草
        1, 3371,                    -- Empty Vial 空瓶
    },
    [2456] = {                                          -- Minor Rejuvenation Potion 初级活力药水
        40, 70, 90, 110,    -- Skill to make
        2, 785,                     -- 2 x Mageroyal 魔皇草
        1, 2747,                    -- 1 x Peacebloom 宁神花
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [2457] = {                                          -- Elixir of Minor Agility 初级敏捷药剂
        50, 80, 100, 120,   -- Skill to make
        1, 2452,                    -- 1 x Swiftthistle 雨燕草 
        1, 765,                     -- 1 x Silverleaf 银叶草
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [2458] = {                                          -- Elixir of Minor Fortitude 初级坚韧药剂
        50, 80, 100, 120,   -- Skill to make
        2, 2449,                    -- 2 x Earthroot 地根草
        1, 2447,                    -- 1 x Peacebloom 宁神花
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [2459] = {                                          -- Swiftness Potion 迅捷药水
        60, 90, 110, 130,   -- Skill to make
        1, 2452,                    -- Swiftthistle 雨燕草 
        1, 2450,                    -- Briarthorn 石南草
        1, 3371,                    -- Empty Vial 空瓶
    },
    [3382] = {                                          -- Weak Troll's Blood Potion 弱效巨魔之血药水
        15, 60, 80, 100,    -- Skill to make
        2, 2449,                    -- Earthroot 地根草
        1, 2447,                    -- Peacebloom 宁神花
        1, 3371,                    -- Empty Vial 空瓶
    },
    [3383] = {                                          -- Elixir of Wisdom 智慧药剂
        90, 120, 140, 160,  -- Skill to make
        2, 2450,                    -- Briarthorn 石南草
        1, 785,                     -- Mageroyal 魔皇草
        1, 3371,                    -- Empty Vial 空瓶
    },
    [3384] = {                                          -- Minor Magic Resistance Potion 初级抗魔药水
        110, 135, 155, 175, -- Skill to make
        3, 785,                     -- Mageroyal 魔皇草
        1, 3355,                    -- Wild Steelbloom 野钢花
        1, 3371,                    -- Empty Vial 空瓶
    },
    [3385] = {                                          -- Lesser Mana Potion 次级法力药水
        120, 145, 165, 185, -- Skill to make
        1, 785,                     -- Mageroyal 魔皇草
        1, 3820,                    -- Stranglekelp 荆棘藻
        1, 3371,                    -- Empty Vial 空瓶
    },
    [3386] = {                                          -- Potion of Curing 治愈药水
        120, 145, 165, 185, -- Skill to make
        1, 1288,                    -- Large Venom Sac
        1, 2453,                    -- Bruiseweed 跌打草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [3387] = {                                          -- Limited Invulnerability Potion 有限无敌药水
        250, 275, 295, 315, -- Skill to make
        2, 8839,                    -- Blindweed 盲目草
        1, 8845,                    -- Ghost Mushroom 幽灵菇
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [3388] = {                                          -- Strong Troll's Blood Potion 强力巨魔之血药水
        125, 150, 170, 190, -- Skill to make
        2, 2453,                    -- Bruiseweed 跌打草
        2, 2450,                    -- Briarthorn 石南草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [3389] = {                                          -- Elixir of Defense 防御药剂
        130, 155, 175, 195, -- Skill to make
        1, 3355,                    -- Wild Steelbloom 野钢花
        1, 3820,                    -- Stranglekelp 荆棘藻
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [3390] = {                                          -- Elixir of Lesser Agility 次级敏捷药剂
        140, 165, 185, 205, -- Skill to make
        1, 3355,                    -- Wild Steelbloom 野钢花
        1, 2452,                    -- Swiftthistle 雨燕草 
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [3391] = {                                          -- Elixir of Ogre's Strength 食人魔力量药剂
        150, 175, 195, 215, -- Skill to make
        1, 2449,                    -- 1 x Earthroot 地根草
        1, 3356,                    -- 1 x Kingsblood 皇血草
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [3577] = {                                          -- Gold Bar
        225, 240, 260, 280, -- Skill to make
        1, 3575,                    -- Iron Bar
    },
    [3823] = {                                          -- Lesser Invisibility Potion 次级隐形药水
        165, 185, 205, 225, -- Skill to make
        1, 3818,                    -- 1 x Fadeleaf 枯叶草
        1, 3355,                    -- 1 x Wild Steelbloom 野钢花
        1, 3372,                    -- 1 x Leaded Vial 铅瓶
    },
    [3824] = {                                          -- Shadow Oil 暗影之油
        165, 190, 210, 230, -- Skill to make
        4, 3818,                    -- 4 x Fadeleaf 枯叶草
        4, 3369,                    -- 4 x Grave Moss 墓地苔
        1, 3372,                    -- 1 x Leaded Vial 铅瓶
    },
    [3825] = {                                          -- Elixir of Fortitude 坚韧药剂
        175, 195, 215, 235, -- Skill to make
        1, 3355,                    -- Wild Steelbloom 野钢花
        1, 3821,                    -- Goldthorn 金棘草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [3826] = {                                          -- Mighty Troll's Blood Potion 超强巨魔之血药水
        180, 200, 220, 240, -- Skill to make
        1, 3357,                    -- Liferoot 活根草
        1, 2453,                    -- Bruiseweed 跌打草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [3827] = {                                          -- Mana Potion 法力药水
        160, 180, 200, 220, -- Skill to make
        1, 3820,                    -- 1 x Stranglekelp 荆棘藻
        1, 3356,                    -- 1 x Kingsblood 皇血草
        1, 3372,                    -- 1 x Leaded Vial 铅瓶
    },
    [3828] = {                                          -- Elixir of Detect Lesser Invisibility 侦测次级隐形药剂
        195, 215, 235, 255, -- Skill to make
        1, 3358,                    -- 1 x Khadgar's Whisker 卡德加的胡须
        1, 3818,                    -- 1 x Fadeleaf 枯叶草
        1, 3372,                    -- 1 x Leaded Vial 铅瓶
    },
    [3928] = {                                          -- Superior Healing Potion 优质治疗药水
        215, 230, 250, 270, -- Skill to make
        1, 8838,                    -- Sungrass 太阳草
        1, 3358,                    -- Khadgar's Whisker 卡德加的胡须
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [3829] = {                                          -- Frost Oil 冰霜之油
        200, 220, 240, 260, -- Skill to make
        4, 3358,                    -- 1 x Khadgar's Whisker 卡德加的胡须
        2, 3819,                    -- 1 x Wintersbite 冬刺草
        1, 3372,                    -- 1 x Leaded Vial 铅瓶
    },
    [4596] = {                                          -- Discolored Healing Potion 褪色的治疗药水
        50, 80, 100, 120,   -- Skill to make
        1, 3164,                    -- 1 x Discolored Worg Heart 变色的狼心
        1, 2447,                    -- 1 x Peacebloom 宁神花
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [4623] = {                                          -- Lesser Stoneshield Potion 次级石盾药水
        215, 230, 250, 270, -- Skill to make
        1, 3858,                    -- Mithril Ore 秘银矿石
        1, 3821,                    -- Goldthorn 金棘草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [5631] = {                                          -- Rage Potion 怒气药水
        60, 90, 110, 130,   -- Skill to make
        2, 5635,                    -- 2 x Sharp Claw 锋利的爪子
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [5633] = {                                          -- Great Rage Potion 暴怒药水
        175, 195, 215, 235, -- Skill to make
        1, 5637,                    -- 1 x Large Fang 大牙齿
        1, 3356,                    -- 1 x Kingsblood 皇血草
        1, 3372,                    -- 1 x Leaded Vial 铅瓶
    },
    [5634] = {                                          -- Free Action Potion 自由行动药水
        150, 175, 195, 215, -- Skill to make
        2, 6370,                    -- Blackmouth Oil 黑口鱼油
        1, 3820,                    -- Stranglekelp 荆棘藻
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [5996] = {                                          -- Elixir of Water Breathing 水下呼吸药剂
        90, 120, 140, 160,  -- Skill to make
        2, 6370,                    -- Blackmouth Oil 黑口鱼油
        1, 3820,                    -- Stranglekelp 荆棘藻
        1, 3371,                    -- Empty Vial 空瓶
    },
    [5997] = {                                          -- Elixir of Minor Defense 初级防御药剂
        1, 55, 75, 95,      -- Skill to make
        2, 765,                     -- 2 x Silverleaf 银叶草
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [6037] = {                                          -- Truesilver Bar 真银锭
        225, 240, 260, 280, -- Skill to make
        1, 3860,                    -- Mithril Bar 秘银锭
    },
    [6048] = {                                          -- Shadow Protection Potion 暗影防护药水
        135, 160, 180, 200, -- Skill to make
        1, 3369,                    -- Grave Moss 墓地苔
        1, 3356,                    -- Kingsblood 皇血草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [6049] = {                                          -- Fire Protection Potion
        165, 210, 230, 250, -- Skill to make
        1, 4402,                    -- Small Flame Sac 火囊
        1, 6371,                    -- Fire Oil 火焰之油
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [6050] = {                                          -- Frost Protection Potion 冰霜防护药水
        190, 205, 225, 245, -- Skill to make
        1, 3819,                    -- 1 x Wintersbite 冬刺草
        1, 3821,                    -- 1 x Goldthorn 金棘草
        1, 3372,                    -- 1 x Leaded Vial 铅瓶
    },
    [6051] = {                                          -- Holy Protection Potion 神圣防护药水
        100, 130, 150, 170, -- Skill to make
        1, 2453,                    -- 1 x Bruiseweed 跌打草
        1, 2452,                    -- 1 x Swiftthistle 雨燕草 
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [6052] = {                                          -- Nature Protection Potion 自然防护药水
        190, 210, 230, 250, -- Skill to make
        1, 3357,                    -- Liferoot 活根草
        1, 3820,                    -- Stranglekelp 荆棘藻
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [6149] = {                                          -- Greater Mana Potion 强效法力药水
        205, 220, 240, 260, -- Skill to make
        1, 3358,                    -- Khadgar's Whisker 卡德加的胡须
        1, 3821,                    -- Goldthorn 金棘草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [6370] = {                                          -- Blackmouth Oil 黑口鱼油
        80, 80, 90, 100,    -- Skill to make
        2, 6358,                    -- 2 x Oily Blackmouth 黑口鱼
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [6371] = {                                          -- Fire Oil 火焰之油
        130, 150, 160, 170, -- Skill to make
        2, 6359,                    -- Firefin Snapper 火鳞鳝鱼
        1, 3371,                    -- Empty Vial 空瓶
    },
    [6372] = {                                          -- Swim Speed Potion 速游药水
        100, 130, 150, 170, -- Skill to make
        1, 2452,                    -- 1 x Swiftthistle 雨燕草 
        1, 6370,                    -- 1 x Blackmouth Oil 黑口鱼油
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [6373] = {                                          -- Elixir of Firepower 火力药剂
        140, 165, 185, 205, -- Skill to make
        2, 6371,                    -- 2 x Fire Oil 火焰之油
        1, 3356,                    -- 1 x Kingsblood 皇血草
        1, 3372,                    -- 1 x Leaded Vial 铅瓶
    },
    [6662] = {                                          -- Elixir of Giant Growth 增长药剂
        90, 120, 140, 160,  -- Skill to make
        1, 6522,                    -- 1 x Deviate Fish 变异鱼
        1, 2449,                    -- 1 x Earthroot 地根草
        1, 3371,                    -- 1 x Empty Vial 空瓶
    },
    [8827] = {                                          -- Elixir of Water Walking 水上行走药剂
        415, 415, 422, 430,         -- Skill to make
        1, 6370,                    -- 1 x Blackmouth Oil 黑口鱼油
        1, 3357,                    -- 1 x Liferoot 活根草
        1, 3372,                    -- 1 x Leaded Vial 铅瓶
    },
    [8949] = {                                          -- Elixir of Agility 敏捷药剂
        185, 205, 225, 245, -- Skill to make
        1, 3820,                    -- Stranglekelp 荆棘藻
        1, 3821,                    -- Goldthorn 金棘草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [8951] = {                                          -- Elixir of Greater Defense 强效防御药剂
        195, 215, 235, 255, -- Skill to make
        1, 3355,                    -- Wild Steelbloom 野钢花
        1, 3821,                    -- Goldthorn 金棘草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [8956] = {                                          -- Oil of Immolation 献祭之油
        205, 220, 240, 260, -- Skill to make
        1, 4625,                    -- Firebloom 火焰花
        1, 3821,                    -- Goldthorn 金棘草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9030] = {                                          -- Restorative Potion 滋补药剂
        215, 225, 245, 265, -- Skill to make
        1, 7067,                    -- Elemental Earth 元素之土
        1, 3821,                    -- Goldthorn 金棘草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9036] = {                                          -- Magic Resistance Potion 抗魔药水
        210, 225, 245, 265, -- Skill to make
        1, 3358,                    -- Khadgar's Whisker 卡德加的胡须
        1, 8831,                    -- Purple Lotus 紫莲花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9061] = {                                          -- Goblin Rocket Fuel 地精火箭燃油
        210, 225, 245, 265, -- Skill to make
        1, 4625,                    -- Firebloom 火焰花
        1, 9260,                    -- Volatile Rum 烈性朗姆酒
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [9088] = {                                          -- Gift of Arthas 阿尔萨斯的礼物
        240, 255, 275, 295, -- Skill to make
        1, 8836,                    -- Arthas' Tears 阿尔萨斯之泪
        1, 8839,                    -- Blindweed 盲目草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9144] = {                                          -- Wildvine Potion 野葡萄药水
        225, 240, 260, 280, -- Skill to make
        1, 8153,                    -- Wildvine 野葡萄藤
        1, 8831,                    -- Purple Lotus 紫莲花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9149] = {                                          -- Philosopher's Stone 点金石
        225, 240, 260, 280, -- Skill to make
        4, 3575,                    -- Iron Bar
        4, 8831,                    -- Purple Lotus 紫莲花
        4, 4625,                    -- Firebloom 火焰花
        1, 9262,                    -- Black Vitriol 黑色硫酸盐
    },
    [9154] = {                                          -- Elixir of Detect Undead 侦测亡灵药剂
        230, 245, 265, 285, -- Skill to make
        1, 8836,                    -- Arthas' Tears 阿尔萨斯之泪
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9155] = {                                          -- Arcane Elixir 奥法药剂
        235, 250, 270, 290, -- Skill to make
        1, 8839,                    -- Blindweed 盲目草
        1, 3821,                    -- Goldthorn 金棘草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9172] = {                                          -- Invisibility Potion 隐形药水
        235, 250, 270, 290, -- Skill to make
        1, 8845,                    -- Ghost Mushroom 幽灵菇
        1, 8838,                    -- Sungrass 太阳草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9179] = {                                          -- Elixir of Greater Intellect 强效聪颖药剂
        235, 250, 270, 290, -- Skill to make
        1, 8839,                    -- Blindweed 盲目草
        1, 3358,                    -- Khadgar's Whisker 卡德加的胡须
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9187] = {                                          -- Elixir of Greater Agility 强效敏捷药剂
        240, 255, 275, 295, -- Skill to make
        1, 8838,                    -- Sungrass 太阳草
        1, 3821,                    -- Goldthorn 金棘草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9197] = {                                          -- Elixir of Dream Vision 梦境药剂
        240, 255, 275, 295, -- Skill to make
        3, 8831,                    -- Purple Lotus 紫莲花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9206] = {                                          -- Elixir of Giants 巨人药剂
        245, 260, 280, 300, -- Skill to make
        1, 8838,                    -- Sungrass 太阳草
        1, 8846,                    -- Gromsblood 格罗姆之血
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9210] = {                                          -- Ghost Dye 幻象染料
        250, 265, 285, 305, -- Skill to make
        2, 8845,                    -- Ghost Mushroom 幽灵菇
        1, 4342,                    -- Purple Dye 紫色染料
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9224] = {                                          -- Elixir of Demonslaying 屠魔药剂
        250, 265, 285, 305, -- Skill to make
        1, 8846,                    -- Gromsblood 格罗姆之血
        1, 8845,                    -- Ghost Mushroom 幽灵菇
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9233] = {                                          -- Elixir of Detect Demon 侦测恶魔药剂
        250, 265, 285, 305, -- Skill to make
        2, 8846,                    -- Gromsblood 格罗姆之血
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [9264] = {                                          -- Elixir of Shadow Power 暗影之力药剂
        250, 265, 285, 305, -- Skill to make
        3, 8845,                    -- Ghost Mushroom 幽灵菇
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [10592] = {                                         -- Catseye Elixir 猫眼药剂
        200, 220, 240, 260, -- Skill to make
        1, 3821,                    -- Goldthorn 金棘草
        1, 3818,                    -- Fadeleaf 枯叶草
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [12190] = {                                         -- Dreamless Sleep Potion 昏睡药水
        230, 245, 265, 285, -- Skill to make
        3, 8831,                    -- Purple Lotus 紫莲花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13423] = {                                         -- Stonescale Oil 石鳞鱼油
        250, 250, 255, 260, -- Skill to make
        1, 13422,                   -- Stonescale Eel 石鳞鳗
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [13442] = {                                          -- Mighty Rage Potion 强效怒气药水
        260, 275, 295, 315, -- Skill to make
        3, 8846,                    -- Gromsblood 格罗姆之血
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13443] = {                                          -- Superior Mana Potion 优质法力药水
        260, 275, 295, 315, -- Skill to make
        2, 8838,                    -- Sungrass 太阳草
        2, 8839,                    -- Blindweed 盲目草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13444] = {                                          -- Major Mana Potion 特效法力药水
        260, 275, 295, 315, -- Skill to make
        3, 13463,                   -- Dreamfoil 梦叶草
        2, 13467,                   -- Icecap 冰盖草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13445] = {                                         -- Elixir of Superior Defense 超强防御药剂
        265, 280, 300, 320, -- Skill to make
        2, 13423,                   -- Stonescale Oil 石鳞鱼油
        1, 8838,                    -- Sungrass 太阳草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13446] = {                                         -- Major Healing Potion 特效治疗药水
        275, 290, 310, 330, -- Skill to make
        2, 13464,                   -- Golden Sansam 黄金参
        1, 13465,                   -- Mountain Silversage 山鼠草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13447] = {                                         -- Elixir of the Sages 先知药剂
        270, 285, 305, 325, -- Skill to make
        2, 13466,                   -- Plaguebloom 瘟疫花
        1, 13463,                   -- Dreamfoil 梦叶草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13452] = {                                         -- Elixir of the Mongoose 猫鼬药剂
        280, 295, 315, 335, -- Skill to make
        2, 13465,                   -- Mountain Silversage 山鼠草
        2, 13466,                   -- Plaguebloom 瘟疫花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13453] = {                                         -- Elixir of Brute Force 蛮力药剂
        275, 290, 310, 330, -- Skill to make
        2, 8846,                    -- Gromsblood 格罗姆之血
        2, 13466,                   -- Plaguebloom 瘟疫花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13454] = {                                         -- Greater Arcane Elixir 强效奥法药剂
        285, 300, 320, 340, -- Skill to make
        3, 13463,                   -- Dreamfoil 梦叶草
        1, 13465,                   -- Mountain Silversage 山鼠草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13455] = {                                        -- Greater Stoneshield Potion 强效石盾药水
        280, 295, 315, 335, -- Skill to make
        2, 13423,                   -- Stonescale Oil 石鳞鱼油
        1, 10620,                   -- Thorium Ore 瑟银矿石
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13456] = {                                        -- Greater Frost Protection Potion 强效冰霜防护药水
        290, 305, 325, 345, -- Skill to make
        1, 7070,                    -- Elemental Water 元素之水
        1, 13463,                   -- Dreamfoil 梦叶草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13457] = {                                         -- Greater Fire Protection Potion 强效火焰防护药水
        290, 305, 325, 345, -- Skill to make
        1, 7068,                    -- Elemental Fire 元素火焰
        1, 13463,                   -- Dreamfoil 梦叶草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13458] = {                                         -- Greater Nature Protection Potion 强效自然防护药水
        290, 305, 325, 345, -- Skill to make
        1, 7067,                    -- Elemental Earth 元素之土
        1, 13463,                   -- Dreamfoil 梦叶草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13459] = {                                         -- Greater Shadow Protection Potion 强效暗影防护药水
        290, 305, 325, 345,  -- Skill to make
        1, 3824,                    -- Shadow Oil 暗影之油
        1, 13463,                   -- Dreamfoil 梦叶草
        1, 8925,                    -- Crystal Vial 水晶瓶
    }, 
    [13460] = {                                         -- Greater Holy Protection Potion 强效神圣防护药水
        0, 0, 0, 0,         -- Skill to make
        1, 7069,                    -- Elemental Air 元素空气
        1, 13463,                   -- Dreamfoil 梦叶草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13461] = {                                         -- Greater Arcane Protection Potion 强效奥术防护药水
        290, 305, 325, 345,         -- Skill to make
        1, 11176,                   -- Dream Dust 梦境之尘
        1, 13463,                   -- Dreamfoil 梦叶草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13462] = {                                         -- Purification Potion 净化药水
        285, 300, 320, 340,         -- Skill to make
        2, 13467,                   -- Icecap 冰盖草
        1, 13466,                   -- Plaguebloom 瘟疫花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13506] = {                                         -- Flask of Petrification 化石合剂
        300, 315, 322, 330,         -- Skill to make
        30, 13423,                  -- Stonescale Oil 石鳞鱼油
        10, 13465,                  -- Mountain Silversage 山鼠草
        1, 13468,                   -- Black Lotus 黑莲花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13510] = {                                         -- Flask of the Titans 泰坦合剂
        300, 315, 322, 330, -- Skill to make
        7, 8846,                    -- Gromsblood 格罗姆之血
        3, 13423,                   -- Stonescale Oil 石鳞鱼油
        1, 13468,                   -- Black Lotus 黑莲花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13511] = {                                         -- Flask of Distilled Wisdom 精炼智慧合剂
        300, 315, 322, 330, -- Skill to make
        7, 13463,                   -- Dreamfoil 梦叶草
        3, 13467,                   -- Icecap 冰盖草
        1, 13468,                   -- Black Lotus 黑莲花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13512] = {                                         -- Flask of Supreme Power 超级能量合剂
        300, 315, 322, 330, -- Skill to make
        7, 13463,                   -- Dreamfoil 梦叶草
        3, 13465,                   -- Mountain Silversage 山鼠草
        1, 13468,                   -- Black Lotus 黑莲花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [13513] = {                                         -- Flask of Chromatic Resistance 多重抗性合剂
        300, 315, 322, 330, -- Skill to make
        7, 13467,                   -- Icecap 冰盖草
        3, 13465,                   -- Mountain Silversage 山鼠草
        1, 13468,                   -- Black Lotus 黑莲花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [17708] = {                                         -- Elixir of Frost Power 冰霜之力药剂
        190, 210, 230, 250, -- Skill to make
        2, 3819,                    -- Wintersbite 冬刺草
        1, 3358,                    -- Khadgar's Whisker 卡德加的胡须
        1, 3372,                    -- Leaded Vial 铅瓶
    },
    [18253] = {                                         -- Major Rejuvenation Potion 特效活力药水
        300, 310, 320, 330, -- Skill to make
        1, 10286,                   -- Heart of the Wild 野性之心
        4, 13464,                   -- Golden Sansam 黄金参
        4, 13463,                   -- Dreamfoil 梦叶草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [18294] = {                                         -- Elixir of Greater Water Breathing 强力水下呼吸药剂
        215, 230, 250, 270, -- Skill to make
        2, 8831,                    -- Purple Lotus 紫莲花
        1, 7972,                    -- Ichor of Undeath
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [19931] = {                                         -- Gurubashi Mojo Madness 古拉巴什疯狂魔精
        300, 315, 322, 330, -- Skill to make
        1, 12938,                   -- Blood of Heroes 英雄之血
        1, 19943,                   -- Massive Mojo 极效魔精
        6, 12804,                   -- Powerful Mojo 强力魔精
        1, 13468,                   -- Black Lotus 黑莲花
    },
    [20002] = {                                         -- Greater Dreamless Sleep Potion 强效昏睡药水
        275, 290, 310, 330, -- Skill to make
        2, 13463,                   -- Dreamfoil 梦叶草
        1, 13464,                   -- Golden Sansam 黄金参
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [20004] = {                                         -- Major Troll's Blood Potion 特效巨魔之血药水
        290, 305, 325, 345, -- Skill to make
        2, 13466,                   -- Plaguebloom 瘟疫花
        1, 8846,                    -- Gromsblood 格罗姆之血
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [20007] = {                                         -- Mageblood Potion 魔血药剂
        275, 290, 310, 330, -- Skill to make
        2, 13466,                   -- Plaguebloom 瘟疫花
        1, 13463,                   -- Dreamfoil 梦叶草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [20008] = {                                         -- Living Action Potion 活力行动药水
        285, 300, 320, 340,  -- Skill to make
        2, 13467,                   -- Icecap 冰盖草
        1, 13465,                   -- Mountain Silversage 山鼠草
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [21546] = {                                         -- Elixir of Greater Firepower 强效火力药剂
        250, 265, 285, 305, -- Skill to make
        3, 6371,                    -- Fire Oil 火焰之油
        3, 4625,                    -- Firebloom 火焰花
        1, 8925,                    -- Crystal Vial 水晶瓶
    },
    [22521] = {                                         -- Superior Mana Oil 超级法力之油
        300, 310, 320, 330, -- Skill to make
        3, 22445,                   -- Arcane Dust 奥法之尘
        1, 22791,                   -- Netherbloom 虚空花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22522] = {                                         -- Superior Wizard Oil 超级巫师之油
        340, 340, 350, 360, -- Skill to make
        3, 22445,                   -- Arcane Dust 奥法之尘
        1, 22792,                   -- Nightmare Vine 噩梦藤
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22823] = {                                         -- Elixir of Camouflage 伪装药剂
        305, 320, 327, 335, -- Skill to make
        1, 22787,                   -- Ragveil 邪雾草
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22824] = {                                         -- Elixir of Major Strength 特效力量药剂
        305, 320, 327, 335, -- Skill to make
        1, 13465,                   -- Mountain Silversage 山鼠草
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22825] = {                                         -- Elixir of Healing Power 治疗能量药剂
        310, 325, 332, 340, -- Skill to make
        1, 13464,                   -- Golden Sansam 黄金参
        1, 22786,                   -- Dreaming Glory 梦露花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22826] = {                                         -- Sneaking Potion 潜行药水
        315, 330, 337, 345, -- Skill to make
        2, 22787,                   -- Ragveil 邪雾草
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22827] = {                                         -- Elixir of Major Frost Power 特效冰霜能量药剂
        320, 335, 342, 350, -- Skill to make
        2, 22578,                   -- Mote of Water 水之微粒
        1, 22790,                   -- Ancient Lichen 远古苔
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22828] = {                                         -- Insane Strength Potion 疯狂力量药水
        320, 335, 342, 350, -- Skill to make
        3, 22789,                   -- Terocone 泰罗果
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22829] = {                                         -- Super Healing Potion 超级治疗药水
        325, 340, 347, 355, -- Skill to make
        2, 22791,                   -- Netherbloom 虚空花
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22830] = {                                         -- Elixir of the Searching Eye 搜寻之眼药剂
        325, 340, 347, 355, -- Skill to make
        2, 22787,                   -- Ragveil 邪雾草
        1, 22789,                   -- Terocone 泰罗果
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22831] = {                                         -- Elixir of Major Agility 特效敏捷药剂
        330, 345, 352, 360, -- Skill to make
        1, 22789,                   -- Terocone 泰罗果
        2, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22832] = {                                         -- Super Mana Potion 超级法力药水
        340, 355, 362, 370, -- Skill to make
        2, 22786,                   -- Dreaming Glory 梦露花
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22833] = {                                         -- Elixir of Major Firepower 特效火力药剂
        345, 360, 367, 375, -- Skill to make
        2, 22574,                   -- Mote of Fire 火焰微粒
        1, 22790,                   -- Ancient Lichen 远古苔
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22834] = {                                         -- Elixir of Major Defense 特效防御药剂
        345, 360, 367, 375, -- Skill to make
        3, 22790,                   -- Ancient Lichen 远古苔
        1, 22789,                   -- Terocone 泰罗果
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22835] = {                                         -- Elixir of Major Shadow Power 特效暗影能量药剂
        350, 365, 372, 380, -- Skill to make
        1, 22790,                   -- Ancient Lichen 远古苔
        1, 22792,                   -- Nightmare Vine 噩梦藤
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22836] = {                                         -- Major Dreamless Sleep Potion 特效无梦睡眠药水
        350, 365, 372, 380, -- Skill to make
        1, 22786,                   -- Dreaming Glory 梦露花
        1, 22792,                   -- Nightmare Vine 噩梦藤
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22837] = {                                         -- Heroic Potion 英雄药水
        350, 365, 372, 380, -- Skill to make
        2, 22789,                   -- Terocone 泰罗果
        1, 22790,                   -- Ancient Lichen 远古苔
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22838] = {                                         -- Haste Potion 加速药水
        350, 365, 372, 380, -- Skill to make
        2, 22789,                   -- Terocone 泰罗果
        1, 22791,                   -- Netherbloom 虚空花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22839] = {                                         -- Destruction Potion 毁灭药水
        355, 370, 377, 385, -- Skill to make
        2, 22792,                   -- Nightmare Vine 噩梦藤
        1, 22791,                   -- Netherbloom 虚空花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22840] = {                                         -- Elixir of Major Mageblood 特效魔血药剂
        355, 370, 377, 385, -- Skill to make
        1, 22790,                   -- Ancient Lichen 远古苔
        1, 22791,                   -- Netherbloom 虚空花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22841] = {                                         -- Major Fire Protection Potion 特效火焰防护药水
        365, 375, 377, 380,   -- Skill to make
        1, 21884,                   -- Primal Fire 源生火焰
        3, 22793,                   -- Mana Thistle 法力蓟
        5, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22842] = {                                         -- Major Frost Protection Potion 特效冰霜防护药水
        365, 375, 377, 380,   -- Skill to make
        1, 21885,                   -- Primal Water 源生之水
        3, 22793,                   -- Mana Thistle 法力蓟
        5, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22844] = {                                         -- Major Nature Protection Potion 特效自然防护药水
        365, 375, 377, 380,   -- Skill to make
        1, 21886,                   -- Primal Life 源生生命
        3, 22793,                   -- Mana Thistle 法力蓟
        5, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22845] = {                                         -- Major Arcane Protection Potion 特效奥术防护药水
        365, 375, 377, 380,   -- Skill to make
        1, 22457,                   -- Primal Mana 源生法力
        3, 22793,                   -- Mana Thistle 法力蓟
        5, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22846] = {                                         -- Major Shadow Protection Potion 特效暗影防护药水
        365, 375, 377, 380,   -- Skill to make
        1, 22456,                   -- Primal Shadow 源生暗影
        3, 22793,                   -- Mana Thistle 法力蓟
        5, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22847] = {                     -- Major Holy Protection Potion 特效神圣防护药水
        365, 375, 377, 380,  -- Skill to make
        1, 21886,                   -- Primal Life 源生生命
        3, 22793,                   -- Mana Thistle 法力蓟
        5, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22848] = {                                         -- Elixir of Empowerment 强化药剂
        365, 380, 387, 395, -- Skill to make
        1, 22791,                   -- Netherbloom 虚空花
        1, 22793,                   -- Mana Thistle 法力蓟
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22849] = {                                         -- Ironshield Potion 铁盾药水
        365, 375, 377, 380, -- Skill to make
        2, 22790,                   -- Ancient Lichen 远古苔
        3, 22573,                   -- Mote of Earth 土之微粒
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22850] = {                                         -- Super Rejuvenation Potion 超级活力药水
        360, 375, 377, 380,  -- Skill to make
        2, 22793,                   -- Mana Thistle 法力蓟
        1, 22786,                   -- Dreaming Glory 梦露花
        1, 22791,                   -- Netherbloom 虚空花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22851] = {                                         -- Flask of Fortification 强固合剂
        0, 390, 397, 405,   -- Skill to make
        7, 22790,                   -- Ancient Lichen 远古苔
        3, 22793,                   -- Mana Thistle 法力蓟
        1, 22794,                   -- Fel Lotus 魔莲花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22853] = {                                         -- Flask of Mighty Restoration 强效回复合剂
        0, 390, 397, 405,   -- Skill to make
        7, 22786,                   -- Dreaming Glory 梦露花
        3, 22793,                   -- Mana Thistle 法力蓟
        1, 22794,                   -- Fel Lotus 魔莲花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22854] = {                                         -- Flask of Relentless Assault 无情突袭合剂
        0, 390, 397, 405,   -- Skill to make
        7, 22789,                   -- Terocone 泰罗果
        3, 22793,                   -- Mana Thistle 法力蓟
        1, 22794,                   -- Fel Lotus 魔莲花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22861] = {                                         -- Flask of Blinding Light 盲目光芒合剂
        0, 390, 397, 405,   -- Skill to make
        7, 22791,                   -- Netherbloom 虚空花
        3, 22793,                   -- Mana Thistle 法力蓟
        1, 22794,                   -- Fel Lotus 魔莲花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22871] = {                                         -- Shrouding Potion 遮罩药水
        335, 350, 357, 365,   -- Skill to make
        3, 22787,                   -- Ragveil 邪雾草
        1, 22791,                   -- Netherbloom 虚空花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [28100] = {                                         -- Volatile Healing Potion 不稳定的治疗药水
        300, 315, 322, 330, -- Skill to make
        1, 13464,                   -- Golden Sansam 黄金参
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [28101] = {                                         -- Unstable Mana Potion 不稳定的法力药水
        310, 325, 332, 340, -- Skill to make
        2, 22787,                   -- Ragveil 邪雾草
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [22866] = {                                         -- Flask of Pure Death 纯粹死亡合剂
        0, 390, 397, 405,   -- Skill to make
        7, 22792,                   -- Nightmare Vine 噩梦藤
        3, 22793,                   -- Mana Thistle 法力蓟
        1, 22794,                   -- Fel Lotus 魔莲花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [28102] = {                                         -- Onslaught Elixir 强攻药剂
        300, 315, 322, 330, -- Skill to make
        1, 13465,                   -- Mountain Silversage 山鼠草
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [28103] = {                                         -- Adept's Elixir 法能药剂
        300, 315, 322, 330, -- Skill to make
        1, 13463,                   -- Dreamfoil 梦叶草
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [28104] = {                                         -- Elixir of Mastery 掌控药剂
        315, 330, 337, 345, -- Skill to make
        3, 22789,                   -- Terocone 泰罗果
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [31676] = {                                         -- Fel Regeneration Potion 魔能回复药水
        345, 360, 367, 375, -- Skill to make
        2, 22785,                   -- Felweed 魔草
        1, 22792,                   -- Nightmare Vine 噩梦藤
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [31677] = {                                         -- Fel Mana Potion 魔能法力药水
        360, 375, 377, 380,   -- Skill to make
        1, 22793,                   -- Mana Thistle 法力蓟
        2, 22792,                   -- Nightmare Vine 噩梦藤
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [31679] = {                                         -- Fel Strength Elixir 魔能力量药水
        335, 350, 357, 365, -- Skill to make
        2, 22792,                   -- Nightmare Vine 噩梦藤
        1, 22789,                   -- Terocone 泰罗果
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [32062] = {                                         -- Elixir of Major Fortitude 特效坚韧药剂
        310, 325, 332, 340, -- Skill to make
        2, 22787,                   -- Ragveil 邪雾草
        1, 22785,                   -- Felweed 魔草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [32063] = {                                         -- Earthen Elixir 土灵药剂
        320, 335, 342, 350, -- Skill to make
        1, 22786,                   -- Dreaming Glory 梦露花
        2, 22787,                   -- Ragveil 邪雾草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [32067] = {                                         -- Elixir of Draenic Wisdom 德拉诺智慧药剂
        320, 335, 342, 350, -- Skill to make
        1, 22785,                   -- Felweed 魔草
        1, 22789,                   -- Terocone 泰罗果
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [32068] = {                                         -- Elixir of Ironskin 铁皮药剂
        330, 345, 352, 360, -- Skill to make
        1, 22790,                   -- Ancient Lichen 远古苔
        1, 22787,                   -- Ragveil 邪雾草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [32839] = {                                         -- Cauldron of Major Arcane Protection 特效奥术防护药锅
        360, 360, 370, 380,   -- Skill to make
        2, 22457,                   -- Primal Mana 源生法力
        7, 22793,                   -- Mana Thistle 法力蓟
        1, 23782,                   -- Fel Iron Casing 魔铁外壳
    },
    [32849] = {                                         -- Cauldron of Major Fire Protection 特效火焰防护药锅
        360, 360, 370, 380,   -- Skill to make
        2, 21884,                   -- Primal Fire 源生火焰
        7, 22793,                   -- Mana Thistle 法力蓟
        1, 23782,                   -- Fel Iron Casing 魔铁外壳
    },
    [32850] = {                                         -- Cauldron of Major Frost Protection 特效冰霜防护药锅
        360, 360, 370, 380,   -- Skill to make
        2, 21885,                   -- Primal Water 源生之水
        7, 22793,                   -- Mana Thistle 法力蓟
        1, 23782,                   -- Fel Iron Casing 魔铁外壳
    },
    [32851] = {                                         -- Cauldron of Major Nature Protection 特效自然防护药锅
        360, 360, 370, 380,   -- Skill to make
        2, 21886,                   -- Primal Life 源生生命
        7, 22793,                   -- Mana Thistle 法力蓟
        1, 23782,                   -- Fel Iron Casing 魔铁外壳
    },
    [32852] = {                                         -- Cauldron of Major Shadow Protection 特效暗影防护药锅
        360, 360, 370, 380,   -- Skill to make
        2, 22456,                   -- Primal Shadow 源生暗影
        7, 22793,                   -- Mana Thistle 法力蓟
        1, 23782,                   -- Fel Iron Casing 魔铁外壳
    },
    [33208] = {                                         -- Flask of Chromatic Wonder 多彩奇迹合剂
        375, 390, 397, 405, -- Skill to make
        7, 22786,                   -- Dreaming Glory 梦露花
        3, 22791,                   -- Netherbloom 虚空花
        1, 22794,                   -- Fel Lotus 魔莲花
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },
    [34440] = {                                         -- Mad Alchemist's Potion 疯狂炼金师药水
        325, 335, 342, 350, -- Skill to make
        2, 22787,                   -- Ragveil 邪雾草
        1, 18256,                   -- Imbued Vial 灌魔之瓶
    },

}

-- ====================================================================================================
-- =                             Supplementary materials used in alchemy.                             =
-- ====================================================================================================

OTHER_LIST = {

    [1288] = {                                          -- Large Venom Sac
        3386,                       -- Potion of Curing 治愈药水
    },
    [3164] = {                                          -- Discolored Worg Heart 变色的狼心
        4596,                       -- Discolored Healing Potion 褪色的治疗药水
    },
    [3575] = {                                          -- Iron Bar
        9149,                       -- Philosopher's Stone 点金石
        3577,                       -- Gold Bar
    },
    [3858] = {                                          -- Mithril Ore 秘银矿石
        4623,                       -- Lesser Stoneshield Potion 次级石盾药水
    },
    [3860] = {                                          -- Mithril Bar 秘银锭
        6037,                       -- Truesilver Bar 真银锭
    },
    [4342] = {                                          -- Purple Dye 紫色染料
        9210,                       -- Ghost Dye 幻象染料
    },
    [4402] = {                                          -- Small Flame Sac 火囊
        6049,                       -- Fire Protection Potion
    },
    [5635] = {                                          -- Sharp Claw 锋利的爪子
        5631,                       -- Rage Potion 怒气药水
    },
    [5637] = {                                          -- Large Fang 大牙齿
        5633,                       -- Great Rage Potion 暴怒药水
    },
    [6359] = {                                          -- Firefin Snapper 火鳞鳝鱼
        6371,                       -- Fire Oil 火焰之油
    },
    [6358] = {                                          -- Oily Blackmouth 黑口鱼
        6370,                       -- Blackmouth Oil 黑口鱼油
    },
    [6370] = {                                          -- Blackmouth Oil 黑口鱼油
        8827,                       -- Elixir of Waterwalking 水上行走药剂
        5996,                       -- Elixir of Water Breathing 水下呼吸药剂
        6372,                       -- Swim Speed Potion 速游药水
        5634,                       -- Free Action Potion 自由行动药水
    },
    [6371] = {                                          -- Fire Oil 火焰之油
        6373,                       -- Elixir of Firepower 火力药剂
        6049,                       -- Fire Protection Potion
    },
    [6522] = {                                          -- Deviate Fish 变异鱼
        6662,                       -- Elixir of Giant Growth 增长药剂
    },
    [7067] = {                                          -- Elemental Earth 元素之土
        9030,                       -- Restorative Potion 滋补药剂
        13458,                      -- Greater Nature Protection Potion 强效自然防护药水
    },
    [7068] = {                                          -- Elemental Fire 元素火焰
        13457,                       -- Greater Fire Protection Potion 强效火焰防护药水
    },
    [7069] = {                                          -- Elemental Air 元素空气
        13460,                      -- Greater Holy Protection Potion 强效神圣防护药水
    },
    [7070] = {                                          -- Elemental Water 元素之水
        13456,                      -- Greater Frost Protection Potion 强效冰霜防护药水
    },
    [7972] = {                                          -- Ichor of Undeath
        18294,                      -- Elixir of Greater Water Breathing 强力水下呼吸药剂
    },
    [9149] = {                                          -- Philosopher's Stone 点金石
        13503,                      -- Alchemist's Stone
    },
    [9260] = {                                          -- Volatile Rum 烈性朗姆酒
        9061,                       -- Goblin Rocket Fuel 地精火箭燃油
    },
    [9262] = {                                          -- Black Vitriol 黑色硫酸盐
        9149,                       -- Philosopher's Stone 点金石
    },
    [10286] = {                                          -- Heart of the Wild 野性之心
        18253,                      -- Major Rejuvenation Potion 特效活力药水
    },
    [10620] = {                                          -- Thorium Ore 瑟银矿石
        13455,                      -- Greater Stoneshield Potion 强效石盾药水
    },
    [11176] = {                                         -- Dream Dust 梦境之尘
        13461,                      -- Greater Arcane Protection Potion 强效奥术防护药水
    },
    [12804] = {                                         -- Powerful Mojo 强力魔精
        19931,                      -- Gurubashi Mojo Madness 古拉巴什疯狂魔精
    },
    [12938] = {                                         -- Blood of Heroes 英雄之血
        19931,                      -- Gurubashi Mojo Madness 古拉巴什疯狂魔精
    },
    [13422] = {                                         -- Stonescale Eel 石鳞鳗
        13423,                      -- Stonescale Oil 石鳞鱼油
    },
    [13423] = {                                         -- Stonescale Oil 石鳞鱼油
        13445,                      -- Elixir of Superior Defense 超强防御药剂
        13455,                      -- Greater Stoneshield Potion 强效石盾药水
        13506,                      -- Flask of Petrification 化石合剂
        13510,                      -- Flask of the Titans 泰坦合剂
    },
    [19943] = {                                         -- Massive Mojo 极效魔精
        19931,                      -- Gurubashi Mojo Madness 古拉巴什疯狂魔精
    },
    [21884] = {                                         -- Primal Fire 源生火焰
        32849,                      -- Cauldron of Major Fire Protection 特效火焰防护药锅
        22841,                      -- Major Fire Protection Potion 特效火焰防护药水
    },
    [21885] = {                                         -- Primal Water 源生之水
        32850,                      -- Cauldron of Major Frost Protection 特效冰霜防护药锅
        22842,                      -- Major Frost Protection Potion 特效冰霜防护药水
    },
    [21886] = {                                         -- Primal Life 源生生命
        32851,                      -- Cauldron of Major Nature Protection 特效自然防护药锅
        22847,                      -- Major Holy Protection Potion 特效神圣防护药水
        22844,                      -- Major Nature Protection Potion 特效自然防护药水
    },
    [22445] = {                                         -- Arcane Dust 奥法之尘
        22521,                      -- Superior Mana Oil 超级法力之油
        22522,                      -- Superior Wizard Oil 超级巫师之油
    },
    [22456] = {                                         -- Primal Shadow 源生暗影
        32852,                      -- Cauldron of Major Shadow Protection 特效暗影防护药锅
        22846,                      -- Major Shadow Protection Potion 特效暗影防护药水
    },
    [22457] = {                                         -- Primal Mana 源生法力
        32839,                      -- Cauldron of Major Arcane Protection 特效奥术防护药锅
        22845,                      -- Major Arcane Protection Potion 特效奥术防护药水
    },
    [22573] = {                                         -- Mote of Earth 土之微粒
        22849,                      -- Ironshield Potion 铁盾药水
    },
    [22574] = {                                         -- Mote of Fire 火焰微粒
        22833,                      -- Elixir of Major Firepower 特效火力药剂
    },
    [22578] = {                                         -- Mote of Water 水之微粒
        22827,                      -- Elixir of Major Frost Power 特效冰霜能量药剂
    },
    [23782] = {                                         -- Fel Iron Casing 魔铁外壳
        32839,                      -- Cauldron of Major Arcane Protection 特效奥术防护药锅
        32849,                      -- Cauldron of Major Fire Protection 特效火焰防护药锅
        32850,                      -- Cauldron of Major Frost Protection 特效冰霜防护药锅
        32851,                      -- Cauldron of Major Nature Protection 特效自然防护药锅
        32852,                      -- Cauldron of Major Shadow Protection 特效暗影防护药锅
    },

}

--Now we make it available in all files in our addon.
namespace.HERB_LIST = HERB_LIST
namespace.ALCHEMY_LIST = ALCHEMY_LIST
namespace.OTHER_LIST = OTHER_LIST
