package.path = GetPackagePath();
local loadArr={"�Զ�����"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end

--ָ��ְҵ  Ұ���ˡ�Ů�ס����塢�����������ߡ���Ӱ��ʥ����ɮ��
g_newRoleJob="����"
--����ְҵ ��ʿ����ͽ�����������͡����ۡ�׷���ߡ������ҡ�Ԫ��ʹ���ٻ�ʦ�������ߡ���ʿ���ھ����й١�ʥ�ڡ��ػ��ߡ���Ӱ��ʦ����թʦ���ƻ��ߡ�����ʹͽ��
g_shengHuaJob="����"
--����ʹ�õ����� ֧��(��}����}צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����Ҫ�������м���|�ֿ�
SetUseWeapon("��|����")
--�����Լ��õ�װ������ 
SetUseZhuangBeiTypeData("StrDex","�·�")
SetUseZhuangBeiTypeData("Dex","ͷ��")
SetUseZhuangBeiTypeData("Str|StrInt|Int","����")
SetUseZhuangBeiTypeData("Str|StrDex|Dex","Ь��")
SetUseZhuangBeiTypeData("StrInt","����")

g_attackDis=50				--��������
g_duobiHpVal=0.2

--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч

SetNeedSkillLineData(93,"ȼ����ʸ,nil|����o��,nil",2,nil,nil)
SetNeedSkillLineData(94,"��h�h��,nil|Ԫ�ع�������o��,nil|���ٹ����o��,nil|���؈D�v�o��,nil",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,30)
SetNeedSkillLineData(95,"ħ�ļ�ʸ�o��,nil|��ŭ,nil|�����@�ñ������o��,nil|���g��ʸ,nil",nil,nil,nil)
SetNeedSkillLineData(96,"䓽��F��,nil|Ԫ�؜Q��,nil|��ŭ,nil",nil,nil,nil)
SetNeedSkillLineData(97,"�ѓ���ӡӛ,nil|�ن�����ħ��,nil|���Еrӡӛ�o��,nil",nil,nil,nil)
SetNeedSkillLineData(98,"��Ƭ�h��,nil|���ٹ����o��,nil|�Ͷ�Ͷ�����o��,nil|�R���o��,nil",30,nil,nil)
SetNeedSkillLineData(99,"�����ʸ,nil|���ӱ�������o��,nil|Ԫ�ع�������o��,nil|���w�o��,nil|��Ӱ�����o��,nil|����o��,nil",16,nil,nil)
SetNeedSkillLineData(100,"�W늼�ʸ,nil|���ӱ�������o��,nil|Ԫ�ع�������o��,nil|���w�o��,nil|���l�o��,nil|��Ӱ�����o��,nil|����o��,nil",nil,nil,nil)


--���ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��
AddAttackSkillData("�W늼�ʸ","Lightning Arrow",false,50,0)--���ӹ�������
AddAttackSkillData("�����ʸ","Galvanic Arrow",false,50,0)--���ӹ�������
AddAttackSkillData("ȼ����ʸ","Burning Arrow")
AddAttackSkillData("��ͨ����","melee")
SetDebuffSkill(nil,"snipers_mark",nil,"curse_snipers_mark")--�ѓ���ӡӛ

--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�
SetSkillLimitMaxLv("䓽��F��",nil,14)

-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--�������ʱ�ٻ����������� mapClassName=����ͼ���� name=������ className=��������

--SetNeedFlaskData(pos,flask,modsData,minLv)--����ҩƿ�ڷ�
SetNeedFlaskData(1,"����ҩ��","nil")
SetNeedFlaskData(2,"����ҩ��","nil")
SetNeedFlaskData(3,"ˮ��ҩ��","nil")
SetNeedFlaskData(4,"ħ��ҩ��","nil")
SetNeedFlaskData(5,"ħ��ҩ��","nil")


g_addHpVal=0.7--HP���ڶ��ٳԺ�ҩ
g_addMpVal=0.2--MP���ڶ��ٳ���ҩ

---------------------------------------��װ����
--SetAtuoChangeEquipData(job,pos,name,val,yijie) ���㷽ʽ���� �����������ֵ���Ա���ֵ  ����װ���߾ͻ�������
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--pos ��λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) ���������м���|����
--name ������ ֧����Ϸ�ڵ�װ�������� �����������Զ�����(�����˺������ס����ܡ����ܡ��������ܶ�)
--val ����ֵ ֧��С��
--nType ��װ���� 0��nil����Ϊһֱ��Ч 1Ϊ��ͼʱ����Ч 2Ϊ���ʱ����Ч
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_and_cold_damage_resistance_%",0.25)--�������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_and_lightning_damage_resistance_%",0.25)--�����������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","cold_and_lightning_damage_resistance_%",0.2)--��˪�������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_resist_all_elements_%",0.35)--ȫԪ�ؿ��� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_fire_damage_resistance_%",0.3)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_cold_damage_resistance_%",0.3)--������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_lightning_damage_resistance_%",0.3)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","cold_damage_resistance_%",0.3)--��˪���� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_damage_resistance_%",0.3)--���濹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","lightning_damage_resistance_%",0.3)--���翹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_movement_velocity_+%",0.3)--�����ƶ��ٶ� +%
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_maximum_life",0.3)--����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","movement_velocity_+%",0.3)--�ƶ��ٶ� +%

