
--所有通用设置 都在这里
--[[
---------------------------------------------不懂的一定要好好看这里的说明
--两个减号 -- 为注释符号 注释掉后相关的设置将不再起作用 
所用到的数据类型有以下几种 
1、逻辑型 有两种状态 true为真 false为假  大家看到带有false与true的数据 就知道他是逻辑型了
2、数值型 支持小数 负数 直接填写数字就是了 如：-1 100 0.123 这种都是数值型 不需要带引号 
3、字符串型 填写的时候前后都需要用半角引号包含起来 如："我是仓库号" 注意只有字符串型的才需要两边带引号
然后这三种类型的数据都能使用nil  nil是空值 表示忽略 ，表示什么都没有 两边不需要引号

设置中需要用到的数据 各种数据名字与类名都需要打开目录下的调试信息查看器，然后再游戏中按HOME键呼出调试窗口 
点击你要查看的数据的按钮，里面都能找到名字=name 类名=className 这里推荐大家要填写className 这样设置好的配置能够台 国 国际 三服通用
所有设置又分为两种 
1、变量型：设置项=数据 这种简单粗暴的都是变量型设置 直接改那个等于号后面的数据就是了
2、函数型：函数名(参数1,参数2) 这样的就是函数型 由函数名与若干个参数组成 参数被半角括号()套起来
]]
------------------基本设置
g_needMinimizeGame=true			--最小化遊戲窗口 true为最小化 false或nil为不最小化
g_imBoss=false					--如果是仓库号要为true 挂机号为false
g_attackDis=50					--攻击距离
g_yiJieTimeOut=15*60			--异界地图内的超时时间 单位为秒 如果未设置就会用g_timeOut *是乘号 这里为15乘以60=15分钟
g_timeOut=25*60					--在一个地图呆的时间超过设置的 就重新开图重新 单位为秒
g_addTianFu=true				--自动按设定好的配置加天赋 true为加 nil或false为不加
g_shengJiBaoShi=true			--自动升级宝石 true为升级 nil或false为不升级
g_sellSkillGem=true				--自动卖超过40品质的技能宝石
g_notHuanYaoLv=82				--大于等于多少级只捡蓝色以上药 
g_needAutoChangeEquip=false		--开启自动换装 true为换 nil或false为不换
g_needAutoSetBaoShi=false		--开启自动换宝石 true为换 nil或false为不换
g_bossGiveZhuangBei=false		--交易时仓库号给予缺少的高级换装中的装备 true为给 false为不给 是对仓库号设置的
g_xiaoHaoGetZhuangBei=false		--挂机号向发装仓库号申请领高级换装中的装备 true为申请 false为不申请 

--SetZhuangBeiBoss(bossName,srvName)--设置发装仓库号 bossName=发装号名字 字符串型 srvName=服务器名字，如果多个区用同一份配置的话填上服务器名字可单独区分 如果不是可忽略 或填nil 
--SetZhuangBeiBoss("这里填上你自己的发装仓库号名字","区名字")--发装备的仓库号 如果不需要 就注释掉 只有挂机号跟仓库号都是 外挂账号 才有效

--SetNeedAddTianFu(tfStr)--设置异界天赋加点 
SetNeedAddTianFu("异界地图天赋=atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_path_11-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_kirac_1_10-基拉克任務機率|atlas_kirac_1_9-基拉克任務機率|atlas_zana_1_6-重點偵察|atlas_kirac_1_8_-基拉克任務機率|atlas_kirac_1_7-基拉克任務機率|atlas_path_96-掉落複製地圖|atlas_path_94-掉落複製地圖|atlas_map_drops_8-掉落複製地圖|atlas_path_92-掉落複製地圖|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_90-掉落複製地圖|atlas_keystone_smallnodes_1-流浪之路|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_kirac_2_1-基拉克任務機率|atlas_kirac_2_2-基拉克任務機率|atlas_kirac_2_3-基拉克任務機率|atlas_map_tier_5_1-高階地圖機率|atlas_map_tier_5_2-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_keystone_enhanced_kirac_crafts-超載電路|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_4_2-高階地圖機率|atlas_map_tier_4_1-高階地圖機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_22-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_20-相鄰地圖掉落機率|atlas_path_1-相鄰地圖掉落機率|atlas_path_19-相鄰地圖掉落機率|atlas_path_10-相鄰地圖掉落機率|atlas_path_6-相鄰地圖掉落機率|atlas_path_5-相鄰地圖掉落機率|atlas_path_30_1-相鄰地圖掉落機率|atlas_map_drops_1-掉落複製地圖|atlas_map_drops_10-掉落複製地圖|atlas_map_drops_11-掉落複製地圖|atlas_path_4-相鄰地圖掉落機率|atlas_path_7-相鄰地圖掉落機率|atlas_path_88-掉落複製地圖|atlas_map_drops_12_-掉落複製地圖|atlas_path_87-掉落複製地圖|atlas_map_drops_13-掉落複製地圖|atlas_map_drops_16-掉落複製地圖|atlas_map_drops_15-掉落複製地圖|atlas_path_82-掉落複製地圖|atlas_map_drops_14-掉落複製地圖|atlas_path_85-掉落複製地圖|atlas_map_drops_4-掉落複製地圖|atlas_path_83-掉落複製地圖|atlas_map_drops_5-掉落複製地圖|atlas_path_84-掉落複製地圖|")


--添加在做到某个任务时购买技能宝石
--AddNeedBuySkillTime(city,task)-- city=城市索引数值型 1-11 task=任务类名 字符串型 任务类名可以在调试窗口中点击 所有任务 按钮查看到
----A1
AddNeedBuySkillTime(1,"a1q1")
AddNeedBuySkillTime(1,"a1q5")
AddNeedBuySkillTime(1,"a1q4")
AddNeedBuySkillTime(1,"a1q2")
AddNeedBuySkillTime(1,"a1q3")
AddNeedBuySkillTime(1,"a1q6")
AddNeedBuySkillTime(1,"a1q9")
AddNeedBuySkillTime(1,"a1q7")
----A2
AddNeedBuySkillTime(2,"a2q7")
AddNeedBuySkillTime(1,"a2q6")
AddNeedBuySkillTime(2,"a2q9")
AddNeedBuySkillTime(1,"a2q9")
AddNeedBuySkillTime(2,"a2q2")
AddNeedBuySkillTime(1,"a2q8")
AddNeedBuySkillTime(1,"a2q2")
-----A3
AddNeedBuySkillTime(2,"a3q1")
AddNeedBuySkillTime(2,"a3q11")
AddNeedBuySkillTime(1,"a3q3")
AddNeedBuySkillTime(1,"a3q4")
AddNeedBuySkillTime(3,"a3q8")
AddNeedBuySkillTime(3,"a3q9")
AddNeedBuySkillTime(3,"a3q12")
AddNeedBuySkillTime(3,"a3q10")
----A4
AddNeedBuySkillTime(3,"a4q2")
AddNeedBuySkillTime(2,"a4q2")
AddNeedBuySkillTime(1,"a4q2")
AddNeedBuySkillTime(3,"a4q6")
AddNeedBuySkillTime(3,"a4q3")
AddNeedBuySkillTime(3,"a4q4")
AddNeedBuySkillTime(4,"a4q5")
AddNeedBuySkillTime(3,"a4q1")
----A5
AddNeedBuySkillTime(3,"a5q3")
AddNeedBuySkillTime(2,"a5q3")
AddNeedBuySkillTime(1,"a5q3")
AddNeedBuySkillTime(4,"a5q5")

AddNeedBuySkillTime(6,"a6q1")	--在第6章的惊海之王时 检测购买一遍
AddNeedBuySkillTime(6,"a6q2")
AddNeedBuySkillTime(6,"a6q3")
AddNeedBuySkillTime(6,"a6q5")
AddNeedBuySkillTime(6,"a7q2")
AddNeedBuySkillTime(6,"a8q2")
AddNeedBuySkillTime(6,"a10q2")	--第10章的死亡和重生任务 检测购买一遍
AddNeedBuySkillTime(11,"a11q1")	--在拾取碎片 这个任务时检测购买一遍


--药瓶摆放
--SetNeedFlaskData(pos,flask)--设置药  pos=位置 1-5  flask=药 字符串型，支持以下 (生命药剂,魔力药剂,复合药剂,宝钻药剂,红玉药剂,蓝玉药剂,黄玉药剂,坚岩药剂,水银药剂,紫晶药剂,石英药剂,翠玉药剂,石化药剂,海蓝药剂,迷雾药剂,硫磺药剂,真银药剂,灰岩药剂)
SetNeedFlaskData(1,"生命药剂","nil")
SetNeedFlaskData(2,"魔力药剂","nil")
SetNeedFlaskData(3,"宝钻药剂","nil")
SetNeedFlaskData(4,"紫晶药剂","nil")
SetNeedFlaskData(5,"水银药剂","nil")

--AddNotMakeTaskData(taskClassName)--添加不需要做的任务 taskClassName为任务类名
AddNotMakeTaskData("a2q5")--梦中圣地
AddNotMakeTaskData("a2q10")--白色巨兽
AddNotMakeTaskData("a3q13")--重生的渴望
--AddNotMakeTaskData("a3q12")--命运之语
AddNotMakeTaskData("a6q5")--毕斯特传奇
--AddNotMakeTaskData("a7q8")--古斯特的墓碑
AddNotMakeTaskData("a7q5")--银色吊坠
AddNotMakeTaskData("a8q5")--瓦斯提里之翼
AddNotMakeTaskData("a9q4")--命运之历
AddNotMakeTaskData("a10q4")--无爱旧魂
AddNotMakeTaskData("a10q5")--深海之路


--AddUseGoodsData(name,className)--添加要使用的物品必须填一个，忽略填nil --name=物品名字 className=物品类名 
AddUseGoodsData("天賦之書")--添加天赋之书
AddUseGoodsData("後悔之書")--添加後悔之书


--SetZhongShenData(className1,className2)--设置要加的众神殿数据 className1=高阶数据类名 字符串型 className2=低阶数据类名 字符串型 
SetZhongShenData("Lunaris","Gruthkul")--设置月影女神之魂与绝望之母 格鲁丝克之魂

------------------存仓分类
--SetSaveIndex(saveType,pageName,goodsName,goodsClassName,wordName,wordClassName,pageType)--设置存仓页面 
--saveType 物品类型 字符串型 支持以下种类 忽略填nil 多种类型以|分开 --saveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--pageName 仓库页面名 字符串型 可填多个，中间用|隔开
--goodsName 物品名 字符串型 忽略填nil
--goodsClassName 物品类名 字符串型 忽略填nil
--wordName 词缀名 字符串型 忽略填nil
--wordClassName 词缀类名 字符串型 忽略填nil
--pageType 仓库页类型 数值型 不填或nil或0 为普通仓库 1为通货页 2为命运卡页  3为碎片页

-------注意要大类在前 小类 单独设置在后面添加
SetSaveIndex("通货|可堆叠通货","1")
SetSaveIndex("异界地图","2")
SetSaveIndex("项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|腰带|手套|鞋子|头盔","3|4")
SetSaveIndex("珠宝|命运卡|衣服|盾|箭袋|地图碎片","4")
SetSaveIndex("生命药剂|魔力药剂|复合药剂|功能药剂","4")
SetSaveIndex(nil,"4","鍊魔眼睛","Metadata/Items/Metamorphosis/MetamorphosisEye")
SetSaveIndex(nil,"4","预言","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"4","鏈結石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"4","改造石","Metadata/Items/Currency/CurrencyRerollMagic")

------------------挂机相关
g_yijieNoWhiteMonster=false		--异界时是否不打白怪 true为不打 nil或false为打
g_yijieNoWhiteBox=true			--异界时是否不开白箱子 true为不开 nil或false为开
g_useYiJieWanChengDuLv=90	--使用下面异界完成度那个设置的等级，如果未到等则刷全图
g_yiJieWanChengDu=0.9		--异界完成度 完成多少就回去 为1或1以下的小数
g_yongHengShiBeiLv=90		--大于等于多少级打永恒石碑 
g_needTaFangLv=90			--大于等于多少级打塔防
g_needLianMoLv=90			--大于等于多少级打炼魔
g_attackFreezeMonsterLv=90	--大于等于多少级打冰冻怪
g_needChuanYueLv=90			--大于等于多少级打穿越怪
g_needLieXiLv=90			--大於等于多少级打时空裂缝怪
g_needMiWuLv=90				--大于等于多少级打迷雾

g_yuyanCnt=nil				--够多少银币去预言，小于10银币或填nil将不会触发 如果设定去预言，那下面还需要设置交易给仓库号的预言

--地图相关
--SetNotMapGoMap(className,cnt) 设置无地图或未到等级时要刷的剧情地图 className字符串型 地图类名 cnt=次数
SetNotMapGoMap("2_9_1",10)	--无地图时刷血色通道

g_yiJieLv=73				--够了多少级才去刷异界
g_checkSellMapCnt=60		--地图超过这个数量才会检测出售地图
g_destroyNoUseMap=false		--销毁上面设置不使用的地图 nil或false为不销毁
g_mapUseFuHaoLv=76			--大于等于多少级对蓝图使用富豪石 nil为永远不使用
g_mapUseZengFuLv=nil			--大于等于多少级对蓝图使用增幅石 nil为永远不使用
g_mapUseDianJingLv=76		--大于等于多少级对白图使用点金石 nil为永远不使用
g_mapUseTuiBianLv=72		--大于等于多少级对白图使用蜕变石 nil为永远不使用
g_mapUseJiHuiLv=nil			--大于等于多少级对白图使用机会石 nil为永远不使用
g_mapUseWaErLv=82			--大于等于多少级对白、蓝地图使用瓦尔宝珠 nil为永远不使用
g_mapUseDingZiLv=nil			--大于等于多少级使用制图钉 nil为永远不使用
g_noUseMapLv=0				--不使用、不捡多少阶及以上的地图 nil或0为忽略 设置优先的地图除外

g_mapUseOrangeMap=false		--true为使用橙图 nil或false为不使用
--SetYouXianUseMapData(name,className,color)--设置优先使用的异界地图 
--name 字符串型 地图名 
--className 字符串型 地图类名 
--color 字符串型 颜色 0白1蓝2黄3橙 中间用|隔开


-- SetNoUseMapShuXing(className)--设置不使用带有某种属性的地图,参数 className为属性类名
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--设置不打魔法反射属性
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--无法回复
SetNoUseMapShuXing("is_blighted_map")--凋落地图

--SetLastEnterSmallMap(mapClassName)--设置需要后进小房间的异界地图
--mapClassName 异界地图类名 字符串型

SetLastEnterSmallMap("MapWorldsArachnidTomb")--灵虫墓穴
SetLastEnterSmallMap("MapWorldsTropicalIsland")--晴空幽岛
SetLastEnterSmallMap("MapWorldsBurialChambers")--幽闭墓领
SetLastEnterSmallMap("MapWorldsResidence")--神主居所
SetLastEnterSmallMap("MapWorldsCage")--恶念牢笼
SetLastEnterSmallMap("MapWorldsRamparts")--濱海堡壘
SetLastEnterSmallMap("MapWorldsCaldera")--火山炎口
SetLastEnterSmallMap("MapWorldsVaalPyramid")--瓦尔金字塔
SetLastEnterSmallMap("MapWorldsArena")--競技場
SetLastEnterSmallMap("MapWorldsOvergrownRuin")--長草遺跡
SetLastEnterSmallMap("MapWorldsGorge")--冰川山丘



--SetSellGoodsData(name,className,cnt,color)--设置卖(换)的地图 
--name=物品名 className=物品类名 先识别物品名 识别不到就识别类名 cnt=够多少去卖 color=颜色 0白 1蓝 2黄 多个用|隔开

SetSellGoodsData("熱林塚墓","Metadata/Items/Maps/MapWorldsBarrows",3,"0|1|2|")
SetSellGoodsData("海風高原","Metadata/Items/Maps/MapWorldsPlateau",3,"0|1|2|")
SetSellGoodsData("競技場","Metadata/Items/Maps/MapWorldsArena",3,"0|1|2|")
SetSellGoodsData("骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2|")

SetSellGoodsData("荒地","Metadata/Items/Maps/MapWorldsWasteland",3,"0|1|2|")
SetSellGoodsData("血腥陣地","Metadata/Items/Maps/MapWorldsPrimordialBlocks",3,"0|1|2|")
SetSellGoodsData("墓地谷","Metadata/Items/Maps/MapWorldsGraveTrough",3,"0|1|2|")
SetSellGoodsData("白沙灘頭","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2|")
SetSellGoodsData("暮色沙丘","Metadata/Items/Maps/MapWorldsDunes",3,"0|1|2|")
SetSellGoodsData("淤塞水道","Metadata/Items/Maps/MapWorldsStagnation",3,"0|1|2|")
SetSellGoodsData("濕地礦山","Metadata/Items/Maps/MapWorldsMineral",3,"0|1|2|")
SetSellGoodsData("熔火岩灘","Metadata/Items/Maps/MapWorldsEstuary",3,"0|1|2|")

SetSellGoodsData("瘴氣泥沼","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2|")
SetSellGoodsData("如履危牆","Metadata/Items/Maps/MapWorldsLookout",3,"0|1|2|")
SetSellGoodsData("平頂荒漠","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2|")
SetSellGoodsData("岔河","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2|")
SetSellGoodsData("寒河","Metadata/Items/Maps/MapWorldsColdRiver",3,"0|1|2|")
SetSellGoodsData("致命岩灘","Metadata/Items/Maps/MapWorldsStrand",3,"0|1|2|")
SetSellGoodsData("神主居所","Metadata/Items/Maps/MapWorldsResidence",3,"0|1|2|")
SetSellGoodsData("密草神殿","Metadata/Items/Maps/MapWorldsOvergrownShrine",3,"0|1|2|")

SetSellGoodsData("血腥沼澤","Metadata/Items/Maps/MapWorldsPrimordialPool",3,"0|1|2|")
SetSellGoodsData("極原冰帽","Metadata/Items/Maps/MapWorldsIceberg",3,"0|1|2|")
SetSellGoodsData("晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery",3,"0|1|2|")
SetSellGoodsData("墮影墓場","Metadata/Items/Maps/MapWorldsGraveyard",3,"0|1|2|")

SetSellGoodsData("嬋娟神殿","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2|")
SetSellGoodsData("瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2|")
SetSellGoodsData("畸形亡域","Metadata/Items/Maps/MapWorldsMalformation",3,"0|1|2|")

SetSellGoodsData("火山炎域","Metadata/Items/Maps/MapWorldsVolcano",3,"0|1|2|")
SetSellGoodsData("遠古市集","Metadata/Items/Maps/MapWorldsBazaar",3,"0|1|2|")
SetSellGoodsData("奇術之庭","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2|")
SetSellGoodsData("危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways",3,"0|1|2|")
SetSellGoodsData("濱海山丘","Metadata/Items/Maps/MapWorldsAtoll",3,"0|1|2|")
SetSellGoodsData("晴空幽島","Metadata/Items/Maps/MapWorldsTropical",3,"0|1|2|")
SetSellGoodsData("荒涼牧野","Metadata/Items/Maps/MapWorldsLeyline",3,"0|1|2|")
SetSellGoodsData("幽魂監牢","Metadata/Items/Maps/MapWorldsCells",3,"0|1|2|")

SetSellGoodsData("夜語幽林","Metadata/Items/Maps/MapWorldsDarkForest",3,"0|1|2|")
SetSellGoodsData("月色迴廊","Metadata/Items/Maps/MapWorldsPromenade",3,"0|1|2|")
SetSellGoodsData("暮光海灘","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2|")
SetSellGoodsData("酸岩酸嶼","Metadata/Items/Maps/MapWorldsAcidCaverns",3,"0|1|2|")
SetSellGoodsData("驚懼樹叢","Metadata/Items/Maps/MapWorldsThicket",3,"0|1|2|")
SetSellGoodsData("異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",3,"0|1|2|")
SetSellGoodsData("惡靈學院","Metadata/Items/Maps/MapWorldsAcademy",3,"0|1|2|")

SetSellGoodsData("巨坑","Metadata/Items/Maps/MapWorldsPit",3,"0|1|2|")
SetSellGoodsData("凍原小屋","Metadata/Items/Maps/MapWorldsFrozenCabins",3,"0|1|2|")
SetSellGoodsData("苦行之域","Metadata/Items/Maps/MapWorldsPrecinct",3,"0|1|2|")
SetSellGoodsData("怒浪之港","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2|")
SetSellGoodsData("惡咒陵墓","Metadata/Items/Maps/MapWorldsCursedCrypt",3,"0|1|2|")
SetSellGoodsData("穢陰獄牢","Metadata/Items/Maps/MapWorldsPen",3,"0|1|2|")
SetSellGoodsData("熔岩之室","Metadata/Items/Maps/MapWorldsLavaChamber",3,"0|1|2|")