SetAtuoChangeEquipData("����","����","additional_strength",0.2)--
SetAtuoChangeEquipData("����","����","additional_intelligence",0.2)--
SetAtuoChangeEquipData("����","����","additional_strength_and_intelligence",0.3)--
SetAtuoChangeEquipData("����","��","local_maximum_added_fire_damage",5)--
SetAtuoChangeEquipData("����","��","local_maximum_added_cold_damage",5)--
SetAtuoChangeEquipData("����","��","local_maximum_added_lightning_damage",5)--

--����


--����--��ɫ
SetZhengTiColorVarData(2,2,3,1,nil,800,true)
SetZhengTiColorVarData(2,2,2,1,nil,700,true)
SetZhengTiColorVarData(2,1,3,1,nil,600,true)
SetZhengTiColorVarData(2,1,2,1,nil,500,true)
SetZhengTiColorVarData(2,1,3,0,nil,400,true)
SetZhengTiColorVarData(2,1,2,0,nil,300,true)
SetZhengTiColorVarData(2,0,3,0,nil,250,true)
SetZhengTiColorVarData(2,0,2,0,nil,200,true)
SetZhengTiColorVarData(2,1,1,0,nil,150,true)
SetZhengTiColorVarData(2,0,1,0,nil,100)
SetZhengTiColorVarData(2,1,0,0,nil,60)
SetZhengTiColorVarData(2,0,0,1,nil,50)

SetZhengTiColorVarData(3,0,5,1,nil,600,true)
SetZhengTiColorVarData(3,0,4,1,nil,500,true)
SetZhengTiColorVarData(3,0,3,1,nil,400,true)
SetZhengTiColorVarData(3,0,2,1,nil,300,true)
SetZhengTiColorVarData(3,0,2,0,nil,200,true)
SetZhengTiColorVarData(3,0,1,0,nil,10)

SetZhengTiColorVarData(4,3,0,0,nil,300,true)
SetZhengTiColorVarData(4,2,0,0,nil,200,true)
SetZhengTiColorVarData(4,1,0,0,nil,100)

SetZhengTiColorVarData(5,0,3,1,nil,400,true)
SetZhengTiColorVarData(5,0,3,0,nil,300,true)
SetZhengTiColorVarData(5,0,2,0,nil,200,true)
SetZhengTiColorVarData(5,0,1,0,nil,100)

SetZhengTiColorVarData(9,3,0,1,nil,500,true)
SetZhengTiColorVarData(9,2,0,2,nil,400,true)
SetZhengTiColorVarData(9,2,0,1,nil,300,true)
SetZhengTiColorVarData(9,1,0,1,nil,200,true)
SetZhengTiColorVarData(9,0,0,1,nil,100)

SetZhengTiColorVarData(10,2,2,0,nil,400,true)
SetZhengTiColorVarData(10,1,2,0,nil,300,true)
SetZhengTiColorVarData(10,0,2,0,nil,200,true)
SetZhengTiColorVarData(10,0,1,0,nil,100)



--AddShengJiZhuangBeiGoodsData("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",0,30,0)--������Ч ����50�����õ����ɫװ��
--AddShengJiZhuangBeiGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,30,0)--������Ч ����50�����ø�������ɫװ��

--������+ϡ���� ���ʱ����Ч
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_rarity_+%",0.5,2)--���A��Ʒ����Ʒ�| +%
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_quantity_+%",1.5,2)--��Ʒ���䔵������ %

--�߼���װ����
SetGaoJiHuanZhuangData("����","����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1","�޾�֮��","Tabula Rasa")
SetGaoJiHuanZhuangData("����","����ñ","Metadata/Items/Armours/Helmets/HelmetDex1","����ñ","Goldrim")


--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--������ͼʱ���� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� shengjiMapClassName=Ҫˢ�ĵ�ͼ���� needLv=���������ټ�Ϊֹ
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--�� �������������� ��ʱ��ˢ����ʥ�ص�50���ٽ�����һ����
SetTaskShengJiData("a9q3",nil,"2_9_1",68,true)--�� ���L���w�� ��ʱ��ˢ�BѪˮ����68���ٽ�����һ����

SetTaskMiGongData("a8q7",nil,1)--���ڵ���a8q7�� ���Թ�1
SetTaskMiGongData("a10q1",nil,2)--���ڵ���a10q1 ���Թ�2
SetTaskMiGongDataByLv(79,3)--���ڵ���80�� ���Թ�3