SetSellGoodsData("崩壞長廊","Metadata/Items/Maps/MapWorldsArcade",3,"0|1|2|")
SetSellGoodsData("危機水道","Metadata/Items/Maps/MapWorldsWaterways",3,"0|1|2|")
SetSellGoodsData("露台花園","Metadata/Items/Maps/MapWorldsTerrace",3,"0|1|2|")
SetSellGoodsData("失落城塢","Metadata/Items/Maps/MapWorldsPort",3,"0|1|2|")
SetSellGoodsData("遺跡廢墟","Metadata/Items/Maps/MapWorldsCastleRuins",3,"0|1|2|")
SetSellGoodsData("鐵鏽工廠","Metadata/Items/Maps/MapWorldsFactory",3,"0|1|2|")
SetSellGoodsData("古堡","Metadata/Items/Maps/MapWorldsChateau",3,"0|1|2|")

SetSellGoodsData("古競速場","Metadata/Items/Maps/MapWorldsRacecours",3,"0|1|2|")
SetSellGoodsData("寒頂之巔","Metadata/Items/Maps/MapWorldsSummit",3,"0|1|2|")
SetSellGoodsData("異蛛巢穴","Metadata/Items/Maps/MapWorldsArachnidNest",3,"0|1|2|")
SetSellGoodsData("惡臭屍域","Metadata/Items/Maps/MapWorldsCarcass",3,"0|1|2|")
SetSellGoodsData("洪災礦坑","Metadata/Items/Maps/MapWorldsFloodedMine",3,"0|1|2|")
SetSellGoodsData("幽魂宅邸","Metadata/Items/Maps/MapWorldsHauntedMansion",3,"0|1|2|")

SetSellGoodsData("密林果園","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2|")
SetSellGoodsData("聖殿","Metadata/Items/Maps/MapWorldsBasilica",3,"0|1|2|")
SetSellGoodsData("魔金寶庫","Metadata/Items/Maps/MapWorldsVault",3,"0|1|2|")
SetSellGoodsData("緋紅神殿","Metadata/Items/Maps/MapWorldsCrimsonTemple",3,"0|1|2|")
SetSellGoodsData("濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea",3,"0|1|2|")
SetSellGoodsData("闇獄尖塔","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2|")


--SetCompoundDivinationCard(name,className,nType) --设置需要合成的命运卡 name=卡片名 className=卡片类名 nType=合成场景 nil或不填为无论何时都合成 0为没在刷异界才合 1为只在刷异界才合
SetCompoundDivinationCard("黑暗三面","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")--设置合成忠诚命运卡
SetCompoundDivinationCard("蘭塔朵迷惘之愛","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")--设置合成忠诚命运卡
SetCompoundDivinationCard("薇妮雅的信物","Metadata/Items/DivinationCards/DivinationCardViniasToken")--设置合成忠诚命运卡
SetCompoundDivinationCard("珠宝匠","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")--设置合成忠诚命运卡
SetCompoundDivinationCard("浑沌性情","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")--设置合成忠诚命运卡
SetCompoundDivinationCard("帝运","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")--设置合成忠诚命运卡
SetCompoundDivinationCard("好运连连","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")--设置合成忠诚命运卡
SetCompoundDivinationCard("混沌之雨","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")--设置合成忠诚命运卡
SetCompoundDivinationCard("飢渴之佔","Metadata/Items/DivinationCards/DivinationCardCovetedPossession")--设置合成忠诚命运卡
SetCompoundDivinationCard("棄財求生","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")--设置合成忠诚命运卡
SetCompoundDivinationCard("发明家","Metadata/Items/DivinationCards/DivinationCardTheInventor")--设置合成忠诚命运卡
SetCompoundDivinationCard("惊喜盒","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")--设置合成忠诚命运卡
SetCompoundDivinationCard("联姻","Metadata/Items/DivinationCards/DivinationCardTheUnion")--设置合成忠诚命运卡
SetCompoundDivinationCard("怨忿","Metadata/Items/DivinationCards/DivinationCardTheWrath")--设置合成忠诚命运卡
SetCompoundDivinationCard("灾变","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")--设置合成忠诚命运卡
SetCompoundDivinationCard("求生专家","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")--设置合成忠诚命运卡
SetCompoundDivinationCard("忠诚","Metadata/Items/DivinationCards/DivinationCardLoyalty")--设置合成忠诚命运卡
SetCompoundDivinationCard("制图师","Metadata/Items/DivinationCards/DivinationCardTheCartographer")--设置合成忠诚命运卡
SetCompoundDivinationCard("生命之樹","Metadata/Items/DivinationCards/DivinationCardTheSephirot")--设置合成忠诚命运卡
SetCompoundDivinationCard("聖徒之財","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")--设置合成忠诚命运卡
SetCompoundDivinationCard("無痕","Metadata/Items/DivinationCards/DivinationCardNoTraces")--设置合成忠诚命运卡
SetCompoundDivinationCard("善","Metadata/Items/DivinationCards/DivinationCardTheInnocent")--设置合成忠诚命运卡
SetCompoundDivinationCard("愚人","Metadata/Items/DivinationCards/DivinationCardTheFool")--设置合成忠诚命运卡
SetCompoundDivinationCard("赌徒","Metadata/Items/DivinationCards/DivinationCardTheGambler")--设置合成忠诚命运卡
SetCompoundDivinationCard("工匠大师","Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan")--设置合成忠诚命运卡
SetCompoundDivinationCard("情人","Metadata/Items/DivinationCards/DivinationCardTheLover")--设置合成忠诚命运卡
SetCompoundDivinationCard("净白","Metadata/Items/DivinationCards/DivinationCardTheOpulecent")--设置合成忠诚命运卡
SetCompoundDivinationCard("谦逊","Metadata/Items/DivinationCards/DivinationCardHumility")--设置合成忠诚命运卡

--SetNeedBuyGoodsData(name,className,cnt,buyName,buyClassName)--设置开始刷异界时间检测购买指定物品
--name=自己有的通货名 className=自己有的通货类名 cnt=够多少个触发 0或nil 不会触发 buyName=需要购买的物品名 buyClassName=需要购买的物品类名

g_buyNpcData={
mapClassName="1_3_town"
,className="Metadata/NPC/Act3/ClarissaTown"
}--将会在3章 1_3_town 此NPC下购买 name:卡尔丽莎

--SetNeedBuyGoodsData("知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,"传送卷轴","Metadata/Items/Currency/CurrencyPortal")
--SetNeedBuyGoodsData("传送卷轴","Metadata/Items/Currency/CurrencyPortal",nil,"蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetNeedBuyGoodsData("蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",200,"增幅石","Metadata/Items/Currency/CurrencyAddModToMagic")
SetNeedBuyGoodsData("增幅石","Metadata/Items/Currency/CurrencyAddModToMagic",200,"改造石","Metadata/Items/Currency/CurrencyRerollMagic")
--SetNeedBuyGoodsData("改造石","Metadata/Items/Currency/CurrencyRerollMagic",nil,"工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
--SetNeedBuyGoodsData("工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",100,"链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
--SetNeedBuyGoodsData("链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",100,"机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly")
--SetNeedBuyGoodsData("机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly",100,"重铸石","Metadata/Items/Currency/CurrencyConvertToNormal")
--SetNeedBuyGoodsData("重铸石","Metadata/Items/Currency/CurrencyConvertToNormal",nil,"后悔石","Metadata/Items/Currency/CurrencyPassiveRefund")
--SetNeedBuyGoodsData("后悔石","Metadata/Items/Currency/CurrencyPassiveRefund",nil,"点金石","Metadata/Items/Currency/CurrencyUpgradeToRare")


--SetGoodsCaoZuo(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt,checkCangKu)-- 设置要操作的物品
--goodsType 字符串型 操作的物品类型忽略类型请填 nil 支持以下种类 多种类型以|分开 --saveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--czType:字符串型 0为拾 1卖 2存 3丢 4鉴定 可多个中间用|隔开
--name 字符串型 物品的名字 忽略则填 nil
--className 字符串型 物品的类名 忽略则填 nil
--wordName 字符串型 物品的词缀名 忽略则填 nil
--wordClassName 字符串型 物品的词缀类名 忽略则填 nil
--pingzhi 数字型 物品的品质 忽略则填 nil
--cnt 数字型 保留数量 忽略则填 nil
--color 字符串型 颜色 0白 1蓝 2黄 3橙 多个用|隔开 nil为所有
--socketCnt 数字型 总洞数量 忽略则填 nil
--lineCnt 数字型 连洞数量 忽略则填 nil
--checkCangKu 计算保留数量时是否连仓库内的数量也计算进去 nil或false为不计算仓库 true 为需要计算
SetGoodsCaoZuo("通货|可堆叠通货|异界地图","0|2")--多个大类设置捡存
SetGoodsCaoZuo("主动技能宝石|辅助技能宝石","0|1",nil,nil,nil,nil,20)--拾取品质超过5的技能宝石
SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")--拾取 鉴定 出售橙色物品
SetGoodsCaoZuo(nil,nil,"点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,40)--身上保留40
SetGoodsCaoZuo(nil,nil,"机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly",nil,nil,nil,40)--身上保留40
SetGoodsCaoZuo(nil,nil,"知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--够了就不捡了
SetGoodsCaoZuo(nil,nil,"传送卷轴","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,80)--够了就不捡了
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6洞装设置捡卖
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6连洞装设置捡卖
SetGoodsCaoZuo("爪","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("珠宝|深渊珠宝","0|1|4",nil,nil,nil,nil,nil,nil,"2")--拾取 鉴定 出售黄色物品珠宝
SetGoodsCaoZuo(nil,"1|3","周年福袋","Metadata/Items/MicrotransactionCurrency/MicrotransactionTencentEventCoin")--
SetGoodsCaoZuo(nil,"1|3","玻璃弹珠","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"0","磨刀石","Metadata/Items/Currency/CurrencyWeaponQuality")--磨刀石不存
SetGoodsCaoZuo(nil,"0","护甲片","Metadata/Items/Currency/CurrencyArmourQuality")--护甲片不存
SetGoodsCaoZuo(nil,"3","卷轴碎片","Metadata/Items/Currency/CurrencyIdentificationShard")--卷轴碎片丢
SetGoodsCaoZuo(nil,"3","预言","Metadata/Items/Currency/CurrencyItemisedProphecy")--丢预言
SetGoodsCaoZuo(nil,"0|2","蘭塔朵迷惘之愛","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")
SetGoodsCaoZuo(nil,"1|3","祝福石","Metadata/Items/Currency/CurrencyRerollImplicit")--
SetGoodsCaoZuo(nil,"1|3","束縛石","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets")--
SetGoodsCaoZuo(nil,"1|3","工程石","Metadata/Items/Currency/CurrencyStrongboxQuality")--




SetGoodsCaoZuo("异界地图","1|3","致命岩灘","Metadata/Items/Maps/MapWorldsCursedCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","濱海山丘","Metadata/Items/Maps/MapWorldsAtoll",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","暮色沙丘","Metadata/Items/Maps/MapWorldsDunes",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","密草神殿","Metadata/Items/Maps/MapWorldsOvergrownShrine",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","魔影墓場","Metadata/Items/Maps/MapWorldsNecropolis",nil,nil,nil,nil,"3")

SetGoodsCaoZuo(nil,"1|3","普兰德斯金币","Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,nil)


--SetGoodsCaoZuo(nil,"0|2",nil,nil,nil,"Advancing Fortress",nil,nil,"3")--拾取 存储指定橙色物品
SetGoodsCaoZuo(nil,"1|3","清透油瓶","Metadata/Items/Currency/Mushrune1")
SetGoodsCaoZuo(nil,"1|3","深褐油瓶","Metadata/Items/Currency/Mushrune2")
SetGoodsCaoZuo(nil,"1|3","琥珀油瓶","Metadata/Items/Currency/Mushrune3")
SetGoodsCaoZuo(nil,"1|3","翠綠油瓶","Metadata/Items/Currency/Mushrune4")
SetGoodsCaoZuo(nil,"1|3","清綠油瓶","Metadata/Items/Currency/Mushrune5")
SetGoodsCaoZuo(nil,"1|3","碧藍油瓶","Metadata/Items/Currency/Mushrune6")
SetGoodsCaoZuo(nil,"1|3","预言","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetGoodsCaoZuo(nil,"1|3","暴炎化石","Metadata/Items/Currency/CurrencyDelveCraftingFire")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","寒風化石","Metadata/Items/Currency/CurrencyDelveCraftingCold")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","金鋼化石","Metadata/Items/Currency/CurrencyDelveCraftingLightning")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","鋸齒化石","Metadata/Items/Currency/CurrencyDelveCraftingPhysical")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","特異化石","Metadata/Items/Currency/CurrencyDelveCraftingChaos")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","原始化石","Metadata/Items/Currency/CurrencyDelveCraftingLife")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","稠密化石","Metadata/Items/Currency/CurrencyDelveCraftingDefences")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","斑駁化石","Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","三相化石","Metadata/Items/Currency/CurrencyDelveCraftingElemental")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","神幻化石","Metadata/Items/Currency/CurrencyDelveCraftingCasterMods")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","利齒化石","Metadata/Items/Currency/CurrencyDelveCraftingAttackMods")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","明透化石","Metadata/Items/Currency/CurrencyDelveCraftingMana")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","顫慄化石","Metadata/Items/Currency/CurrencyDelveCraftingSpeed")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","畛域化石","Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","無瑕化石","Metadata/Items/Currency/CurrencyDelveCraftingQuality")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","附魔化石","Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","鑲飾化石","Metadata/Items/Currency/CurrencyDelveCraftingSockets")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","雕琢化石","Metadata/Items/Currency/CurrencyDelveCraftingGemLevel")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","血漬化石","Metadata/Items/Currency/CurrencyDelveCraftingVaal")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","鏤空化石","Metadata/Items/Currency/CurrencyDelveCraftingAbyss")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","破裂化石","Metadata/Items/Currency/CurrencyDelveCraftingMirror")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","雕紋化石","Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","紊亂化石","Metadata/Items/Currency/CurrencyDelveCraftingRandom")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","神聖化石","Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls")--可堆疊通貨
SetGoodsCaoZuo(nil,"1|3","鑲金化石","Metadata/Items/Currency/CurrencyDelveCraftingSellPrice")--可堆疊通貨

SetGoodsCaoZuo(nil,"1|3","拓印的封魔之玉","Metadata/Items/Currency/CurrencyItemisedCapturedMonster")--所有精华设置丢卖
SetGoodsCaoZuo(nil,"1|3","憎恨之低语精华","Metadata/Items/Currency/CurrencyEssenceHatred1")
SetGoodsCaoZuo(nil,"1|3","憎恨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceHatred2")
SetGoodsCaoZuo(nil,"1|3","憎恨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceHatred3")
SetGoodsCaoZuo(nil,"1|3","憎恨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceHatred4")
SetGoodsCaoZuo(nil,"1|3","憎恨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceHatred5")
SetGoodsCaoZuo(nil,"1|3","憎恨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceHatred6")
SetGoodsCaoZuo(nil,"1|3","憎恨之破空精华","Metadata/Items/Currency/CurrencyEssenceHatred7")
SetGoodsCaoZuo(nil,"1|3","悲痛之低语精华","Metadata/Items/Currency/CurrencyEssenceWoe1")
SetGoodsCaoZuo(nil,"1|3","悲痛之呢喃精华","Metadata/Items/Currency/CurrencyEssenceWoe2")
SetGoodsCaoZuo(nil,"1|3","悲痛之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWoe3")
SetGoodsCaoZuo(nil,"1|3","悲痛之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWoe4")
SetGoodsCaoZuo(nil,"1|3","悲痛之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWoe5")
SetGoodsCaoZuo(nil,"1|3","悲痛之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWoe6")
SetGoodsCaoZuo(nil,"1|3","悲痛之破空精华","Metadata/Items/Currency/CurrencyEssenceWoe7")
SetGoodsCaoZuo(nil,"1|3","贪婪之低语精华","Metadata/Items/Currency/CurrencyEssenceGreed1")
SetGoodsCaoZuo(nil,"1|3","贪婪之呢喃精华","Metadata/Items/Currency/CurrencyEssenceGreed2")
SetGoodsCaoZuo(nil,"1|3","贪婪之啼泣精华","Metadata/Items/Currency/CurrencyEssenceGreed3")
SetGoodsCaoZuo(nil,"1|3","贪婪之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceGreed4")
SetGoodsCaoZuo(nil,"1|3","贪婪之咆哮精华","Metadata/Items/Currency/CurrencyEssenceGreed5")
SetGoodsCaoZuo(nil,"1|3","贪婪之尖啸精华","Metadata/Items/Currency/CurrencyEssenceGreed6")
SetGoodsCaoZuo(nil,"1|3","贪婪之破空精华","Metadata/Items/Currency/CurrencyEssenceGreed7")
SetGoodsCaoZuo(nil,"1|3","轻视之低语精华","Metadata/Items/Currency/CurrencyEssenceContempt1")
SetGoodsCaoZuo(nil,"1|3","轻视之呢喃精华","Metadata/Items/Currency/CurrencyEssenceContempt2")
SetGoodsCaoZuo(nil,"1|3","轻视之啼泣精华","Metadata/Items/Currency/CurrencyEssenceContempt3")
SetGoodsCaoZuo(nil,"1|3","轻视之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceContempt4")
SetGoodsCaoZuo(nil,"1|3","轻视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceContempt5")
SetGoodsCaoZuo(nil,"1|3","轻视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceContempt6")
SetGoodsCaoZuo(nil,"1|3","轻视之破空精华","Metadata/Items/Currency/CurrencyEssenceContempt7")
SetGoodsCaoZuo(nil,"1|3","哀惜之呢喃精华","Metadata/Items/Currency/CurrencyEssenceSorrow1")
SetGoodsCaoZuo(nil,"1|3","哀惜之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSorrow2")
SetGoodsCaoZuo(nil,"1|3","哀惜之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSorrow3")
SetGoodsCaoZuo(nil,"1|3","哀惜之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSorrow4")
SetGoodsCaoZuo(nil,"1|3","哀惜之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSorrow5")
SetGoodsCaoZuo(nil,"1|3","哀惜之破空精华","Metadata/Items/Currency/CurrencyEssenceSorrow6")
SetGoodsCaoZuo(nil,"1|3","愤怒之呢喃精华","Metadata/Items/Currency/CurrencyEssenceAnger1")
SetGoodsCaoZuo(nil,"1|3","愤怒之啼泣精华","Metadata/Items/Currency/CurrencyEssenceAnger2")
SetGoodsCaoZuo(nil,"1|3","愤怒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnger3")
SetGoodsCaoZuo(nil,"1|3","愤怒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnger4")
SetGoodsCaoZuo(nil,"1|3","愤怒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnger5")
SetGoodsCaoZuo(nil,"1|3","愤怒之破空精华","Metadata/Items/Currency/CurrencyEssenceAnger6")
SetGoodsCaoZuo(nil,"1|3","折磨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceTorment1")
SetGoodsCaoZuo(nil,"1|3","折磨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceTorment2")
SetGoodsCaoZuo(nil,"1|3","折磨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceTorment3")
SetGoodsCaoZuo(nil,"1|3","折磨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceTorment4")
SetGoodsCaoZuo(nil,"1|3","折磨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceTorment5")
SetGoodsCaoZuo(nil,"1|3","折磨之破空精华","Metadata/Items/Currency/CurrencyEssenceTorment6")
SetGoodsCaoZuo(nil,"1|3","恐惧之呢喃精华","Metadata/Items/Currency/CurrencyEssenceFear1")
SetGoodsCaoZuo(nil,"1|3","恐惧之啼泣精华","Metadata/Items/Currency/CurrencyEssenceFear2")
SetGoodsCaoZuo(nil,"1|3","恐惧之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceFear3")
SetGoodsCaoZuo(nil,"1|3","恐惧之咆哮精华","Metadata/Items/Currency/CurrencyEssenceFear4")
SetGoodsCaoZuo(nil,"1|3","恐惧之尖啸精华","Metadata/Items/Currency/CurrencyEssenceFear5")
SetGoodsCaoZuo(nil,"1|3","恐惧之破空精华","Metadata/Items/Currency/CurrencyEssenceFear6")
SetGoodsCaoZuo(nil,"1|3","苦难之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSuffering1")
SetGoodsCaoZuo(nil,"1|3","苦难之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSuffering2")
SetGoodsCaoZuo(nil,"1|3","苦难之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSuffering3")
SetGoodsCaoZuo(nil,"1|3","苦难之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSuffering4")
SetGoodsCaoZuo(nil,"1|3","苦难之破空精华","Metadata/Items/Currency/CurrencyEssenceSuffering5")
SetGoodsCaoZuo(nil,"1|3","肆虐之啼泣精华","Metadata/Items/Currency/CurrencyEssenceRage1")
SetGoodsCaoZuo(nil,"1|3","肆虐之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceRage2")
SetGoodsCaoZuo(nil,"1|3","肆虐之咆哮精华","Metadata/Items/Currency/CurrencyEssenceRage3")
SetGoodsCaoZuo(nil,"1|3","肆虐之尖啸精华","Metadata/Items/Currency/CurrencyEssenceRage4")
SetGoodsCaoZuo(nil,"1|3","肆虐之破空精华","Metadata/Items/Currency/CurrencyEssenceRage5")
SetGoodsCaoZuo(nil,"1|3","雷霆之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWrath1")
SetGoodsCaoZuo(nil,"1|3","雷霆之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWrath2")
SetGoodsCaoZuo(nil,"1|3","雷霆之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWrath3")
SetGoodsCaoZuo(nil,"1|3","雷霆之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWrath4")
SetGoodsCaoZuo(nil,"1|3","雷霆之破空精华","Metadata/Items/Currency/CurrencyEssenceWrath5")
SetGoodsCaoZuo(nil,"1|3","疑惑之啼泣精华","Metadata/Items/Currency/CurrencyEssenceDoubt1")
SetGoodsCaoZuo(nil,"1|3","疑惑之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceDoubt2")
SetGoodsCaoZuo(nil,"1|3","疑惑之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDoubt3")
SetGoodsCaoZuo(nil,"1|3","疑惑之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDoubt4")
SetGoodsCaoZuo(nil,"1|3","疑惑之破空精华","Metadata/Items/Currency/CurrencyEssenceDoubt5")
SetGoodsCaoZuo(nil,"1|3","煎熬之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnguish1")
SetGoodsCaoZuo(nil,"1|3","煎熬之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnguish2")
SetGoodsCaoZuo(nil,"1|3","煎熬之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnguish3")
SetGoodsCaoZuo(nil,"1|3","煎熬之破空精华","Metadata/Items/Currency/CurrencyEssenceAnguish4")
SetGoodsCaoZuo(nil,"1|3","厌恶之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceLoathing1")
SetGoodsCaoZuo(nil,"1|3","厌恶之咆哮精华","Metadata/Items/Currency/CurrencyEssenceLoathing2")
SetGoodsCaoZuo(nil,"1|3","厌恶之尖啸精华","Metadata/Items/Currency/CurrencyEssenceLoathing3")
SetGoodsCaoZuo(nil,"1|3","厌恶之破空精华","Metadata/Items/Currency/CurrencyEssenceLoathing4")
SetGoodsCaoZuo(nil,"1|3","刻毒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSpite1")
SetGoodsCaoZuo(nil,"1|3","刻毒之巨吼精华","Metadata/Items/Currency/CurrencyEssenceSpite2")
SetGoodsCaoZuo(nil,"1|3","刻毒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSpite3")
SetGoodsCaoZuo(nil,"1|3","刻毒之破空精华","Metadata/Items/Currency/CurrencyEssenceSpite4")
SetGoodsCaoZuo(nil,"1|3","热情之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceZeal1")
SetGoodsCaoZuo(nil,"1|3","热情之巨吼精华","Metadata/Items/Currency/CurrencyEssenceZeal2")
SetGoodsCaoZuo(nil,"1|3","热情之尖啸精华","Metadata/Items/Currency/CurrencyEssenceZeal3")
SetGoodsCaoZuo(nil,"1|3","热情之破空精华","Metadata/Items/Currency/CurrencyEssenceZeal4")
SetGoodsCaoZuo(nil,"1|3","凄惨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceMisery1")
SetGoodsCaoZuo(nil,"1|3","凄惨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceMisery2")
SetGoodsCaoZuo(nil,"1|3","凄惨之破空精华","Metadata/Items/Currency/CurrencyEssenceMisery3")
SetGoodsCaoZuo(nil,"1|3","忌惮之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDread1")
SetGoodsCaoZuo(nil,"1|3","忌惮之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDread2")
SetGoodsCaoZuo(nil,"1|3","忌惮之破空精华","Metadata/Items/Currency/CurrencyEssenceDread3")
SetGoodsCaoZuo(nil,"1|3","傲视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceScorn1")
SetGoodsCaoZuo(nil,"1|3","傲视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceScorn2")
SetGoodsCaoZuo(nil,"1|3","傲视之破空精华","Metadata/Items/Currency/CurrencyEssenceScorn3")
SetGoodsCaoZuo(nil,"1|3","忌妒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceEnvy1")
SetGoodsCaoZuo(nil,"1|3","忌妒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceEnvy2")
SetGoodsCaoZuo(nil,"1|3","忌妒之破空精华","Metadata/Items/Currency/CurrencyEssenceEnvy3")
SetGoodsCaoZuo(nil,"1|3","浮夸精华","Metadata/Items/Currency/CurrencyEssenceHysteria1")
SetGoodsCaoZuo(nil,"1|3","错乱精华","Metadata/Items/Currency/CurrencyEssenceInsanity1")
SetGoodsCaoZuo(nil,"1|3","极恐精华","Metadata/Items/Currency/CurrencyEssenceHorror1")
SetGoodsCaoZuo(nil,"1|3","谵妄精华","Metadata/Items/Currency/CurrencyEssenceDelirium1")






--集货boss名 字符串型
--AddJiaoYiBossName(bossName,computerName,mohu) 添加仓库号
--bossName 仓库号名字 
--computerName 电脑名 单独为某台电脑指定不同的仓库号 忽略填nil
--mohu true为模糊匹配 false 或 nil 或不填为完整匹配
AddJiaoYiBossName("这里填上你要用来收货的仓库号名字")
--AddJiaoYiTime(startHour,endHour)--添加交易时间段大于等于startHour 并且小于等于endHour 时会检测交易
--startHour 数字型 开始交易的小时 
--endHour 数字型 结束交易的小时
AddJiaoYiTime(0,12)--0点到12点会检测交易

--SetJiaoYiGoods(goodsType,name,className,wordName,wordClassName,color,chufaCnt)-- 设置要交易的物品
--goodsType 字符串型 操作的物品类型忽略类型请填 nil 支持以下种类 多种类型以|分开 --saveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--name 字符串型 物品的名字
--className 字符串型 物品的类名
--wordName 字符串型 物品的词缀名
--wordClassName 字符串型 物品的词缀类名
--color 字符串型 颜色 0白 1蓝 2黄 3橙 多个用|隔开 nil为所有
--chufaCnt 数字型 触发交易的数量 0或nil 为不触发
--bossJiaoYiCnt 数字型 交易时仓库号交易给挂机号的数量

SetJiaoYiGoods(nil,"混沌石","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,nil,100)
SetJiaoYiGoods(nil,"卡兰德的魔镜","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,nil,1)
SetJiaoYiGoods(nil,"点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,nil,20)
SetJiaoYiGoods(nil,"机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"后悔石","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"改造石","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"重铸石","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"崇高石","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,nil,1)
SetJiaoYiGoods(nil,"富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"增幅石","Metadata/Items/Currency/CurrencyAddModToMagic",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"宝石匠的棱镜","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"幻色石","Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"神圣石","Metadata/Items/Currency/CurrencyModValues",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"祝福石","Metadata/Items/Currency/CurrencyRerollImplicit",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"制图钉","Metadata/Items/Currency/CurrencyMapQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","光彩夺目","Glorious Vanity",nil,nil)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","好战的信仰","Militant Faith",nil,nil)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","残酷的约束","Brutal Restraint",nil,nil)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","致命的骄傲","Lethal Pride",nil,nil)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","优雅的狂妄","Elegant Hubris",nil,nil)
SetJiaoYiGoods(nil,"瓦尔宝珠","Metadata/Items/Currency/CurrencyCorrupt",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"普兰德斯金币","Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,nil)


--值钱的预言
SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"AsenathsMarkFated",nil,nil)--絲克瑪之曲
SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"GeofrisCrestFated",nil,nil)--主教遺志
SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"WindscreamFated",nil,nil)--禁忌尖嘯
SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"HyrrisBiteFated",nil,nil)--拜恥之死
-- SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"KillingHatebeatWithBlackgleamAddsSpecificMod",nil,nil)--火和硫磺
-- SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareTunnelerDropsPledgeOfHandsMap",nil,nil)--空洞誓言
-- SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"ArmourAbleToBecomesFiveLinkedWhenJewellersOrbApplied",nil,nil)--工匠魂
-- SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"HeatshiverFated",nil,nil)--冰火之視
-- SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"TheAmbitiousBandit3",nil,nil)--盜賊的野望 III
SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RollingSixSocketBodyArmourLinksAllSockets",nil,nil)--命運連結
SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"AtzirisMirrorFated",nil,nil)--女王獻祭
SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied",nil,nil)--麻雀變鳳凰
SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareUndyingArchivistDropsAstramentis",nil,nil)--遺失於書頁
SetJiaoYiGoods(nil,"预言","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"UniqueLightningGolemAppearsOutsideBubble",nil,nil)--不自然能量


--值钱的地图
SetJiaoYiGoods(nil,nil,nil,nil,"Caer Blaidd, Wolfpack's Den")--"塞爾．佈雷德狼穴"
SetJiaoYiGoods(nil,nil,nil,nil,"The Vinktar Square")--"維克塔廣場"
SetJiaoYiGoods(nil,nil,nil,nil,"The Putrid Cloister")--"腐臭迴廊"
SetJiaoYiGoods(nil,nil,nil,nil,"The Coward's Trial")--"懦者的試驗"
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerLow")--"神諭之殿．歸徒"
--SetJiaoYiGoods("异界地图",nil,nil,nil,nil,"3")

--值钱的药剂
SetJiaoYiGoods(nil,nil,nil,nil,"Blood of the Karui")--"卡魯之血 聖化生命藥劑"
SetJiaoYiGoods(nil,nil,nil,nil,"Zerphi's Last Breath")--"澤佛伊的終息 優質魔力藥劑"
SetJiaoYiGoods(nil,nil,nil,nil,"Dying Sun")--"滅日 紅玉藥劑"
SetJiaoYiGoods(nil,nil,nil,nil,"Taste of Hate")--"恨意 藍玉藥劑"
SetJiaoYiGoods(nil,nil,nil,nil,"The Sorrow of the Divine")--"神聖哀悼 硫磺藥劑"
SetJiaoYiGoods(nil,nil,nil,nil,"Sin's Rebirth")--"再生的罪惡 迷霧藥劑"
SetJiaoYiGoods(nil,nil,nil,nil,"TBottled Faith")--"瓶中信仰 硫磺藥劑"
SetJiaoYiGoods(nil,nil,nil,nil,"Cinderswallow Urn")--"噬燼甕 真銀藥劑"
--SetJiaoYiGoods("药剂",nil,nil,nil,nil,"3")

-- SetJiaoYiGoods(nil,"银币","Metadata/Items/Currency/CurrencySilverCoin",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"洶湧的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"充能的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityCaster",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"研磨的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityAttack",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"本質的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"冶鍊的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"富饒的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityResource",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"多稜的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityResistance",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"奴役斷片","Metadata/Items/MapFragments/CurrencyElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"根除斷片","Metadata/Items/MapFragments/CurrencyElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"干擾斷片","Metadata/Items/MapFragments/CurrencyElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"淨化斷片","Metadata/Items/MapFragments/CurrencyElderFragment4",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"恐懼斷片","Metadata/Items/MapFragments/CurrencyUberElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"空虛斷片","Metadata/Items/MapFragments/CurrencyUberElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"雕塑斷片","Metadata/Items/MapFragments/CurrencyUberElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"智慧斷片","Metadata/Items/MapFragments/CurrencyUberElderFragment4",nil,nil,nil,nil)


SetJiaoYiGoods(nil,nil,nil,nil,"Fury Valve")--"憤怒閉鎖"
SetJiaoYiGoods(nil,nil,nil,nil,"Hands of the High Templar")--"聖宗神手"
SetJiaoYiGoods(nil,nil,nil,nil,"Leash of Oblation")--"祭品之繫"
SetJiaoYiGoods(nil,nil,nil,nil,"Manastorm")--"魔能暴風"
SetJiaoYiGoods(nil,nil,nil,nil,"Mistwall")--"迷霧之璧"
SetJiaoYiGoods(nil,nil,nil,nil,"Mother's Embrace")--"母親的擁抱"
SetJiaoYiGoods(nil,nil,nil,nil,"Painseeker")--"尋苦"
SetJiaoYiGoods(nil,nil,nil,nil,"The Black Cane")--"黑藤"
SetJiaoYiGoods(nil,nil,nil,nil,"The Ivory Tower")--"象牙塔"
SetJiaoYiGoods(nil,nil,nil,nil,"The Saviour")--"救世主"
SetJiaoYiGoods(nil,nil,nil,nil,"Thread of Hope")--"希望之絃"
SetJiaoYiGoods(nil,nil,nil,nil,"Warrior's Legacy")--"戰士遺物"
SetJiaoYiGoods(nil,nil,nil,nil,"Willowgift")--"柳木之禮"

SetJiaoYiGoods(nil,"绯红圣油","Metadata/Items/Currency/Mushrune8",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"漆黑圣油","Metadata/Items/Currency/Mushrune9",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"乳白圣油","Metadata/Items/Currency/Mushrune10",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"白银圣油","Metadata/Items/Currency/Mushrune11",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"金色圣油","Metadata/Items/Currency/Mushrune12",nil,nil,nil,nil)

SetJiaoYiGoods(nil,"黑暗三面","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"瘋醫","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"隱士","Metadata/Items/DivinationCards/DivinationCardTheHermit",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"蘭塔朵迷惘之愛","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"鐵匠的贈禮","Metadata/Items/DivinationCards/DivinationCardTheMetalsmithsGift",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"戰火鍛造","Metadata/Items/DivinationCards/DivinationCardTheBattleBorn",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"鬥士","Metadata/Items/DivinationCards/DivinationCardTheGladiator",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"學者","Metadata/Items/DivinationCards/DivinationCardTheScholar",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"碎裂大帝","Metadata/Items/DivinationCards/DivinationCardTheBrittleEmperor",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"詩人","Metadata/Items/DivinationCards/DivinationCardThePoet",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"食腐掠鸦","Metadata/Items/DivinationCards/DivinationCardTheCarrionCrow",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"希望","Metadata/Items/DivinationCards/DivinationCardHope",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"魔鬼","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"三者之诞","Metadata/Items/DivinationCards/DivinationCardBirthOfTheThree",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"薇妮雅的信物","Metadata/Items/DivinationCards/DivinationCardViniasToken",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"召唤师","Metadata/Items/DivinationCards/DivinationCardTheSummoner",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"巨变","Metadata/Items/DivinationCards/DivinationCardTheCataclysm",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"饥饿","Metadata/Items/DivinationCards/DivinationCardTheHunger",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"宝箱","Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"酒醉贵族","Metadata/Items/DivinationCards/DivinationCardTheDrunkenAristocrat",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"烈日","Metadata/Items/DivinationCards/DivinationCardTheSun",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"典狱长","Metadata/Items/DivinationCards/DivinationCardTheWarden",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"创痕之原","Metadata/Items/DivinationCards/DivinationCardTheScarredMeadow",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"黑暗术者","Metadata/Items/DivinationCards/DivinationCardTheDarkMage",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"珠宝匠","Metadata/Items/DivinationCards/DivinationCardTheGemcutter",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"赌徒","Metadata/Items/DivinationCards/DivinationCardTheGambler",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"情人","Metadata/Items/DivinationCards/DivinationCardTheLover",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"浑沌性情","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"力量之道","Metadata/Items/DivinationCards/DivinationCardTheRoadToPower",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"复仇者","Metadata/Items/DivinationCards/DivinationCardTheAvenger",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"帝运","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"失落遗骨","Metadata/Items/DivinationCards/DivinationCardTimeLostRelic",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"好运连连","Metadata/Items/DivinationCards/DivinationCardLuckyConnections",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"盛宴","Metadata/Items/DivinationCards/DivinationCardTheFeast",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"混沌之雨","Metadata/Items/DivinationCards/DivinationCardRainOfChaos",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"凝视者","Metadata/Items/DivinationCards/DivinationCardTheWatcher",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"咒语","Metadata/Items/DivinationCards/DivinationCardTheIncantation",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"饥渴之占","Metadata/Items/DivinationCards/DivinationCardCovetedPossession",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"王者之心","Metadata/Items/DivinationCards/DivinationCardTheKingsHeart",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"弃财求生","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"风","Metadata/Items/DivinationCards/DivinationCardTheWind",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"协约","Metadata/Items/DivinationCards/DivinationCardThePact",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"宝石匠的允诺","Metadata/Items/DivinationCards/DivinationCardGemcuttersPromise",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"天堂执法官","Metadata/Items/DivinationCards/DivinationCardTheCelestialJusticar",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"束缚之炼","Metadata/Items/DivinationCards/DivinationCardTheChainsThatBind",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"艺者","Metadata/Items/DivinationCards/DivinationCardTheArtist",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"发明家","Metadata/Items/DivinationCards/DivinationCardTheInventor",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"群聚之首","Metadata/Items/DivinationCards/DivinationCardThePackLeader",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"惊喜盒","Metadata/Items/DivinationCards/DivinationCardJackInTheBox",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"联姻","Metadata/Items/DivinationCards/DivinationCardTheUnion",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"女王","Metadata/Items/DivinationCards/DivinationCardTheQueen",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"谦逊","Metadata/Items/DivinationCards/DivinationCardHumility",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"探险家","Metadata/Items/DivinationCards/DivinationCardTheExplorer",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"骄纵皇子","Metadata/Items/DivinationCards/DivinationCardTheSpoiledPrince",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"背叛","Metadata/Items/DivinationCards/DivinationCardTheBetrayal",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"芙劳拉的赠礼","Metadata/Items/DivinationCards/DivinationCardTheFlorasGift",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"海妖","Metadata/Items/DivinationCards/DivinationCardTheSiren",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"完人","Metadata/Items/DivinationCards/DivinationCardTheOneWithAll",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"屹立不败之人","Metadata/Items/DivinationCards/DivinationCardTheLastOneStanding",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"德瑞竞之狂","Metadata/Items/DivinationCards/DivinationCardDoedresMadness",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"黑暗来犯","Metadata/Items/DivinationCards/DivinationCardTheEncroachingDarkness",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"怨忿","Metadata/Items/DivinationCards/DivinationCardTheWrath",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"王者之刃","Metadata/Items/DivinationCards/DivinationCardTheKingsBlade",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"远征","Metadata/Items/DivinationCards/DivinationCardTheTrial",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"绅士之风","Metadata/Items/DivinationCards/DivinationCardTheGentleman",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"明镜","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"钱与权","Metadata/Items/DivinationCards/DivinationCardWealthAndPower",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"灾变","Metadata/Items/DivinationCards/DivinationCardTheCatalyst",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"平壤","Metadata/Items/DivinationCards/DivinationCardTheVast",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"宝石皇后的赠礼","Metadata/Items/DivinationCards/DivinationCardGiftOfTheGemlingQueen",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"龙之心","Metadata/Items/DivinationCards/DivinationCardTheDragonsHeart",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"狡狐","Metadata/Items/DivinationCards/DivinationCardTheFox",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"傀儡","Metadata/Items/DivinationCards/DivinationCardTheDoppelganger",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"求生专家","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"死亡","Metadata/Items/DivinationCards/DivinationCardDeath",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"亡灵智慧","Metadata/Items/DivinationCards/DivinationCardGraveKnowledge",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"小丑","Metadata/Items/DivinationCards/DivinationCardTheJester",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"佣兵","Metadata/Items/DivinationCards/DivinationCardTheMercenary",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"移花接木","Metadata/Items/DivinationCards/DivinationCardTheInoculated",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"忠诚","Metadata/Items/DivinationCards/DivinationCardLoyalty",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"骄者必败","Metadata/Items/DivinationCards/DivinationCardPrideBeforeTheFall",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"胆识","Metadata/Items/DivinationCards/DivinationCardAudacity",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"暗影恩惠","Metadata/Items/DivinationCards/DivinationCardAssassinsFavour",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"猎者之愿","Metadata/Items/DivinationCards/DivinationCardHuntersResolve",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"海洋学者","Metadata/Items/DivinationCards/DivinationCardScholarOfTheSeas",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"雷针","Metadata/Items/DivinationCards/DivinationCardTheConduit",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"塔峰","Metadata/Items/DivinationCards/DivinationCardTheTower",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"孪生","Metadata/Items/DivinationCards/DivinationCardTheTwins",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"混乱代价","Metadata/Items/DivinationCards/DivinationCardAnarchysPrice",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"巫妖","Metadata/Items/DivinationCards/DivinationCardTheLich",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"大奇术师","Metadata/Items/DivinationCards/DivinationCardTheThaumaturgist",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"大艺术家","Metadata/Items/DivinationCards/DivinationCardTheAesthete",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"智慧启蒙","Metadata/Items/DivinationCards/DivinationCardTheEnlightened",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"猎人的奖赏","Metadata/Items/DivinationCards/DivinationCardHuntersReward",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"制箭者","Metadata/Items/DivinationCards/DivinationCardTheFletcher",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"勘查员","Metadata/Items/DivinationCards/DivinationCardTheSurveyor",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"弓匠的梦想","Metadata/Items/DivinationCards/DivinationCardBowyersDream",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"外科医师","Metadata/Items/DivinationCards/DivinationCardTheSurgeon",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"不稳定的力量","Metadata/Items/DivinationCards/DivinationCardVolatilePower",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"最后希望","Metadata/Items/DivinationCards/DivinationCardLastHope",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"狂妄","Metadata/Items/DivinationCards/DivinationCardHubris",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"盲途","Metadata/Items/DivinationCards/DivinationCardBlindVenture",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"无情军械","Metadata/Items/DivinationCards/DivinationCardMercilessArmament",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"制图师","Metadata/Items/DivinationCards/DivinationCardTheCartographer",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"大军阀","Metadata/Items/DivinationCards/DivinationCardTheWarlord",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"魅魔","Metadata/Items/DivinationCards/DivinationCardTheDemoness",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"背叛者","Metadata/Items/DivinationCards/DivinationCardTheTraitor",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"奉献","Metadata/Items/DivinationCards/DivinationCardTheOffering",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"失落帝国","Metadata/Items/DivinationCards/DivinationCardLostWorlds",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"暗黑之王","Metadata/Items/DivinationCards/DivinationCardTheLordInBlack",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"母亲的礼物","Metadata/Items/DivinationCards/DivinationCardAMothersPartingGift",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"血肉之躯","Metadata/Items/DivinationCards/DivinationCardTheBody",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"忍辱","Metadata/Items/DivinationCards/DivinationCardTurnTheOtherCheek",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"希望微光","Metadata/Items/DivinationCards/DivinationCardGlimmerOfHope",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"空灵","Metadata/Items/DivinationCards/DivinationCardTheEthereal",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"兴盛","Metadata/Items/DivinationCards/DivinationCardProsperity",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"魔符","Metadata/Items/DivinationCards/DivinationCardTheSigil",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"极致不凡","Metadata/Items/DivinationCards/DivinationCardTheDapperProdigy",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"疯狂恐喙鸟","Metadata/Items/DivinationCards/DivinationCardTheRabidRhoa",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"灵魂","Metadata/Items/DivinationCards/DivinationCardTheSoul",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"雄狮","Metadata/Items/DivinationCards/DivinationCardTheLion",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"巨龙","Metadata/Items/DivinationCards/DivinationCardTheDragon",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"鼠辈","Metadata/Items/DivinationCards/DivinationCardRats",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"危机","Metadata/Items/DivinationCards/DivinationCardTheRisk",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"宁静","Metadata/Items/DivinationCards/DivinationCardTranquillity",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"她的面具","Metadata/Items/DivinationCards/DivinationCardHerMask",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"赏金猎手","Metadata/Items/DivinationCards/DivinationCardTreasureHunter",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"大地吞食者","Metadata/Items/DivinationCards/DivinationCardEarthDrinker",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"狼的影子","Metadata/Items/DivinationCards/DivinationCardTheWolfsShadow",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"竞技场冠军","Metadata/Items/DivinationCards/DivinationCardTheArenaChampion",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"生命之树","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"梦想家","Metadata/Items/DivinationCards/DivinationCardTheVisionary",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"怒雷之空","Metadata/Items/DivinationCards/DivinationCardThunderousSkies",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"消逝之怒","Metadata/Items/DivinationCards/DivinationCardDyingAnguish",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"永恒不朽","Metadata/Items/DivinationCards/DivinationCardTheImmortal",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"王座","Metadata/Items/DivinationCards/DivinationCardTheThrone",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"无尽之域","Metadata/Items/DivinationCards/DivinationCardBoundlessRealms",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"蹂躏之王","Metadata/Items/DivinationCards/DivinationCardTheDevastator",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"殒落的命运","Metadata/Items/DivinationCards/DivinationCardDestinedToCrumble",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"命运之晶","Metadata/Items/DivinationCards/DivinationCardShardOfFate",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"阴阳眼","Metadata/Items/DivinationCards/DivinationCardHeterochromia",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"诱惑之雨","Metadata/Items/DivinationCards/DivinationCardRainTempter",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"虚空","Metadata/Items/DivinationCards/DivinationCardTheVoid",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil," 暴虐之灵","Metadata/Items/DivinationCards/DivinationCardTheTyrant",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"命运之网","Metadata/Items/DivinationCards/DivinationCardTheWeb",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"收割者","Metadata/Items/DivinationCards/DivinationCardTheHarvester",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"月影女祭司","Metadata/Items/DivinationCards/DivinationCardTheLunarisPriestess",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"纯净帝王","Metadata/Items/DivinationCards/DivinationCardEmperorOfPurity",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"诅咒之王","Metadata/Items/DivinationCards/DivinationCardTheCursedKing",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"风暴使者","Metadata/Items/DivinationCards/DivinationCardTheStormcaller",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"莉莎之息","Metadata/Items/DivinationCards/DivinationCardLysahsRespite",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"制图者的青睐","Metadata/Items/DivinationCards/DivinationCardCartographersDelight",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"未知的命运卡","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,nil,nil)--可堆叠通货
SetJiaoYiGoods(nil,"命运垂青","Metadata/Items/DivinationCards/DivinationCardLuckyDeck",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"光与真实","Metadata/Items/DivinationCards/DivinationCardLightAndTruth",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"瓦尔的眷顾","Metadata/Items/DivinationCards/DivinationCardLuckOfTheVaal",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"耐久者","Metadata/Items/DivinationCards/DivinationCardTheEndurance",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"忏悔者","Metadata/Items/DivinationCards/DivinationCardThePenitent",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"群狼之王","Metadata/Items/DivinationCards/DivinationCardTheWolf",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"达拉夫人的宝石","Metadata/Items/DivinationCards/DivinationCardDiallasSubjugation",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"越界的呼唤","Metadata/Items/DivinationCards/DivinationCardTheCalling",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"女之武神","Metadata/Items/DivinationCards/DivinationCardTheValkyrie",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"无迹之海","Metadata/Items/DivinationCards/DivinationCardTheFormlessSea",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"力之誓言","Metadata/Items/DivinationCards/DivinationCardTheOath",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"拾荒者","Metadata/Items/DivinationCards/DivinationCardTheScavenger",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"狼之信物","Metadata/Items/DivinationCards/DivinationCardMawrBlaidd",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"射成筛子","Metadata/Items/DivinationCards/DivinationCardThePorcupine",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"风暴来袭","Metadata/Items/DivinationCards/DivinationCardTheComingStorm",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"博学者","Metadata/Items/DivinationCards/DivinationCardThePolymath",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"金刚狼","Metadata/Items/DivinationCards/DivinationCardTheWolverine",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"露指手套","Metadata/Items/DivinationCards/DivinationCardMitts",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"死灵遗物","Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"狼王之弦","Metadata/Items/DivinationCards/DivinationCardTheWolvenKingsBite",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"冷淡","Metadata/Items/DivinationCards/DivinationCardTheStandoff",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"遗弃之物","Metadata/Items/DivinationCards/DivinationCardTheForsaken",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"炫耀之力","Metadata/Items/DivinationCards/DivinationCardTheGarishPower",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"稍纵即逝","Metadata/Items/DivinationCards/DivinationCardLingeringRemnants",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"闪光与火焰","Metadata/Items/DivinationCards/DivinationCardTheSparkAndTheFlame",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"圣人之礼","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"远古召唤","Metadata/Items/DivinationCards/DivinationCardCallToTheFirstOnes",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"金属盒子","Metadata/Items/DivinationCards/DivinationCardTheValleyOfSteelBoxes",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"正气","Metadata/Items/DivinationCards/DivinationCardMightIsRight",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"净白","Metadata/Items/DivinationCards/DivinationCardTheOpulecent",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"雷劈","Metadata/Items/DivinationCards/DivinationCardStruckByLightning",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"阿兹里的武器库","Metadata/Items/DivinationCards/DivinationCardAtzirisArsenal",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"残酷之环","Metadata/Items/DivinationCards/DivinationCardTheRuthlessCeinture",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"无迹可寻","Metadata/Items/DivinationCards/DivinationCardNoTraces",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"家的捷径","Metadata/Items/DivinationCards/DivinationCardTheRealm",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"龙之眼","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTheDragon",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"灼热之火","Metadata/Items/DivinationCards/DivinationCardTheBlazingFire",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"听天由命","Metadata/Items/DivinationCards/DivinationCardLeftToFate",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"重生","Metadata/Items/DivinationCards/DivinationCardRebirth",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"永不满足","Metadata/Items/DivinationCards/DivinationCardTheInsatiable",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"黑暗缭绕","Metadata/Items/DivinationCards/DivinationCardTheObscured",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"坚毅诗人","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"禁忌之力","Metadata/Items/DivinationCards/DivinationCardForbiddenPower",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"裂隙","Metadata/Items/DivinationCards/DivinationCardTheBreach",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"追梦者","Metadata/Items/DivinationCards/DivinationCardTheDreamer",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"噬界者","Metadata/Items/DivinationCards/DivinationCardTheWorldEater",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"狡徒","Metadata/Items/DivinationCards/DivinationCardTheDeceiver",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"神佑","Metadata/Items/DivinationCards/DivinationCardBlessingOfGod",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"谜团","Metadata/Items/DivinationCards/DivinationCardThePuzzle",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"巫婆","Metadata/Items/DivinationCards/DivinationCardTheWitch",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"不朽决心","Metadata/Items/DivinationCards/DivinationCardImmortalResolve",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"珠宝匠的福祉","Metadata/Items/DivinationCards/DivinationCardTheJewellersBoon",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"深深黑梦","Metadata/Items/DivinationCards/DivinationCardTheDarkestDream",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"主宰","Metadata/Items/DivinationCards/DivinationCardTheMaster",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"无尽深渊","Metadata/Items/DivinationCards/DivinationCardTheFathomlessDepths",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"无畏者","Metadata/Items/DivinationCards/DivinationCardTheUndaunted",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"仰慕者","Metadata/Items/DivinationCards/DivinationCardTheAdmirer",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"剑圣的致敬","Metadata/Items/DivinationCards/DivinationCardTheSwordKingsSalute",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"鲜血大军","Metadata/Items/DivinationCards/DivinationCardTheArmyOfBlood",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"天堂之石","Metadata/Items/DivinationCards/DivinationCardTheCelestialStone",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"至臻完美","Metadata/Items/DivinationCards/DivinationCardPerfection",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"梦境","Metadata/Items/DivinationCards/DivinationCardTheDreamland",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"魂之和谐","Metadata/Items/DivinationCards/DivinationCardHarmonyOfSouls",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"武士之眼","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"壮心不已","Metadata/Items/DivinationCards/DivinationCardTheHaleHeart",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"庄园主","Metadata/Items/DivinationCards/DivinationCardTheMayor",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"无可争议者","Metadata/Items/DivinationCards/DivinationCardTheUndisputed",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"元素祭祀","Metadata/Items/DivinationCards/DivinationCardTheRiteOfElements",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"三魔音","Metadata/Items/DivinationCards/DivinationCardThreeVoices",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"教授","Metadata/Items/DivinationCards/DivinationCardTheProfessor",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"狂兽","Metadata/Items/DivinationCards/DivinationCardTheBeast",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"无辜者","Metadata/Items/DivinationCards/DivinationCardTheInnocent",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"枯萎玫瑰","Metadata/Items/DivinationCards/DivinationCardTheWiltedRose",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"无尽黑暗","Metadata/Items/DivinationCards/DivinationCardTheEndlessDarkness",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"来生之美","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"保护的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfProtection",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"先祖赐福","Metadata/Items/DivinationCards/DivinationCardBoonOfTheFirstOnes",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"暮光之月","Metadata/Items/DivinationCards/DivinationCardTheTwilightMoon",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"不协之音","Metadata/Items/DivinationCards/DivinationCardTheCacophony",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"牺牲","Metadata/Items/DivinationCards/DivinationCardTheSacrifice",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"墨水点滴","Metadata/Items/DivinationCards/DivinationCardADabOfInk",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"照料者","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"工匠大师","Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"生命窃贼","Metadata/Items/DivinationCards/DivinationCardTheLifeThief",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"寻觅者","Metadata/Items/DivinationCards/DivinationCardTheSeeker",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"信使","Metadata/Items/DivinationCards/DivinationCardTheMessenger",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"狂王","Metadata/Items/DivinationCards/DivinationCardTheMadKing",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"司法的恩赐","Metadata/Items/DivinationCards/DivinationCardBoonOfJustice",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"旅程","Metadata/Items/DivinationCards/DivinationCardTheJourney",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"瓦尔的傲慢","Metadata/Items/DivinationCards/DivinationCardArroganceOfTheVaal",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"降临","Metadata/Items/DivinationCards/DivinationCardTheLanding",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"山脉","Metadata/Items/DivinationCards/DivinationCardTheMountain",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"七年厄运","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"黄金纪元","Metadata/Items/DivinationCards/DivinationCardTheGoldenEra",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"黑白世界","Metadata/Items/DivinationCards/DivinationCardMonochrome",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"黑暗的引诱","Metadata/Items/DivinationCards/DivinationCardDarkTemptation",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"黑暗中独行","Metadata/Items/DivinationCards/DivinationCardAloneInTheDarkness",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"萨博辛的誓言","Metadata/Items/DivinationCards/DivinationCardSambodhisVow",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"欢庆领主","Metadata/Items/DivinationCards/DivinationCardTheLordOfCelebration",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"虚荣","Metadata/Items/DivinationCards/DivinationCardVanity",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"帝国的遗产","Metadata/Items/DivinationCards/DivinationCardImperialLegacy",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"燃烧之血","Metadata/Items/DivinationCards/DivinationCardBurningBlood",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"起源","Metadata/Items/DivinationCards/DivinationCardThePrimordial",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"爱的回音","Metadata/Items/DivinationCards/DivinationCardEchoesOfLove",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"求知若渴","Metadata/Items/DivinationCards/DivinationCardThirstForKnowledge",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"诱人的奖赏","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"愚人","Metadata/Items/DivinationCards/DivinationCardTheFool",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"先祖的代价","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"深渊之子","Metadata/Items/DivinationCards/DivinationCardTheDeepOnes",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"大法师的右手","Metadata/Items/DivinationCards/DivinationCardTheArchmagesRightHand",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"黑暗之梦","Metadata/Items/DivinationCards/DivinationCardDarkDreams",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"埋葬的宝藏","Metadata/Items/DivinationCards/DivinationCardBuriedTreasure",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"半神的赌局","Metadata/Items/DivinationCards/DivinationCardDemigodsWager",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"老人","Metadata/Items/DivinationCards/DivinationCardTheOldMan",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"诺克之冠","Metadata/Items/DivinationCards/DivinationCardNooksCrown",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"支线任务","Metadata/Items/DivinationCards/DivinationCardTheSideQuest",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"忠诚的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfLoyalty",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"英勇打击","Metadata/Items/DivinationCards/DivinationCardTheHeroicShot",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"铭记","Metadata/Items/DivinationCards/DivinationCardRemembrance",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"永不知足","Metadata/Items/DivinationCards/DivinationCardMoreIsNeverEnough",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"恶毒的权力","Metadata/Items/DivinationCards/DivinationCardVilePower",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"交易","Metadata/Items/DivinationCards/DivinationCardTheBargain",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"阿祖兰的奖赏","Metadata/Items/DivinationCards/DivinationCardAzyransReward",nil,nil,nil,nil)--命运卡
-- SetJiaoYiGoods(nil,"魔侍","Metadata/Items/DivinationCards/DivinationCardTheSkeleton",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"恐怖之眼","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTerror",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"恶魔","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"阿凯的预言","Metadata/Items/DivinationCards/DivinationCardAkilsProphecy",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"咒诅之灵","Metadata/Items/DivinationCards/DivinationCardTheDamned",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"元素虚空","Metadata/Items/DivinationCards/DivinationCardVoidOfTheElements",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"买卖","Metadata/Items/DivinationCards/DivinationCardTheDeal",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"狼王的遗产","Metadata/Items/DivinationCards/DivinationCardTheWolfsLegacy",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"誘餌之期待","Metadata/Items/DivinationCards/DivinationCardBaitedExpectations",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"卡麥歷亞之割","Metadata/Items/DivinationCards/DivinationCardCameriasCut",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"致死記號","Metadata/Items/DivinationCards/DivinationCardDeathlyDesigns",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"神判","Metadata/Items/DivinationCards/DivinationCardDivineJustice",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"腐爛於血","Metadata/Items/DivinationCards/DivinationCardEtchedInBlood",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"友誼小船","Metadata/Items/DivinationCards/DivinationCardFriendship",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"失落的繁華","Metadata/Items/DivinationCards/DivinationCardSquanderedProsperity",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"無罪救贖","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"識骨尋蹤","Metadata/Items/DivinationCards/DivinationCardTheBones",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"天選之人","Metadata/Items/DivinationCards/DivinationCardTheChosen",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"想要","Metadata/Items/DivinationCards/DivinationCardTheCraving",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"逃脫大師","Metadata/Items/DivinationCards/DivinationCardTheEscape",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"魚販","Metadata/Items/DivinationCards/DivinationCardTheFishmonger",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"地底叢林","Metadata/Items/DivinationCards/DivinationCardUndergroundForest",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"赤红珠宝","Metadata/Items/Jewels/JewelStr","求知的热情","Inspired Learning","3",nil)--珠宝
--SetJiaoYiGoods(nil,"赤红珠宝","Metadata/Items/Jewels/JewelStr","起源力量","Primordial Might","3",nil)--珠宝
SetJiaoYiGoods(nil,"赤红珠宝","Metadata/Items/Jewels/JewelStr","赤影梦境","The Red Dream","3",nil)--珠宝
SetJiaoYiGoods(nil,"赤红珠宝","Metadata/Items/Jewels/JewelStr","温柔之力","Might of the Meek","3",nil)--珠宝
SetJiaoYiGoods(nil,"翠绿珠宝","Metadata/Items/Jewels/JewelDex","直觉之跃","Intuitive Leap","3",nil)--珠宝
SetJiaoYiGoods(nil,"翠绿珠宝","Metadata/Items/Jewels/JewelDex","狮眼的陨落","Lioneye's Fall","3",nil)--珠宝
SetJiaoYiGoods(nil,"翠绿珠宝","Metadata/Items/Jewels/JewelDex","青影梦境","The Green Dream","3",nil)--珠宝
SetJiaoYiGoods(nil,"翠绿珠宝","Metadata/Items/Jewels/JewelDex","超自然本能","Unnatural Instinct","3",nil)--珠宝
SetJiaoYiGoods(nil,"钴蓝珠宝","Metadata/Items/Jewels/JewelInt","灵体转换","Healthy Mind","3",nil)--珠宝
SetJiaoYiGoods(nil,"钴蓝珠宝","Metadata/Items/Jewels/JewelInt","聚光之石","Grand Spectrum","3",nil)--珠宝
SetJiaoYiGoods(nil,"钴蓝珠宝","Metadata/Items/Jewels/JewelInt","无尽渴望","Unending Hunger","3",nil)--珠宝
--SetJiaoYiGoods(nil,"钴蓝珠宝","Metadata/Items/Jewels/JewelInt","起源和谐","Primordial Harmony","3",nil)--珠宝
SetJiaoYiGoods(nil,"钴蓝珠宝","Metadata/Items/Jewels/JewelInt","碧影梦境","The Blue Dream","3",nil)--珠宝
SetJiaoYiGoods(nil,"钴蓝珠宝","Metadata/Items/Jewels/JewelInt","要塞誓约","Fortress Covenant","3",nil)--珠宝
SetJiaoYiGoods(nil,"三相珠宝","Metadata/Items/Jewels/JewelPrismatic","守望之眼","Watcher's Eye","3",nil)--珠宝
SetJiaoYiGoods(nil,"啟蒙輔助","Metadata/Items/Gems/SupportGemAdditionalXP",nil,nil,nil,nil)--技能寶石
SetJiaoYiGoods(nil,"賦予輔助","Metadata/Items/Gems/SupportGemAdditionalLevel",nil,nil,nil,nil)--技能寶石
-- SetJiaoYiGoods(nil,"鍊魔眼睛","Metadata/Items/Metamorphosis/MetamorphosisEye",nil,nil,"3",nil)--珠宝
-- SetJiaoYiGoods(nil,"凶残之凝珠宝","Metadata/Items/Jewels/JewelAbyssMelee",nil,nil,nil,nil)--深渊珠宝
-- SetJiaoYiGoods(nil,"锐利之凝珠宝","Metadata/Items/Jewels/JewelAbyssRanged",nil,nil,nil,nil)--深渊珠宝
-- SetJiaoYiGoods(nil,"安睡之凝珠宝","Metadata/Items/Jewels/JewelAbyssCaster",nil,nil,nil,nil)--深渊珠宝
-- SetJiaoYiGoods(nil,"苍白之凝珠宝","Metadata/Items/Jewels/JewelAbyssSummoner",nil,nil,nil,nil)--深渊珠宝