SetChangeLimitCnt("����|�·�|ͷ��|����|Ь��",0)
SetChangeLimitCnt("����",0)
SetChangeLimitCnt("����|��ָ",0)


--SetNeedAddTianFu(tfStr)--�����츳�ӵ� 

SetNeedAddTianFu("����=attack_speed568-Ͷ�������������|dexterity990-����|dexterity992-����|dexterity995-����|perfect_aim591-�����W|bow_damage_and_speed498-���Ă���|greater_impact638-���`ף��|bow_damage508-���Ă����ͱ�����|bow_damage507-���Ă����ͱ�����|attack_damage_notable2120-ɽ؈֮�`|stun_recovery544-�����ͱ��╞ѣ|avoid_stun553-��ľ֮��|stun_recovery543-�����ͱ��╞ѣ|finesse993-����|mana1479-ħ����ˎ��Ч��|mana1478-ԭʼ����|dexterity989-����|dexterity872-����|weapon_elemental_damage1263-����Ԫ�؂���|weapon_elemental_damage1264-����Ԫ�؂���|weapon_ele_notable1700-��Ȼ֮��|dexterity856-����|might770-�oη|savant903-�I����ˇ|dexterity865-����|attack_speed1231-�����ٶ�|attack_speed1645-�����ٶ�|attack_speed1646-�����ٶ�|attack_damage_notable2242-�������|intelligence957-�ǻ�|aura_area_of_effect1203-��hЧ������|reduced_mana_reservation1199-����Ч��|aura_effect_reservation_cost_notable1558-����|dexterity866-����|dexterity864-����|bow_damage506-���Ă���|bow_damage_and_speed500-���Ĺ����ٶ�|bow_damage505-���Ĺ����ٶ�|bow_damage_and_speed501-���Ĺ����ٶ�|deadly_draw680-�wʸ�ڎ�|projectile_damage1233-Ͷ�������|projectile_damage_pierce1685-��͸|projectile_pierce_notable1687-�����ʸ|one_handed_damage636-����Ԫ�؂���|shield_mastery440-��Ȼ��һ|one_handed_damage637-����Ԫ�؂���|claws_of_the_pride489-ֱ�X|dexterity862-����|life1216-����|life1412-����|alchemist532-ˎ�݌W|mastery_life146-��������-47642|evasion1692-�W���cԪ�ؿ���|evasion_resists_notable1691-���e����|dexterity860-����|dexterity867-����|damage_area_projectile_speed_2296-���Еr�@��������ħ��|projectile_damage_projectile_speed1628-�f�I��|mastery_leech127-͵ȡ����-62252|accuracy587-���кͱ�����|accuracy586-���кͱ�����|deadeye588-�����R|life1415-����|life_life_leech1629-��Ѫ��|mark_generic1224-����ӛ���˵Ă���|mark_generic1225-����ӛ���˵Ă���|mark_generic_notable1226-��ӛ�C��|intelligence927-�ǻ�|intelligence926-�ǻ�|mana1647-ħ��|mind_drinker302-���`�g|mastery_mana164-ħ������-12119|dexterity848-����|strength815-����|dexterity981-����|agility965-���C֮�w|life703-����|fitness617-ѪҺ��ȡ|mastery_bow34-������-56951|mastery_elemental99-Ԫ�،���-17942|life1220-����|mental_acuity1046-ԎӋ|elemental_damage2136-Ԫ�؂���|elemental_damage_notable2138-Ԫ�،�ע|critical_strike_chance1019-������|assassination1239-�̚�|bow_damage_and_speed499-�������ʺͼӳ�|bow_damage_and_speed502-�������ʺͼӳ�|bow_damage_and_speed496-�������ʺͼӳ�|king_of_the_hill529-����֮��|dexterity861-����|weapon_elemental_damage2163-����Ԫ�؂���|weapon_elemental_damage2164-����Ԫ�؂����ͮ�����BЧ��|weapon_elemental_damage2176-����Ԫ�؂����ͮ�����BЧ��|weapon_elemental_damage_notable2165-̫��֮��|dexterity873-����|bow_critical_strike_chance675-Ͷ���﹥��������|bow_critical_strike_chance674-Ͷ���﹥��������|heartpierce676-�����hâ|dexterity858-����|projectile_attacks2430-Ͷ�������|projectile_attacks2433-Ͷ����������ٶ�|projectile_attacks_notable2434-�L��|") 
SetNeedAddTianFu("��������=AscendancyDeadeye3-Ͷ��������������ٶ�|AscendancyDeadeye14-���L|AscendancyDeadeye5-Ͷ���������������|AscendancyDeadeye4-����|AscendancyDeadeye3-Ͷ��������������ٶ�|AscendancyDeadeye14-���L|AscendancyDeadeye1-Ͷ���������ӡӛʩ���ٶ�|AscendancyDeadeye2-���c|AscendancyDeadeye19-Ͷ��������������ٶ�|AscendancyDeadeye20_-�L֮���l|") 

