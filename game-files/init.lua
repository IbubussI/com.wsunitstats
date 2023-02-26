LuaS �

xV           (w@��[ interfaceName = $$interfaceName
$interface_getIndex = interfaceName
interfaceId = $lastResult

local colorReplaces = $$colorReplaces

factionColorsByTeams = false
sendResNotificationEndTime = 0
unselectHotKey = 28
massPlansHotKey = 0
continueOperationHotkey = 0
addSelectionHotKey = 0
addWorkMassHotKey1 = 84
addWorkMassHotKey2 = 102
removeWorkMassHotKey = 102
addTaskHotKey = 28
gameIsEnded = false

interfaceScale = $interface_@interfaceId_scaleWidgets

strEventIdleWorkers1 = localize("<*eventIdleWorkers/0>")
strEventIdleWorkers2 = localize("<*eventIdleWorkers/1>")

strTimeH0 = localize("<*timerHour/0>")
strTimeH1 = localize("<*timerHour/1>")
strTimeH2 = localize("<*timerHour/2>")

strTimeD0 = localize("<*timerDay/0>")
strTimeD1 = localize("<*timerDay/1>")
strTimeD2 = localize("<*timerDay/2>")
strTimeD3 = localize("<*timerDay/3>")

strTimeL0 = localize("<*timerLong/0>")
strTimeL1 = localize("<*timerLong/1>")
strTimeL2 = localize("<*timerLong/2>")

buildButtons = {2,148,149,400,151,13,83,401,150,84,85,403,1328,1369,1370}
buildButtonsLockers = {531,645,646,647,651,687,688,689,690,691,692,693,1374,1375,1376}
buildPlansAbilities = {
	{6,2,1,-1,4,-1,-1,-1,-1,3,-1,-1,5,-1,-1},--КВ
	{68,8,9,23,10,-1,11,-1,13,22,-1,-1,12,-1,-1},--Е
	{71,15,16,30,17,19,18,-1,20,-1,-1,-1,21,-1,-1},--А
	{74,26,28,48,44,-1,-1,45,46,47,-1,-1,49,50,-1},--ЕЗ
	{77,27,29,37,31,-1,32,33,35,36,-1,-1,34,-1,-1},--ЕВ
	{80,40,42,51,52,54,53,67,57,55,-1,58,56,-1,-1},--АЗ
	{83,41,43,59,60,61,62,-1,64,65,-1,66,63,-1,-1},--АВ
	{93,86,87,88,89,90,91,96,95,94,108,110,92,-1,112},--ПР
	{93,97,87,88,89,90,91,96,95,94,108,-1,92,100,111},--Британия
	{93,98,87,88,89,90,91,96,95,94,108,55,92,-1,111},--Индия
	{93,99,87,88,89,90,91,96,95,94,108,110,92,101,112},--Турция
	{93,105,87,88,89,107,91,96,95,106,108,104,92,103,102},--Германия
	{93,109,87,88,89,90,91,96,95,94,108,110,92,-1,112},--Россия
	{93,113,87,88,89,90,91,96,95,94,108,-1,92,-1,112},--Франция
	{93,114,87,117,89,116,-1,115,95,94,-1,110,92,-1,111},--Китай
	{93,118,87,88,89,90,91,96,95,94,108,-1,92,-1,111},--Япония
	{121,119,87,88,89,90,91,96,95,94,108,110,92,120,112},--Польша
	{93,122,87,88,89,90,91,96,95,94,108,-1,92,-1,111},--Венгрия
}
workButtonBlocks = {153,156,159,162,165,45,223,249,384}
workButtons = {153,156,159,162,165,45,223,249,61}
workReservePanels = {333,334,335,336,337,338,326,332,nil}
workReserveNumbers = {339,340,341,342,343,344,345,346,nil}
workUnavailableIcon = {251,266,267,268,269,270,271,272,nil}
workReserveProgress = {953,954,955,956,957,958,959,960,nil}
workQueueButtons = {169,240,173,172,171}
workQueueNumbers = {26,28,29,66,67}
storageBoxes = {411,238,258,259,409,410}
specialDamage = {416,420,508,541,589}
playersListNames = {1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204}
playersListStatus = {1183,1182,1181,1180,1179,1178,1177,1176,1175,1174,1173,1172,1171,1170,1169,1168,1167,1166,1165,1164,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306}
playersComplaintButton = {1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557}
teamBlocks = {1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,16,27,30,31}
destroyListWidgets = {1153,1154,1155,1156,1157,1158,681}

transformationButton = {648,649,650,294,376}
transformationNumber = {660,661,662,293,347}
transformationHotKey = {613,628,629,295,379}

culturesAbilities = {[9]=5, [10]=6, [11]=7, [12]=8, [13]=9, [14]=10, [15]=11, [16]=12, [17]=13, [18]=14}

unitNations = {
	1,1,1,1,1,1,1,1,1,1,-- 0-9
	1,2,2,0,0,0,2,2,2,2,-- 10-19
	2,2,2,2,2,0,2,2,3,3,-- 20-29
	3,3,3,3,3,3,2,2,2,3,-- 30-39
	3,3,3,3,3,0,3,3,3,3,-- 40-49
	2,4,5,0,2,4,5,4,5,4,-- 50-59
	5,0,0,3,5,5,5,5,5,5,-- 60-69
	5,5,5,5,5,2,5,2,5,5,-- 70-79
	2,2,2,6,7,6,7,6,7,6,-- 80-89
	7,4,4,4,4,4,4,4,4,4,-- 90-99
	4,4,4,2,4,4,4,4,4,4,-- 100-109
	4,4,6,6,6,6,6,6,6,6,-- 110-119
	6,6,6,6,6,6,6,6,6,6,-- 120-129
	0,7,7,7,7,7,7,7,7,7,-- 130-139
	7,7,7,7,7,4,4,4,4,4,-- 140-149
	4,4,4,5,5,5,5,5,5,5,-- 150-159
	5,2,2,7,6,6,6,6,6,7,-- 160-169
	7,7,7,7,7,7,7,8,8,8,-- 170-179
	8,8,2,2,2,2,3,3,3,3,-- 180-189
	8,8,8,8,8,8,8,8,2,3,-- 190-199
	1,8,8,8,8,8,8,8,8,2,-- 200-209
	3,4,4,4,4,4,5,5,5,5,-- 210-219
	5,6,6,6,6,6,7,7,7,7,-- 220-229
	7,5,8,6,8,4,5,6,7,8,-- 230-239
	8,8,8,8,8,8,8,8,8,6,-- 240-249
	8,nil,8,8,9,9,9,8,9,9,-- 250-259
	9,9,9,9,10,10,10,10,10,10,-- 260-269
	10,11,11,11,nil,11,11,11,11,11,-- 270-279
	11,11,12,12,12,12,12,12,12,12,-- 280-289
	8,8,8,12,12,12,12,8,13,13,-- 290-299
	13,8,13,13,13,13,13,13,0,13,-- 300-309
	13,8,8,1,8,8,8,8,8,8,-- 310-319
	8,12,9,14,14,14,14,14,14,14,-- 320-329
	14,14,14,14,nil,14,14,15,15,15,-- 330-339
	15,15,15,15,15,15,15,15,15,15,-- 340-349
	15,15,15,15,15,9,12,nil,16,16,-- 350-359
	16,16,16,16,8,8,16,16,16,16,-- 360-369
	8,3,17,17,17,17,17,17,17,17,-- 370-379
	17,17,17,nil,nil,18,18,18,18,18,-- 380-389
	18,18,18,18,18,18,nil,1,1,nil,-- 390-399
}
--0 Животные
--1 КВ
--2 Е
--3 А
--4 ЕЗ
--5 ЕВ
--6 АЗ
--7 АВ
--8 Индустриал
--9 Британия
--10 Индия
--11 Турция
--12 Германия
--13 Россия
--14 Франция
--15 Китай
--16 Япония
--17 Польша
--18 Венгрия

function deepCopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepCopy(orig_key)] = deepCopy(orig_value)
        end
        setmetatable(copy, deepCopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function getPlayerFaction(player)
	id = player
	local facs = $session_gameplay_gameplay_player_@id_controlledFactions
	for facId = 0, 63 do
		id = facId
		if facs.@id then return facId end
	end
	return 64
end

local gameplay = $session_gameplay_gameplay

playersFactions = {}

for i = 1, gameplay.player_size do
	table.insert(playersFactions, getPlayerFaction(i - 1))
end

local teamsColors =
{
	{0xff00ff00, 0xff000000},
	{0xff00ffff, 0xff000000},
	{0xff0000ff, 0xff000000}
}

local factionColorsBase =
{
	{0xff7f7f7f, 0xff282828},
	{0xffdadada, 0xff282828},
	{0xff0000ff, 0xff000000},
	{0xff3fffbf, 0xff282828},
	{0xffffbf00, 0xff282828},
	{0xff00bfff, 0xff282828},
	{0xff7f00bf, 0xff282828},
	{0xffff007f, 0xff282828},
	{0xffbfff00, 0xff000000},
	{0xff00ffff, 0xff000000},
	{0xff7f00ff, 0xff282828},
	{0xff7f0000, 0xff5d4843},
	{0xff7fbf7f, 0xff282828},
	{0xffff7f00, 0xff404041},
	{0xff007fff, 0xff282828},
	{0xffbf00bf, 0xff000000},
	{0xff00bf3f, 0xff282828},
	{0xff7fbfbf, 0xff282828},
	{0xff7fbfff, 0xff282828},
	{0xff00007f, 0xff00003a},
	{0xff663333, 0xff640200},
	{0xff00ff3f, 0xff000000},
	{0xff7fffff, 0xff000000},
	{0xff7f3fff, 0xff282828},
	{0xffff7f7f, 0xff282828},
	{0xff3fbf7f, 0xff282828},
	{0xff007fbf, 0xff282828},
	{0xffff00ff, 0xff282828},
	{0xffffbfbf, 0xff282828},
	{0xff7fff7f, 0xff282828},
	{0xffbfffff, 0xff282828},
	{0xffbf7fff, 0xff282828},
	{0xffbf3f3f, 0xff282828},
	{0xff7fffdf, 0xff282828},
	{0xffbfbfff, 0xff282828},
	{0xffff7fff, 0xff282828},
	{0xffbf7f3f, 0xff404041},
	{0xff3f7f3f, 0xff282821},
	{0xff7f7fff, 0xff282828},
	{0xffff00bf, 0xff404041},
	{0xffffbf7f, 0xff282828},
	{0xff007f00, 0xff000000},
	{0xff7f7fbf, 0xff282828},
	{0xffbf007f, 0xff000000},
	{0xffffffbf, 0xff282828},
	{0xff00bfbf, 0xff282828},
	{0xff3f3fbf, 0xff333333},
	{0xff3f003f, 0xff810081},
	{0xffbfbf00, 0xff282828},
	{0xff0000bf, 0xff282821},
	{0xffffbfff, 0xff282828},
	{0xff7fbf00, 0xff282828},
	{0xff3f3f7f, 0xff282828},
	{0xffbfbf7f, 0xff282828},
	{0xff007f7f, 0xff404041},
	{0xff00003f, 0xff00007f},
	{0xffbf7fbf, 0xff282828},
	{0xffbfffbf, 0xff282828},
	{0xff7f3f7f, 0xff333333},
	{0xffffff00, 0xff282828},
	{0xffbfff7f, 0xff282828},
	{0xff7f7f00, 0xff404041},
	{0xff7f007f, 0xff4e004e},
	{0xffb30000, 0xff404041},
	{0xffbfbfbf, 0xff282828}
}

if colorReplaces ~= nil then
	colorReplaces = fromJson(colorReplaces)
	local colors = {}
	for i = 1, #factionColorsBase do
		if colorReplaces[i] == nil then
			table.insert(colors, factionColorsBase[i])
		else
			table.insert(colors, deepCopy(factionColorsBase[colorReplaces[i]]))
		end
	end
	factionColorsBase = colors
end

factionColors = deepCopy(factionColorsBase)

playersColors = {}

function updatePlayersColors()
	local players = $session_gameplay_gameplay_player
	for i = 1, players.size do
		playersColors[i] = deepCopy(factionColors[playersFactions[i] + 1])
	end
end

updatePlayersColors()

function getFactionColor(factionId)
	return factionColors[factionId + 1]
end

function getPlayerColor(playerId)
	return playersColors[playerId + 1]
end

function updateFactionsColors()
	local myFaction = $session_visual_currentFaction
	local factions = $session_visual_faction
	local factionsSize = factions.size
	local player = $session_gameplay_controlledPlayer
	local relations = $session_gameplay_gameplay_scene_0_relation
	id = player
	local facs = $session_gameplay_gameplay_player_@id_controlledFactions

	for i = 0, factionsSize - 1 do
		local color
		if factionColorsByTeams and i > 1 then
			id = i
			if facs.@id then
				color = teamsColors[1]
			else
				local rel = getRelation(relations, myFaction, i)
				color = teamsColors[rel + 1]
			end
		else
			color = factionColorsBase[i + 1]
		end
		
		factionColors[i + 1][1] = color[1]
		factionColors[i + 1][2] = color[2]
		
		id = i
		local minimapColor = factions.@id_minimapColor
		if i == 0 then
			minimapColor.a = 0
		else
			minimapColor.value = color[1]
			factions.@id_minimapBorderColor_value = color[2]
		end
	end
	
	updatePlayersColors()
	
	updateChatColors()
end

function getInterface()
	return $interface_@interfaceId
end

function getNodes()
	return $interface_@interfaceId_nodes
end

weaponBlock = {427, 468, 470, 495, 576}
weaponDamageValue = {260, 448, 475, 499, 587}
weaponDamageType = {428, 418, 503, 539, 579}
weaponAdvancedInfo = {429, 449, 476, 500, 580}
weaponRechargeTime = {431, 450, 480, 504, 584}
weaponSpread = {{730,435}, {733,451}, {777,481}, {785,505}, {788,585}}
weaponDistance = {434, 452, 482, 506, 586}
weaponIcon = {436, 417, 502, 538, 577}
weaponUnitTagIcon = {286, 286, 286, 286, 286, 286, 286}
weaponTypedDamage =
{
	{
		{439, 469, 437, 438}, 
		{440, 441, 442, 443},
		{444, 445, 446, 447}
	},
	{
		{461, 478, 493, 487}, 
		{462, 479, 494, 488},
		{463, 483, 496, 489}
	},
	{
		{509, 515, 526, 532}, 
		{510, 516, 527, 533},
		{511, 517, 528, 534}
	},
	{
		{552, 564, 558, 570}, 
		{553, 565, 559, 571},
		{554, 569, 560, 572}
	},
	{
		{596, 602, 590, 608}, 
		{597, 603, 591, 609},
		{598, 604, 592, 610}
	}
}

unitsWeaponIcon =
{
	[1] = {286}
}

hideResearchOnFinalAge =
{
	[3] = 0,
	[4] = 0,
	[90] = 0,
	[91] = 0,
	[1] = 1,
	[2] = 1,
	[5] = 2,
	[6] = 2,
	[7] = 2,
	[8] = 2,
	[15] = 3,
	[9] = 3,
	[16] = 3,
	[17] = 3,
	[59] = 4,
	[61] = 4,
	[62] = 4,
	[63] = 4,
	[64] = 4,
	[65] = 4,
	[66] = 4,
	[67] = 4,
	[68] = 4,
	[69] = 4,
	[70] = 4,
	[71] = 4,
	[72] = 4,
	[73] = 4,
	[93] = 5
}

unitsWork = {
	--КВ
	[0] = {{0},{2},[5]={1}},
	[2] = {[1]={2},[2]={3},[9]={0,1}},
	[3] = {[9]={0,1}},
	[4] = {[9]={0,1}},
	[5] = {{0},{7,1},{2},[5]={3},[7]={6},[9]={4,5}},
	[9] = {{0},{1},{2},[9]={3}},
	[10] = {[5]={3},[6]={4},[7]={0},[8]={1,2}},
	[200] = {{0},[5]={1}},
	[1] = {[9]={0,1}},
	[6] = {[9]={0,1}},
	[7] = {[9]={0,1}},
	[8] = {[9]={0,1}},

	--Е
	[11] = {{0},[5]={4},[6]={5,7},[7]={2},[8]={1,3,6}},
	[209] = {{0},[5]={1},[6]={2}},
	[16] = {[9]={0,1}},
	[17] = {{2},{3},[9]={0,1}},
	[18] = {{0},{1},{2},{9,3},{7},{8},[7]={11},[8]={10,4},[9]={5,6}},
	[19] = {{0},{4},[5]={3},[9]={1,2}},
	[20] = {[9]={0,1}},
	[21] = {{0},{1},[5]={4},[9]={2,3}},
	[50] = {{2},{6},{3},{4},{5},[9]={0,1}},
	[54] = {{0},[5]={3},[9]={1,2}},
	[12] = {[9]={0,1}},
	[22] = {[9]={0,1}},
	[23] = {[9]={0}},
	[24] = {[9]={0,1}},
	[26] = {[9]={0,1}},
	[27] = {[9]={0,1}},
	[185] = {[9]={0,1}},
	[182] = {{2},[9]={0,1}},
	[183] = {[9]={0,1}},
	[184] = {{0},[9]={1,2}},
	[198] = {{0},[9]={1,2}},

	--А
	[28] = {{0},[5]={4},[6]={5,7},[7]={2},[8]={1,3,6}},
	[210] = {{0},[5]={1},[6]={2}},
	[29] = {[9]={0,1}},
	[30] = {[1]={2},[2]={3},[9]={0,1}},
	[32] = {{0},{1},{7},nil,{4},{6},nil,{5},{2,3}},
	[33] = {[1]={4,0},[2]={5,1},[7]={6},[8]={7},[9]={2,3}},
	[34] = {{0},[2]={6,1},[5]={4},[6]={5},[8]={7},[9]={2,3}},
	[47] = {[9]={0,1}},
	[63] = {{0},[9]={1,2}},
	[35] = {{0},{1},[5]={4},[9]={2,3}},
	[31] = {[9]={0,1}},
	[36] = {[9]={0,1}},
	[37] = {[9]={0,1}},
	[38] = {[9]={0,1}},
	[39] = {[9]={0,1}},
	[40] = {[9]={0,1}},
	[41] = {[9]={0,1}},
	[42] = {[9]={0,1}},
	[43] = {[9]={0}},
	[48] = {[9]={0,1}},
	[49] = {[9]={0,1}},
	[186] = {{2},[9]={0,1}},
	[187] = {[9]={0,1}},
	[189] = {[9]={0,1}},
	[188] = {{0},[9]={1,2}},
	[199] = {{0},[9]={1,2}},

	--ЕЕ
	[81] = {[9]={0}},
	
	--ЕЗ
	[51] = {{0},{8},{7},{6},{2,4},{3,12,11,13},{9},{1,5,10}},
	[235] = {{0},[5]={2,4},[6]={3}},
	[57] = {[9]={0,1,2,3,4}},
	[55] = {[9]={0}},
	[59] = {{1},{2},nil,{3},[9]={0}},
	[99] = {[1]={1},[9]={0}},
	[95] = {{0},[9]={1}},
	[91] = {{0},[4]={4},[6]={1},[7]={2},[8]={3},[9]={5}},
	[92] = {{0},{1},{2},[5]={4},[7]={5},[9]={3,6}},
	[93] = {{0},{1},{6,2},{3},{7},[7]={4},[8]={5},[9]={8}},
	[94] = {{3,2},{4,5},{6,7},{0},{1},{11},[7]={10},[8]={9},[9]={8,12}},
	[96] = {{0},{1},[4]={3},[8]={2},[9]={4}},
	[97] = {{0},{1},{3},[8]={2},[9]={4}},
	[98] = {{0},{4},[4]={2},[8]={1},[9]={3,5}},
	[109] = {{0},{2},{1},{3},[9]={4}},
	[110] = {{0},{1},{2},{3},[9]={4}},
	[111] = {{0},{5},{1},{2},{3},[9]={4,6}},
	[147] = {[9]={0}},
	[148] = {[9]={0}},
	[150] = {[9]={0}},
	[151] = {[9]={0}},
	[152] = {[9]={0}},
	[107] = {[9]={0}},
	
	--ЕВ
	[52] = {{0},nil,{6},{8},{2,4},{3,12,11,13},{9},{1,5,10}},
	[236] = {{0},[5]={2,4},[6]={3}},
	[58] = {{0},[9]={1,2,3,4,5}},
	[56] = {[9]={0}},
	[60] = {{1},{2},nil,{3},[9]={0}},
	[67] = {[1]={1},[9]={0}},
	[69] = {{2,1},{3,4},{5,6},{0},[6]={10},[7]={9},[8]={8},[9]={7,11}},
	[70] = {{0},[9]={1}},
	[64] = {{5,0},{1},{2},{3},{4},{6},{7},[9]={8}},
	[65] = {{0},{1},{2},{3},{4},{5},{6},[9]={7,8}},
	[66] = {{0},{1},{2},[7]={4},[9]={3,5}},
	[68] = {{0},{1},{6,2},{3},{7},[7]={4},[8]={5},[9]={8}},
	[154] = {[9]={0,1}},
	[155] = {[9]={0,1}},
	[160] = {[9]={0}},
	[78] = {[9]={0,1,2}},
	[157] = {[9]={0,1}},
	[158] = {[9]={0,1,2}},
	[159] = {[9]={0,1,2}},

	--АЗ
	[83] = {{0},nil,nil,{7},{2,4},{3,12,11,13},{8},{1,5,10}},
	[237] = {{0},[5]={2,4},[6]={3}},
	[85] = {[9]={0,1,2}},
	[89] = {[9]={0}},
	[87] = {[4]={1},[9]={0}},
	[117] = {[1]={1},[2]={2},[9]={0}},
	[112] = {{0},[9]={1}},
	[113] = {{0},{1},[5]={4},[8]={3},[9]={2}},
	[114] = {{1},{0},[6]={3},[9]={2,4}},
	[115] = {{0},{1},[5]={6},[6]={3},[7]={4},[8]={5},[9]={2}},
	[116] = {{0},{1},{7,2},{8},{4},{5},{6},{9},[9]={3}},
	[122] = {[9]={0}},
	[168] = {{0},[5]={2},[9]={1}},
	[165] = {[9]={0}},
	[166] = {[9]={0,1}},
	[167] = {[9]={0}},
	[121] = {{0},[9]={1}},
	[123] = {[9]={0}},
	[118] = {{0},{1},{2},[5]={4},[9]={3}},
	[249] = {[9]={0,1}},

	--АВ
	[84] = {{0},nil,{9},{7},{2,4},{3,12,11,13},{6},{1,5,10}},
	[238] = {{0},[5]={2,4},[6]={3}},
	[86] = {[9]={0,1,2,3}},
	[90] = {[9]={0,1}},
	[88] = {[4]={1},[9]={0}},
	[143] = {[1]={1},[9]={0}},
	[139] = {{0},[9]={1,2}},
	[140] = {{0},{1},{2},[5]={5},[6]={6},[8]={4},[9]={3}},
	[141] = {{0},{7,1},{2},{3},[5]={9},[6]={6},[7]={5},[8]={8},[9]={4}},
	[142] = {{0},{1},{2},{3},[8]={5},[9]={4,6}},
	[171] = {[9]={0}},
	[174] = {[9]={1,0}},
	[175] = {[9]={0,1}},
	[134] = {[9]={0,1}},
	[135] = {[9]={0,1}},
	[173] = {[9]={0}},
	[144] = {{0},{1},{2},{3},[9]={4}},
	[169] = {[9]={0,1}},

	--ab
	[190] = {{0},[5]={1,3,4},[6]={2,8,6,9},[8]={7,5}},
	[239] = {{0,7},[5]={1,3,4,6},[6]={2,8,5,9,10}},
	[194] = {{0},{2},[5]={1},[8]={3}},
	[195] = {{0,9,12,14},{1,10},{4,7},{15,17,2},{11,13,16},{3},{5},{6,8}},
	[196] = {{5},{0,34,39},{12,24,2,14,18,36},{11,21,1,25,8,27,31,33},{15,19,20,33,38},{6,23,30},{4,10,16,26,41,37},{7,3,9,13,17,22,29,28,32,35,40}},
	[234] = {{0},{1,4},{2},{5},{3}},
	[247] = {{0,9},{1},{2,3},{4,11,5},{6},{10,13},{12},{8,7,14}},
	[312] = {{2,0,4,5},{3,1},nil,nil,{6}},
	[297] = {{0,14},{1,6},{2},{3},{9,10,12},{13},{5,8,11},{4,7}},
	[317] = {[9]={0}},
	[318] = {[9]={0}},
	
	--gb
	[254] = {{0},[5]={1,3,4},[6]={2,8,6,9},[8]={7,5}},

	--in
	[264] = {{0},[5]={1,3,4,8},[6]={2,9,6,10},[8]={7,5}},

	--tr
	[271] = {{0},[5]={1,3,4},[6]={2,8,6,9},[8]={7,5}},
	[253] = {[9]={0}},

	--de
	[282] = {{0},[5]={1,3,4},[6]={2,8,6,9},[8]={7,5}},

	--ru
	[302] = {{0},[5]={1,3,4},[6]={2,8,6,9,10},[8]={7,5}},
	
	--fr
	[323] = {{0},[5]={1,3,4},[6]={2,8,6,9},[8]={7,5}},
	[326] = {[9]={0}},
	[331] = {{0},{2},[9]={1}},

	--cn
	[337] = {{0},[5]={1,3,4,8},[6]={2,9,6,10},[8]={7,5}},
	[340] = {{7},{2,8},{0,9},{1},{6},{3,10},{4,11},{5}},
	[354] = {nil,{0}},

	--jp
	[358] = {{0},[5]={1,3,4},[6]={2,8,6,9},[8]={7,5}},
	[361] = {nil,{0}},

	--pl
	[372] = {{0},[5]={1,3,4},[6]={2,8,6,9},[8]={7,5}},

	--hu
	[385] = {{0},[5]={1,3,4},[6]={2,8,6,9},[8]={7,5}},
}

unitsAttackGroundWeapon =
{
	[79] = {0, 1},
	[100] = {1, 1},
	[108] = {0, 1},
	[129] = {0, 1},
	[138] = {0, 1},
	[145] = {0, 1},
	[148] = {0, 3},
	[151] = {0, 1},
	[152] = {0, 1},
	[153] = 0,
	[155] = {0, 3},
	[160] = {0, 1},
	[161] = {0, 1},
	[162] = {0, 1},
	[166] = {0, 1},
	[174] = {0, 1},
	[176] = {0, 1},
	[177] = {1, 1},
	[179] = {0, 1},
	[180] = {0, 1},
	[207] = {1, 1},
	[208] = {0, 1},
	[231] = {0, 1},
	[233] = {0, 2},
	[243] = {0, 1},
	[249] = {1, 1},
	[256] = {0, 1},
	[258] = {1, 1},
	[259] = {1, 1},
	[267] = {1, 1},
	[269] = {1, 1},
	[273] = {0, 1},
	[275] = {0, 1},
	[276] = {1, 1},
	[279] = {1, 1},
	[284] = {1, 1},
	[285] = {0, 1},
	[286] = {1, 1},
	[287] = {1, 1},
	[289] = {0, 1},
	[291] = {0, 1},
	[292] = {0, 1},
	[293] = {0, 1},
	[294] = {0, 1},
	[298] = {1, 1},
	[299] = {1, 1},
	[300] = {0, 1},
	[304] = {0, 1},
	[309] = {1, 1},
	[311] = {0, 1},
	[316] = {0, 1},
	[325] = {1, 1},
	[326] = {1, 1},
	[328] = {0, 1},
	[329] = {0, 1},
	[330] = {0, 1},
	[333] = {1, 1},
	[341] = {1, 1},
	[342] = {0, 1},
	[344] = {1, 1},
	[345] = {0, 1},
	[347] = {0, 1},
	[346] = {1, 1},
	[348] = {1, 1},
	[360] = 0,
	[381] = {1, 1},
	[382] = {1, 1},
	[388] = {1, 1},
	[389] = {1, 1},
	[392] = {1, 1},
	[395] = {1, 1},
}

nationNames = {localize("<*nationName0>"),localize("<*nationName1>"),localize("<*nationName2>"),localize("<*nationName3>"),localize("<*nationName4>"),localize("<*nationName5>"),localize("<*nationName6>"),localize("<*nationName7>"),localize("<*nationName8>"),localize("<*nationName9>"),localize("<*nationName10>"),localize("<*nationName11>"),localize("<*nationName12>"),{localize("<*nationName13/0>"),localize("<*nationName13/1>")},localize("<*nationName14>"),localize("<*nationName15>"),localize("<*nationName16>"),localize("<*nationName17>"),{localize("<*nationName18/0>"),localize("<*nationName18/1>")}}
researchNames = {
	localize("<*upgrade0/0>"),localize("<*upgrade1/0>"),localize("<*upgrade2/0>"),localize("<*upgrade3/0>"),localize("<*upgrade4/0>"),localize("<*upgrade5/0>"),localize("<*upgrade6/0>"),localize("<*upgrade7/0>"),localize("<*upgrade8/0>"),localize("<*upgrade9/0>"),
	localize("<*upgrade10/0>"),localize("<*upgrade11/0>"),localize("<*upgrade12/0>"),localize("<*upgrade13/0>"),localize("<*upgrade14/0>"),localize("<*upgrade15/0>"),localize("<*upgrade16/0>"),localize("<*upgrade17/0>"),localize("<*upgrade18/0>"),localize("<*upgrade19/0>"),
	localize("<*upgrade20/0>"),localize("<*upgrade21/0>"),localize("<*upgrade22/0>"),localize("<*upgrade23/0>"),localize("<*upgrade24/0>"),localize("<*upgrade25/0>"),localize("<*upgrade26/0>"),localize("<*upgrade27/0>"),localize("<*upgrade28/0>"),localize("<*upgrade29/0>"),
	localize("<*upgrade30/0>"),localize("<*upgrade31/0>"),localize("<*upgrade32/0>"),localize("<*upgrade33/0>"),localize("<*upgrade34/0>"),localize("<*upgrade35/0>"),localize("<*upgrade36/0>"),localize("<*upgrade37/0>"),localize("<*upgrade38/0>"),localize("<*upgrade39/0>"),
	localize("<*upgrade40/0>"),localize("<*upgrade41/0>"),localize("<*upgrade42/0>"),localize("<*upgrade43/0>"),localize("<*upgrade44/0>"),localize("<*upgrade45/0>"),localize("<*upgrade46/0>"),localize("<*upgrade47/0>"),localize("<*upgrade48/0>"),localize("<*upgrade49/0>"),
	localize("<*upgrade50/0>"),localize("<*upgrade51/0>"),localize("<*upgrade52/0>"),localize("<*upgrade53/0>"),localize("<*upgrade54/0>"),localize("<*upgrade55/0>"),localize("<*upgrade56/0>"),localize("<*upgrade57/0>"),localize("<*upgrade58/0>"),localize("<*upgrade59/0>"),
	localize("<*upgrade60/0>"),localize("<*upgrade61/0>"),localize("<*upgrade62/0>"),localize("<*upgrade63/0>"),localize("<*upgrade64/0>"),localize("<*upgrade65/0>"),localize("<*upgrade66/0>"),localize("<*upgrade67/0>"),localize("<*upgrade68/0>"),localize("<*upgrade69/0>"),
	localize("<*upgrade70/0>"),localize("<*upgrade71/0>"),localize("<*upgrade72/0>"),localize("<*upgrade73/0>"),localize("<*upgrade74/0>"),localize("<*upgrade75/0>"),localize("<*upgrade76/0>"),localize("<*upgrade77/0>"),localize("<*upgrade78/0>"),localize("<*upgrade79/0>"),
	localize("<*upgrade80/0>"),localize("<*upgrade81/0>"),localize("<*upgrade82/0>"),localize("<*upgrade83/0>"),localize("<*upgrade84/0>"),localize("<*upgrade85/0>"),localize("<*upgrade86/0>"),localize("<*upgrade87/0>"),localize("<*upgrade88/0>"),localize("<*upgrade89/0>"),
	localize("<*upgrade90/0>"),localize("<*upgrade91/0>"),localize("<*upgrade92/0>"),localize("<*upgrade93/0>"),localize("<*upgrade94/0>"),localize("<*upgrade95/0>"),localize("<*upgrade96/0>"),localize("<*upgrade97/0>"),localize("<*upgrade98/0>"),localize("<*upgrade99/0>"),
	localize("<*upgrade100/0>"),localize("<*upgrade101/0>"),localize("<*upgrade102/0>"),localize("<*upgrade103/0>"),localize("<*upgrade104/0>"),localize("<*upgrade105/0>"),localize("<*upgrade106/0>"),localize("<*upgrade107/0>"),localize("<*upgrade108/0>"),localize("<*upgrade109/0>"),
	localize("<*upgrade110/0>"),localize("<*upgrade111/0>"),localize("<*upgrade112/0>"),localize("<*upgrade113/0>"),localize("<*upgrade114/0>"),localize("<*upgrade115/0>"),localize("<*upgrade116/0>"),localize("<*upgrade117/0>"),localize("<*upgrade118/0>"),localize("<*upgrade119/0>"),
	localize("<*upgrade120/0>"),localize("<*upgrade121/0>"),localize("<*upgrade122/0>"),localize("<*upgrade123/0>"),localize("<*upgrade124/0>"),localize("<*upgrade125/0>"),localize("<*upgrade126/0>"),localize("<*upgrade127/0>"),localize("<*upgrade128/0>"),localize("<*upgrade129/0>"),
	localize("<*upgrade130/0>"),localize("<*upgrade131/0>"),localize("<*upgrade132/0>"),localize("<*upgrade133/0>"),localize("<*upgrade134/0>"),localize("<*upgrade135/0>"),localize("<*upgrade136/0>"),localize("<*upgrade137/0>"),localize("<*upgrade138/0>"),localize("<*upgrade139/0>"),
	localize("<*upgrade140/0>"),localize("<*upgrade141/0>"),localize("<*upgrade142/0>"),localize("<*upgrade143/0>"),localize("<*upgrade144/0>"),localize("<*upgrade145/0>"),localize("<*upgrade146/0>"),localize("<*upgrade147/0>"),localize("<*upgrade148/0>"),localize("<*upgrade149/0>"),
	localize("<*upgrade150/0>"),localize("<*upgrade151/0>"),localize("<*upgrade152/0>"),localize("<*upgrade153/0>"),localize("<*upgrade154/0>"),localize("<*upgrade155/0>"),localize("<*upgrade156/0>"),localize("<*upgrade157/0>"),localize("<*upgrade158/0>"),localize("<*upgrade159/0>"),
	localize("<*upgrade160/0>"),localize("<*upgrade161/0>"),localize("<*upgrade162/0>"),localize("<*upgrade163/0>"),localize("<*upgrade164/0>"),localize("<*upgrade165/0>"),localize("<*upgrade166/0>"),localize("<*upgrade167/0>"),localize("<*upgrade168/0>"),localize("<*upgrade169/0>"),
	localize("<*upgrade170/0>"),localize("<*upgrade171/0>"),localize("<*upgrade172/0>"),localize("<*upgrade173/0>"),localize("<*upgrade174/0>"),localize("<*upgrade175/0>"),localize("<*upgrade176/0>"),localize("<*upgrade177/0>"),localize("<*upgrade178/0>"),localize("<*upgrade179/0>"),
	localize("<*upgrade180/0>"),localize("<*upgrade181/0>"),localize("<*upgrade182/0>"),localize("<*upgrade183/0>"),localize("<*upgrade184/0>"),localize("<*upgrade185/0>"),localize("<*upgrade186/0>"),localize("<*upgrade187/0>"),localize("<*upgrade188/0>"),localize("<*upgrade189/0>"),
	localize("<*upgrade190/0>"),localize("<*upgrade191/0>"),localize("<*upgrade192/0>"),localize("<*upgrade193/0>"),localize("<*upgrade194/0>"),localize("<*upgrade195/0>"),localize("<*upgrade196/0>"),localize("<*upgrade197/0>"),localize("<*upgrade198/0>"),localize("<*upgrade199/0>"),
}
researchTexts = {
	localize("<*upgrade0/1>"),localize("<*upgrade1/1>"),localize("<*upgrade2/1>"),localize("<*upgrade3/1>"),localize("<*upgrade4/1>"),localize("<*upgrade5/1>"),localize("<*upgrade6/1>"),localize("<*upgrade7/1>"),localize("<*upgrade8/1>"),localize("<*upgrade9/1>"),
	localize("<*upgrade10/1>"),localize("<*upgrade11/1>"),localize("<*upgrade12/1>"),localize("<*upgrade13/1>"),localize("<*upgrade14/1>"),localize("<*upgrade15/1>"),localize("<*upgrade16/1>"),localize("<*upgrade17/1>"),localize("<*upgrade18/1>"),localize("<*upgrade19/1>"),
	localize("<*upgrade20/1>"),localize("<*upgrade21/1>"),localize("<*upgrade22/1>"),localize("<*upgrade23/1>"),localize("<*upgrade24/1>"),localize("<*upgrade25/1>"),localize("<*upgrade26/1>"),localize("<*upgrade27/1>"),localize("<*upgrade28/1>"),localize("<*upgrade29/1>"),
	localize("<*upgrade30/1>"),localize("<*upgrade31/1>"),localize("<*upgrade32/1>"),localize("<*upgrade33/1>"),localize("<*upgrade34/1>"),localize("<*upgrade35/1>"),localize("<*upgrade36/1>"),localize("<*upgrade37/1>"),localize("<*upgrade38/1>"),localize("<*upgrade39/1>"),
	localize("<*upgrade40/1>"),localize("<*upgrade41/1>"),localize("<*upgrade42/1>"),localize("<*upgrade43/1>"),localize("<*upgrade44/1>"),localize("<*upgrade45/1>"),localize("<*upgrade46/1>"),localize("<*upgrade47/1>"),localize("<*upgrade48/1>"),localize("<*upgrade49/1>"),
	localize("<*upgrade50/1>"),localize("<*upgrade51/1>"),localize("<*upgrade52/1>"),localize("<*upgrade53/1>"),localize("<*upgrade54/1>"),localize("<*upgrade55/1>"),localize("<*upgrade56/1>"),localize("<*upgrade57/1>"),localize("<*upgrade58/1>"),localize("<*upgrade59/1>"),
	localize("<*upgrade60/1>"),localize("<*upgrade61/1>"),localize("<*upgrade62/1>"),localize("<*upgrade63/1>"),localize("<*upgrade64/1>"),localize("<*upgrade65/1>"),localize("<*upgrade66/1>"),localize("<*upgrade67/1>"),localize("<*upgrade68/1>"),localize("<*upgrade69/1>"),
	localize("<*upgrade70/1>"),localize("<*upgrade71/1>"),localize("<*upgrade72/1>"),localize("<*upgrade73/1>"),localize("<*upgrade74/1>"),localize("<*upgrade75/1>"),localize("<*upgrade76/1>"),localize("<*upgrade77/1>"),localize("<*upgrade78/1>"),localize("<*upgrade79/1>"),
	localize("<*upgrade80/1>"),localize("<*upgrade81/1>"),localize("<*upgrade82/1>"),localize("<*upgrade83/1>"),localize("<*upgrade84/1>"),localize("<*upgrade85/1>"),localize("<*upgrade86/1>"),localize("<*upgrade87/1>"),localize("<*upgrade88/1>"),localize("<*upgrade89/1>"),
	localize("<*upgrade90/1>"),localize("<*upgrade91/1>"),localize("<*upgrade92/1>"),localize("<*upgrade93/1>"),localize("<*upgrade94/1>"),localize("<*upgrade95/1>"),localize("<*upgrade96/1>"),localize("<*upgrade97/1>"),localize("<*upgrade98/1>"),localize("<*upgrade99/1>"),
	localize("<*upgrade100/1>"),localize("<*upgrade101/1>"),localize("<*upgrade102/1>"),localize("<*upgrade103/1>"),localize("<*upgrade104/1>"),localize("<*upgrade105/1>"),localize("<*upgrade106/1>"),localize("<*upgrade107/1>"),localize("<*upgrade108/1>"),localize("<*upgrade109/1>"),
	localize("<*upgrade110/1>"),localize("<*upgrade111/1>"),localize("<*upgrade112/1>"),localize("<*upgrade113/1>"),localize("<*upgrade114/1>"),localize("<*upgrade115/1>"),localize("<*upgrade116/1>"),localize("<*upgrade117/1>"),localize("<*upgrade118/1>"),localize("<*upgrade119/1>"),
	localize("<*upgrade120/1>"),localize("<*upgrade121/1>"),localize("<*upgrade122/1>"),localize("<*upgrade123/1>"),localize("<*upgrade124/1>"),localize("<*upgrade125/1>"),localize("<*upgrade126/1>"),localize("<*upgrade127/1>"),localize("<*upgrade128/1>"),localize("<*upgrade129/1>"),
	localize("<*upgrade130/1>"),localize("<*upgrade131/1>"),localize("<*upgrade132/1>"),localize("<*upgrade133/1>"),localize("<*upgrade134/1>"),localize("<*upgrade135/1>"),localize("<*upgrade136/1>"),localize("<*upgrade137/1>"),localize("<*upgrade138/1>"),localize("<*upgrade139/1>"),
	localize("<*upgrade140/1>"),localize("<*upgrade141/1>"),localize("<*upgrade142/1>"),localize("<*upgrade143/1>"),localize("<*upgrade144/1>"),localize("<*upgrade145/1>"),localize("<*upgrade146/1>"),localize("<*upgrade147/1>"),localize("<*upgrade148/1>"),localize("<*upgrade149/1>"),
	localize("<*upgrade150/1>"),localize("<*upgrade151/1>"),localize("<*upgrade152/1>"),localize("<*upgrade153/1>"),localize("<*upgrade154/1>"),localize("<*upgrade155/1>"),localize("<*upgrade156/1>"),localize("<*upgrade157/1>"),localize("<*upgrade158/1>"),localize("<*upgrade159/1>"),
	localize("<*upgrade160/1>"),localize("<*upgrade161/1>"),localize("<*upgrade162/1>"),localize("<*upgrade163/1>"),localize("<*upgrade164/1>"),localize("<*upgrade165/1>"),localize("<*upgrade166/1>"),localize("<*upgrade167/1>"),localize("<*upgrade168/1>"),localize("<*upgrade169/1>"),
	localize("<*upgrade170/1>"),localize("<*upgrade171/1>"),localize("<*upgrade172/1>"),localize("<*upgrade173/1>"),localize("<*upgrade174/1>"),localize("<*upgrade175/1>"),localize("<*upgrade176/1>"),localize("<*upgrade177/1>"),localize("<*upgrade178/1>"),localize("<*upgrade179/1>"),
	localize("<*upgrade180/1>"),localize("<*upgrade181/1>"),localize("<*upgrade182/1>"),localize("<*upgrade183/1>"),localize("<*upgrade184/1>"),localize("<*upgrade185/1>"),localize("<*upgrade186/1>"),localize("<*upgrade187/1>"),localize("<*upgrade188/1>"),localize("<*upgrade189/1>"),
	localize("<*upgrade190/1>"),localize("<*upgrade191/1>"),localize("<*upgrade192/1>"),localize("<*upgrade193/1>"),localize("<*upgrade194/1>"),localize("<*upgrade195/1>"),localize("<*upgrade196/1>"),localize("<*upgrade197/1>"),localize("<*upgrade198/1>"),localize("<*upgrade199/1>"),
}
unitNames = {
	localize("<*unitName0>"),localize("<*unitName1>"),localize("<*unitName2>"),localize("<*unitName3>"),localize("<*unitName4>"),localize("<*unitName5>"),localize("<*unitName6>"),localize("<*unitName7>"),localize("<*unitName8>"),localize("<*unitName9>"),
	localize("<*unitName10>"),localize("<*unitName11>"),localize("<*unitName12>"),localize("<*unitName13>"),localize("<*unitName14>"),localize("<*unitName15>"),localize("<*unitName16>"),localize("<*unitName17>"),localize("<*unitName18>"),localize("<*unitName19>"),
	localize("<*unitName20>"),localize("<*unitName21>"),localize("<*unitName22>"),localize("<*unitName23>"),localize("<*unitName24>"),localize("<*unitName25>"),localize("<*unitName26>"),localize("<*unitName27>"),localize("<*unitName28>"),localize("<*unitName29>"),
	localize("<*unitName30>"),localize("<*unitName31>"),localize("<*unitName32>"),localize("<*unitName33>"),localize("<*unitName34>"),localize("<*unitName35>"),localize("<*unitName36>"),localize("<*unitName37>"),localize("<*unitName38>"),localize("<*unitName39>"),
	localize("<*unitName40>"),localize("<*unitName41>"),localize("<*unitName42>"),localize("<*unitName43>"),localize("<*unitName44>"),localize("<*unitName45>"),localize("<*unitName46>"),localize("<*unitName47>"),localize("<*unitName48>"),localize("<*unitName49>"),
	localize("<*unitName50>"),localize("<*unitName51>"),localize("<*unitName52>"),localize("<*unitName53>"),localize("<*unitName54>"),localize("<*unitName55>"),localize("<*unitName56>"),localize("<*unitName57>"),localize("<*unitName58>"),localize("<*unitName59>"),
	localize("<*unitName60>"),localize("<*unitName61>"),localize("<*unitName62>"),localize("<*unitName63>"),localize("<*unitName64>"),localize("<*unitName65>"),localize("<*unitName66>"),localize("<*unitName67>"),localize("<*unitName68>"),localize("<*unitName69>"),
	localize("<*unitName70>"),localize("<*unitName71>"),localize("<*unitName72>"),localize("<*unitName73>"),localize("<*unitName74>"),localize("<*unitName75>"),localize("<*unitName76>"),localize("<*unitName77>"),localize("<*unitName78>"),localize("<*unitName79>"),
	localize("<*unitName80>"),localize("<*unitName81>"),localize("<*unitName82>"),localize("<*unitName83>"),localize("<*unitName84>"),localize("<*unitName85>"),localize("<*unitName86>"),localize("<*unitName87>"),localize("<*unitName88>"),localize("<*unitName89>"),
	localize("<*unitName90>"),localize("<*unitName91>"),localize("<*unitName92>"),localize("<*unitName93>"),localize("<*unitName94>"),localize("<*unitName95>"),localize("<*unitName96>"),localize("<*unitName97>"),localize("<*unitName98>"),localize("<*unitName99>"),
	localize("<*unitName100>"),localize("<*unitName101>"),localize("<*unitName102>"),localize("<*unitName103>"),localize("<*unitName104>"),localize("<*unitName105>"),localize("<*unitName106>"),localize("<*unitName107>"),localize("<*unitName108>"),localize("<*unitName109>"),
	localize("<*unitName110>"),localize("<*unitName111>"),localize("<*unitName112>"),localize("<*unitName113>"),localize("<*unitName114>"),localize("<*unitName115>"),localize("<*unitName116>"),localize("<*unitName117>"),localize("<*unitName118>"),localize("<*unitName119>"),
	localize("<*unitName120>"),localize("<*unitName121>"),localize("<*unitName122>"),localize("<*unitName123>"),localize("<*unitName124>"),localize("<*unitName125>"),localize("<*unitName126>"),localize("<*unitName127>"),localize("<*unitName128>"),localize("<*unitName129>"),
	localize("<*unitName130>"),localize("<*unitName131>"),localize("<*unitName132>"),localize("<*unitName133>"),localize("<*unitName134>"),localize("<*unitName135>"),localize("<*unitName136>"),localize("<*unitName137>"),localize("<*unitName138>"),localize("<*unitName139>"),
	localize("<*unitName140>"),localize("<*unitName141>"),localize("<*unitName142>"),localize("<*unitName143>"),localize("<*unitName144>"),localize("<*unitName145>"),localize("<*unitName146>"),localize("<*unitName147>"),localize("<*unitName148>"),localize("<*unitName149>"),
	localize("<*unitName150>"),localize("<*unitName151>"),localize("<*unitName152>"),localize("<*unitName153>"),localize("<*unitName154>"),localize("<*unitName155>"),localize("<*unitName156>"),localize("<*unitName157>"),localize("<*unitName158>"),localize("<*unitName159>"),
	localize("<*unitName160>"),localize("<*unitName161>"),localize("<*unitName162>"),localize("<*unitName163>"),localize("<*unitName164>"),localize("<*unitName165>"),localize("<*unitName166>"),localize("<*unitName167>"),localize("<*unitName168>"),localize("<*unitName169>"),
	localize("<*unitName170>"),localize("<*unitName171>"),localize("<*unitName172>"),localize("<*unitName173>"),localize("<*unitName174>"),localize("<*unitName175>"),localize("<*unitName176>"),localize("<*unitName177>"),localize("<*unitName178>"),localize("<*unitName179>"),
	localize("<*unitName180>"),localize("<*unitName181>"),localize("<*unitName182>"),localize("<*unitName183>"),localize("<*unitName184>"),localize("<*unitName185>"),localize("<*unitName186>"),localize("<*unitName187>"),localize("<*unitName188>"),localize("<*unitName189>"),
	localize("<*unitName190>"),localize("<*unitName191>"),localize("<*unitName192>"),localize("<*unitName193>"),localize("<*unitName194>"),localize("<*unitName195>"),localize("<*unitName196>"),localize("<*unitName197>"),localize("<*unitName198>"),localize("<*unitName199>"),
	localize("<*unitName200>"),localize("<*unitName201>"),localize("<*unitName202>"),localize("<*unitName203>"),localize("<*unitName204>"),localize("<*unitName205>"),localize("<*unitName206>"),localize("<*unitName207>"),localize("<*unitName208>"),localize("<*unitName209>"),
	localize("<*unitName210>"),localize("<*unitName211>"),localize("<*unitName212>"),localize("<*unitName213>"),localize("<*unitName214>"),localize("<*unitName215>"),localize("<*unitName216>"),localize("<*unitName217>"),localize("<*unitName218>"),localize("<*unitName219>"),
	localize("<*unitName220>"),localize("<*unitName221>"),localize("<*unitName222>"),localize("<*unitName223>"),localize("<*unitName224>"),localize("<*unitName225>"),localize("<*unitName226>"),localize("<*unitName227>"),localize("<*unitName228>"),localize("<*unitName229>"),
	localize("<*unitName230>"),localize("<*unitName231>"),localize("<*unitName232>"),localize("<*unitName233>"),localize("<*unitName234>"),localize("<*unitName235>"),localize("<*unitName236>"),localize("<*unitName237>"),localize("<*unitName238>"),localize("<*unitName239>"),
	localize("<*unitName240>"),localize("<*unitName241>"),localize("<*unitName242>"),localize("<*unitName243>"),localize("<*unitName244>"),localize("<*unitName245>"),localize("<*unitName246>"),localize("<*unitName247>"),localize("<*unitName248>"),localize("<*unitName249>"),
	localize("<*unitName250>"),localize("<*unitName251>"),localize("<*unitName252>"),localize("<*unitName253>"),localize("<*unitName254>"),localize("<*unitName255>"),localize("<*unitName256>"),localize("<*unitName257>"),localize("<*unitName258>"),localize("<*unitName259>"),
	localize("<*unitName260>"),localize("<*unitName261>"),localize("<*unitName262>"),localize("<*unitName263>"),localize("<*unitName264>"),localize("<*unitName265>"),localize("<*unitName266>"),localize("<*unitName267>"),localize("<*unitName268>"),localize("<*unitName269>"),
	localize("<*unitName270>"),localize("<*unitName271>"),localize("<*unitName272>"),localize("<*unitName273>"),localize("<*unitName274>"),localize("<*unitName275>"),localize("<*unitName276>"),localize("<*unitName277>"),localize("<*unitName278>"),localize("<*unitName279>"),
	localize("<*unitName280>"),localize("<*unitName281>"),localize("<*unitName282>"),localize("<*unitName283>"),localize("<*unitName284>"),localize("<*unitName285>"),localize("<*unitName286>"),localize("<*unitName287>"),localize("<*unitName288>"),localize("<*unitName289>"),
	localize("<*unitName290>"),localize("<*unitName291>"),localize("<*unitName292>"),localize("<*unitName293>"),localize("<*unitName294>"),localize("<*unitName295>"),localize("<*unitName296>"),localize("<*unitName297>"),localize("<*unitName298>"),localize("<*unitName299>"),
	localize("<*unitName300>"),localize("<*unitName301>"),localize("<*unitName302>"),localize("<*unitName303>"),localize("<*unitName304>"),localize("<*unitName305>"),localize("<*unitName306>"),localize("<*unitName307>"),localize("<*unitName308>"),localize("<*unitName309>"),
	localize("<*unitName310>"),localize("<*unitName311>"),localize("<*unitName312>"),localize("<*unitName313>"),localize("<*unitName314>"),localize("<*unitName315>"),localize("<*unitName316>"),localize("<*unitName317>"),localize("<*unitName318>"),localize("<*unitName319>"),
	localize("<*unitName320>"),localize("<*unitName321>"),localize("<*unitName322>"),localize("<*unitName323>"),localize("<*unitName324>"),localize("<*unitName325>"),localize("<*unitName326>"),localize("<*unitName327>"),localize("<*unitName328>"),localize("<*unitName329>"),
	localize("<*unitName330>"),localize("<*unitName331>"),localize("<*unitName332>"),localize("<*unitName333>"),localize("<*unitName334>"),localize("<*unitName335>"),localize("<*unitName336>"),localize("<*unitName337>"),localize("<*unitName338>"),localize("<*unitName339>"),
	localize("<*unitName340>"),localize("<*unitName341>"),localize("<*unitName342>"),localize("<*unitName343>"),localize("<*unitName344>"),localize("<*unitName345>"),localize("<*unitName346>"),localize("<*unitName347>"),localize("<*unitName348>"),localize("<*unitName349>"),
	localize("<*unitName350>"),localize("<*unitName351>"),localize("<*unitName352>"),localize("<*unitName353>"),localize("<*unitName354>"),localize("<*unitName355>"),localize("<*unitName356>"),localize("<*unitName357>"),localize("<*unitName358>"),localize("<*unitName359>"),
	localize("<*unitName360>"),localize("<*unitName361>"),localize("<*unitName362>"),localize("<*unitName363>"),localize("<*unitName364>"),localize("<*unitName365>"),localize("<*unitName366>"),localize("<*unitName367>"),localize("<*unitName368>"),localize("<*unitName369>"),
	localize("<*unitName370>"),localize("<*unitName371>"),localize("<*unitName372>"),localize("<*unitName373>"),localize("<*unitName374>"),localize("<*unitName375>"),localize("<*unitName376>"),localize("<*unitName377>"),localize("<*unitName378>"),localize("<*unitName379>"),
	localize("<*unitName380>"),localize("<*unitName381>"),localize("<*unitName382>"),localize("<*unitName383>"),localize("<*unitName384>"),localize("<*unitName385>"),localize("<*unitName386>"),localize("<*unitName387>"),localize("<*unitName388>"),localize("<*unitName389>"),
	localize("<*unitName390>"),localize("<*unitName391>"),localize("<*unitName392>"),localize("<*unitName393>"),localize("<*unitName394>"),localize("<*unitName395>"),localize("<*unitName396>"),localize("<*unitName397>"),localize("<*unitName398>"),localize("<*unitName399>"),
}
unitTexts = {
	localize("<*unitText0>"),localize("<*unitText1>"),localize("<*unitText2>"),localize("<*unitText3>"),localize("<*unitText4>"),localize("<*unitText5>"),localize("<*unitText6>"),localize("<*unitText7>"),localize("<*unitText8>"),localize("<*unitText9>"),
	localize("<*unitText10>"),localize("<*unitText11>"),localize("<*unitText12>"),localize("<*unitText13>"),localize("<*unitText14>"),localize("<*unitText15>"),localize("<*unitText16>"),localize("<*unitText17>"),localize("<*unitText18>"),localize("<*unitText19>"),
	localize("<*unitText20>"),localize("<*unitText21>"),localize("<*unitText22>"),localize("<*unitText23>"),localize("<*unitText24>"),localize("<*unitText25>"),localize("<*unitText26>"),localize("<*unitText27>"),localize("<*unitText28>"),localize("<*unitText29>"),
	localize("<*unitText30>"),localize("<*unitText31>"),localize("<*unitText32>"),localize("<*unitText33>"),localize("<*unitText34>"),localize("<*unitText35>"),localize("<*unitText36>"),localize("<*unitText37>"),localize("<*unitText38>"),localize("<*unitText39>"),
	localize("<*unitText40>"),localize("<*unitText41>"),localize("<*unitText42>"),localize("<*unitText43>"),localize("<*unitText44>"),localize("<*unitText45>"),localize("<*unitText46>"),localize("<*unitText47>"),localize("<*unitText48>"),localize("<*unitText49>"),
	localize("<*unitText50>"),localize("<*unitText51>"),localize("<*unitText52>"),localize("<*unitText53>"),localize("<*unitText54>"),localize("<*unitText55>"),localize("<*unitText56>"),localize("<*unitText57>"),localize("<*unitText58>"),localize("<*unitText59>"),
	localize("<*unitText60>"),localize("<*unitText61>"),localize("<*unitText62>"),localize("<*unitText63>"),localize("<*unitText64>"),localize("<*unitText65>"),localize("<*unitText66>"),localize("<*unitText67>"),localize("<*unitText68>"),localize("<*unitText69>"),
	localize("<*unitText70>"),localize("<*unitText71>"),localize("<*unitText72>"),localize("<*unitText73>"),localize("<*unitText74>"),localize("<*unitText75>"),localize("<*unitText76>"),localize("<*unitText77>"),localize("<*unitText78>"),localize("<*unitText79>"),
	localize("<*unitText80>"),localize("<*unitText81>"),localize("<*unitText82>"),localize("<*unitText83>"),localize("<*unitText84>"),localize("<*unitText85>"),localize("<*unitText86>"),localize("<*unitText87>"),localize("<*unitText88>"),localize("<*unitText89>"),
	localize("<*unitText90>"),localize("<*unitText91>"),localize("<*unitText92>"),localize("<*unitText93>"),localize("<*unitText94>"),localize("<*unitText95>"),localize("<*unitText96>"),localize("<*unitText97>"),localize("<*unitText98>"),localize("<*unitText99>"),
	localize("<*unitText100>"),localize("<*unitText101>"),localize("<*unitText102>"),localize("<*unitText103>"),localize("<*unitText104>"),localize("<*unitText105>"),localize("<*unitText106>"),localize("<*unitText107>"),localize("<*unitText108>"),localize("<*unitText109>"),
	localize("<*unitText110>"),localize("<*unitText111>"),localize("<*unitText112>"),localize("<*unitText113>"),localize("<*unitText114>"),localize("<*unitText115>"),localize("<*unitText116>"),localize("<*unitText117>"),localize("<*unitText118>"),localize("<*unitText119>"),
	localize("<*unitText120>"),localize("<*unitText121>"),localize("<*unitText122>"),localize("<*unitText123>"),localize("<*unitText124>"),localize("<*unitText125>"),localize("<*unitText126>"),localize("<*unitText127>"),localize("<*unitText128>"),localize("<*unitText129>"),
	localize("<*unitText130>"),localize("<*unitText131>"),localize("<*unitText132>"),localize("<*unitText133>"),localize("<*unitText134>"),localize("<*unitText135>"),localize("<*unitText136>"),localize("<*unitText137>"),localize("<*unitText138>"),localize("<*unitText139>"),
	localize("<*unitText140>"),localize("<*unitText141>"),localize("<*unitText142>"),localize("<*unitText143>"),localize("<*unitText144>"),localize("<*unitText145>"),localize("<*unitText146>"),localize("<*unitText147>"),localize("<*unitText148>"),localize("<*unitText149>"),
	localize("<*unitText150>"),localize("<*unitText151>"),localize("<*unitText152>"),localize("<*unitText153>"),localize("<*unitText154>"),localize("<*unitText155>"),localize("<*unitText156>"),localize("<*unitText157>"),localize("<*unitText158>"),localize("<*unitText159>"),
	localize("<*unitText160>"),localize("<*unitText161>"),localize("<*unitText162>"),localize("<*unitText163>"),localize("<*unitText164>"),localize("<*unitText165>"),localize("<*unitText166>"),localize("<*unitText167>"),localize("<*unitText168>"),localize("<*unitText169>"),
	localize("<*unitText170>"),localize("<*unitText171>"),localize("<*unitText172>"),localize("<*unitText173>"),localize("<*unitText174>"),localize("<*unitText175>"),localize("<*unitText176>"),localize("<*unitText177>"),localize("<*unitText178>"),localize("<*unitText179>"),
	localize("<*unitText180>"),localize("<*unitText181>"),localize("<*unitText182>"),localize("<*unitText183>"),localize("<*unitText184>"),localize("<*unitText185>"),localize("<*unitText186>"),localize("<*unitText187>"),localize("<*unitText188>"),localize("<*unitText189>"),
	localize("<*unitText190>"),localize("<*unitText191>"),localize("<*unitText192>"),localize("<*unitText193>"),localize("<*unitText194>"),localize("<*unitText195>"),localize("<*unitText196>"),localize("<*unitText197>"),localize("<*unitText198>"),localize("<*unitText199>"),
	localize("<*unitText200>"),localize("<*unitText201>"),localize("<*unitText202>"),localize("<*unitText203>"),localize("<*unitText204>"),localize("<*unitText205>"),localize("<*unitText206>"),localize("<*unitText207>"),localize("<*unitText208>"),localize("<*unitText209>"),
	localize("<*unitText210>"),localize("<*unitText211>"),localize("<*unitText212>"),localize("<*unitText213>"),localize("<*unitText214>"),localize("<*unitText215>"),localize("<*unitText216>"),localize("<*unitText217>"),localize("<*unitText218>"),localize("<*unitText219>"),
	localize("<*unitText220>"),localize("<*unitText221>"),localize("<*unitText222>"),localize("<*unitText223>"),localize("<*unitText224>"),localize("<*unitText225>"),localize("<*unitText226>"),localize("<*unitText227>"),localize("<*unitText228>"),localize("<*unitText229>"),
	localize("<*unitText230>"),localize("<*unitText231>"),localize("<*unitText232>"),localize("<*unitText233>"),localize("<*unitText234>"),localize("<*unitText235>"),localize("<*unitText236>"),localize("<*unitText237>"),localize("<*unitText238>"),localize("<*unitText239>"),
	localize("<*unitText240>"),localize("<*unitText241>"),localize("<*unitText242>"),localize("<*unitText243>"),localize("<*unitText244>"),localize("<*unitText245>"),localize("<*unitText246>"),localize("<*unitText247>"),localize("<*unitText248>"),localize("<*unitText249>"),
	localize("<*unitText250>"),localize("<*unitText251>"),localize("<*unitText252>"),localize("<*unitText253>"),localize("<*unitText254>"),localize("<*unitText255>"),localize("<*unitText256>"),localize("<*unitText257>"),localize("<*unitText258>"),localize("<*unitText259>"),
	localize("<*unitText260>"),localize("<*unitText261>"),localize("<*unitText262>"),localize("<*unitText263>"),localize("<*unitText264>"),localize("<*unitText265>"),localize("<*unitText266>"),localize("<*unitText267>"),localize("<*unitText268>"),localize("<*unitText269>"),
	localize("<*unitText270>"),localize("<*unitText271>"),localize("<*unitText272>"),localize("<*unitText273>"),localize("<*unitText274>"),localize("<*unitText275>"),localize("<*unitText276>"),localize("<*unitText277>"),localize("<*unitText278>"),localize("<*unitText279>"),
	localize("<*unitText280>"),localize("<*unitText281>"),localize("<*unitText282>"),localize("<*unitText283>"),localize("<*unitText284>"),localize("<*unitText285>"),localize("<*unitText286>"),localize("<*unitText287>"),localize("<*unitText288>"),localize("<*unitText289>"),
	localize("<*unitText290>"),localize("<*unitText291>"),localize("<*unitText292>"),localize("<*unitText293>"),localize("<*unitText294>"),localize("<*unitText295>"),localize("<*unitText296>"),localize("<*unitText297>"),localize("<*unitText298>"),localize("<*unitText299>"),
	localize("<*unitText300>"),localize("<*unitText301>"),localize("<*unitText302>"),localize("<*unitText303>"),localize("<*unitText304>"),localize("<*unitText305>"),localize("<*unitText306>"),localize("<*unitText307>"),localize("<*unitText308>"),localize("<*unitText309>"),
	localize("<*unitText310>"),localize("<*unitText311>"),localize("<*unitText312>"),localize("<*unitText313>"),localize("<*unitText314>"),localize("<*unitText315>"),localize("<*unitText316>"),localize("<*unitText317>"),localize("<*unitText318>"),localize("<*unitText319>"),
	localize("<*unitText320>"),localize("<*unitText321>"),localize("<*unitText322>"),localize("<*unitText323>"),localize("<*unitText324>"),localize("<*unitText325>"),localize("<*unitText326>"),localize("<*unitText327>"),localize("<*unitText328>"),localize("<*unitText329>"),
	localize("<*unitText330>"),localize("<*unitText331>"),localize("<*unitText332>"),localize("<*unitText333>"),localize("<*unitText334>"),localize("<*unitText335>"),localize("<*unitText336>"),localize("<*unitText337>"),localize("<*unitText338>"),localize("<*unitText339>"),
	localize("<*unitText340>"),localize("<*unitText341>"),localize("<*unitText342>"),localize("<*unitText343>"),localize("<*unitText344>"),localize("<*unitText345>"),localize("<*unitText346>"),localize("<*unitText347>"),localize("<*unitText348>"),localize("<*unitText349>"),
	localize("<*unitText350>"),localize("<*unitText351>"),localize("<*unitText352>"),localize("<*unitText353>"),localize("<*unitText354>"),localize("<*unitText355>"),localize("<*unitText356>"),localize("<*unitText357>"),localize("<*unitText358>"),localize("<*unitText359>"),
	localize("<*unitText360>"),localize("<*unitText361>"),localize("<*unitText362>"),localize("<*unitText363>"),localize("<*unitText364>"),localize("<*unitText365>"),localize("<*unitText366>"),localize("<*unitText367>"),localize("<*unitText368>"),localize("<*unitText369>"),
	localize("<*unitText370>"),localize("<*unitText371>"),localize("<*unitText372>"),localize("<*unitText373>"),localize("<*unitText374>"),localize("<*unitText375>"),localize("<*unitText376>"),localize("<*unitText377>"),localize("<*unitText378>"),localize("<*unitText379>"),
	localize("<*unitText380>"),localize("<*unitText381>"),localize("<*unitText382>"),localize("<*unitText383>"),localize("<*unitText384>"),localize("<*unitText385>"),localize("<*unitText386>"),localize("<*unitText387>"),localize("<*unitText388>"),localize("<*unitText389>"),
	localize("<*unitText390>"),localize("<*unitText391>"),localize("<*unitText392>"),localize("<*unitText393>"),localize("<*unitText394>"),localize("<*unitText395>"),localize("<*unitText396>"),localize("<*unitText397>"),localize("<*unitText398>"),localize("<*unitText399>"),
}
envNames = {[0]=localize("<*envName0>"),[1]=localize("<*envName1>"),[3]=localize("<*envNameTree>"),[4]=localize("<*envNameTree>"),[5]=localize("<*envNameTree>"),[6]=localize("<*envNameTree>"),[7]=localize("<*envNameTree>"),[8]=localize("<*envNameTree>"),[9]=localize("<*envNameTree>"),[10]=localize("<*envNameTree>"),[11]=localize("<*envNameTree>"),[12]=localize("<*envNameTree>"),[13]=localize("<*envNameTree>"),[14]=localize("<*envNameTree>"),[15]=localize("<*envNameTree>"),[16]=localize("<*envNameTree>"),[17]=localize("<*envNameTree>"),[18]=localize("<*envNameTree>"),[19]=localize("<*envNameTree>"),[20]=localize("<*envNameTree>"),[21]=localize("<*envNameTree>"),[22]=localize("<*envNameTree>"),[23]=localize("<*envNameTree>"),[24]=localize("<*envNameTree>"),[25]=localize("<*envNameTree>"),[26]=localize("<*envNameTree>"),[27]=localize("<*envNameTree>"),[28]=localize("<*envNameTree>"),[29]=localize("<*envNameTree>"),[30]=localize("<*envNameTree>"),[31]=localize("<*envNameTree>"),[32]=localize("<*envNameTree>"),[36]=localize("<*envName36>"),[37]=localize("<*envName37>"),[38]=localize("<*envName38>"),[39]=localize("<*envName39>"),[63]=localize("<*envNameTree>"),[64]=localize("<*envNameTree>"),[65]=localize("<*envNameTree>"),[66]=localize("<*envNameTree>"),[67]=localize("<*envNameTree>"),[68]=localize("<*envNameTree>"),[69]=localize("<*envNameMeat>"),[70]=localize("<*envNameMeat>"),[90]=localize("<*envName90>"),[103]=localize("<*envNameMeat>"),[274]=localize("<*envName274>"),[275]=localize("<*envName275>"),[276]=localize("<*envName276>"),[303]=localize("<*envNameTree>"),[323]=localize("<*envNameTree>"),[324]=localize("<*envNameTree>"),[325]=localize("<*envNameTree>"),[326]=localize("<*envNameTree>"),[327]=localize("<*envNameTree>"),[328]=localize("<*envNameTree>"),[329]=localize("<*envName1>"),[305]=localize("<*envName305>"),[87]=localize("<*envName87>"),[88]=localize("<*envName88>"),[89]=localize("<*envName89>")}

workEnvCreateData = {["nature.vegetation.grass.live.wheat"] = {90, localize("<*envWorkText90>")},["nature.vegetation.grass.live.rice"] = {305, localize("<*envWorkText305>")}}


unitTags = {localize("<*unitTag/0>"), localize("<*unitTag/1>"), localize("<*unitTag/2>"), localize("<*unitTag/3>"), localize("<*unitTag/4>"), localize("<*unitTag/5>"), localize("<*unitTag/6>"), localize("<*unitTag/7>"), localize("<*unitTag/8>"), localize("<*unitTag/9>"), localize("<*unitTag/10>"), localize("<*unitTag/11>"), localize("<*unitTag/12>"), localize("<*unitTag/13>"), localize("<*unitTag/14>"), localize("<*unitTag/15>"), localize("<*unitTag/16>"), localize("<*unitTag/17>"), localize("<*unitTag/18>"), localize("<*unitTag/19>"), localize("<*unitTag/20>"), localize("<*unitTag/21>"), localize("<*unitTag/22>"), localize("<*unitTag/23>")}
ageNames = {localize("<*ageNames/0>"), localize("<*ageNames/1>"), localize("<*ageNames/2>"), localize("<*ageNames/3>"), localize("<*ageNames/4>"), localize("<*ageNames/5>"), localize("<*ageNames/6>"), localize("<*ageNames/7>")}

buildPlanText = {
	localize("<*buildPlanTownhall>"),--0
	localize("<*buildPlanStorage>"),--1
	localize("<*buildPlanHouse>"),--2
	localize("<*buildPlanForge>"),--3
	localize("<*buildPlanBarrackAndRange>"),--4
	localize("<*buildPlanTurret>"),--5
	localize("<*buildPlanTemple>"),--6
	localize("<*buildPlanTownhall>"),--7
	localize("<*buildPlanHouse>"),--8
	localize("<*buildPlanStorage>"),--9
	localize("<*buildPlanBarrackAndRange>"),--10
	localize("<*buildPlanHorse>"),--11
	localize("<*buildPlanTurret>"),--12
	localize("<*buildPlanDock>"),--13
	localize("<*buildPlanTownhall>"),--14
	localize("<*buildPlanHouse>"),--15
	localize("<*buildPlanStorage>"),--16
	localize("<*buildPlanBarrack>"),--17
	localize("<*buildPlanHorse>"),--18
	localize("<*buildPlanRange>"),--19
	localize("<*buildPlanDock>"),--20
	localize("<*buildPlanTurretScout>"),--21
	localize("<*buildPlanForge>"),--22
	localize("<*buildPlanFarm>"),--23
	localize("<*buildPlanTownhall>"),--24
	localize("<*buildPlanTownhall>"),--25
	localize("<*buildPlanHouse>"),--26
	localize("<*buildPlanHouse>"),--27
	localize("<*buildPlanStorage>"),--28
	localize("<*buildPlanStorage>"),--29
	localize("<*buildPlanRanch>"),--30
	localize("<*buildPlanBarrackAndRange>"),--31
	localize("<*buildPlanHorse>"),--32
	localize("<*buildPlanWorkshop>"),--33
	localize("<*buildPlanTurret>"),--34
	localize("<*buildPlanDock>"),--35
	localize("<*buildPlanForge>"),--36
	localize("<*buildPlanFarm>"),--37
	localize("<*buildPlanTownhall>"),--38
	localize("<*buildPlanTownhall>"),--39
	localize("<*buildPlanHouse>"),--40
	localize("<*buildPlanHouse>"),--41
	localize("<*buildPlanStorage>"),--42
	localize("<*buildPlanStorage>"),--43
	localize("<*buildPlanBarrack>"),--44
	localize("<*buildPlanWorkshop>"),--45
	localize("<*buildPlanDock>"),--46
	localize("<*buildPlanForge>"),--47
	localize("<*buildPlanFarm>"),--48
	localize("<*buildPlanTurret>"),--49
	localize("<*buildPlanSiegeStatic>"),--50
	localize("<*buildPlanRanch>"),--51
	localize("<*buildPlanBarrack>"),--52
	localize("<*buildPlanHorse>"),--53
	localize("<*buildPlanRange>"),--54
	localize("<*buildPlanElephant>"),--55
	localize("<*buildPlanTurret>"),--56
	localize("<*buildPlanDock>"),--57
	localize("<*buildPlanSiege>"),--58
	localize("<*buildPlanRanch>"),--59
	localize("<*buildPlanBarrack>"),--60
	localize("<*buildPlanRange>"),--61
	localize("<*buildPlanHorse>"),--62
	localize("<*buildPlanTurret>"),--63
	localize("<*buildPlanDock>"),--64
	localize("<*buildPlanSiege>"),--65
	localize("<*buildPlanSiege>"),--66
	localize("<*buildPlanForge>"),--67
	localize("<*buildPlanWall>"),--	--68 стена 2 европа
	"",--69
	"",--70
	localize("<*buildPlanWall>"),--	--71 стена 2 азия
	"",--72
	"",--73
	localize("<*buildPlanWall>"),--	--74 стена 3 зе
	"",--75
	"",--76
	localize("<*buildPlanWall>"),--	--77 стена 3 ве
	"",--78
	"",--79
	localize("<*buildPlanWall>"),--	--80 стена 3 за
	"",--81
	"",--82
	localize("<*buildPlanWall>"),--	--83 стена 3 ве
	"",--84
	"",--85
	localize("<*buildPlanHouse>"),--86
	localize("<*buildPlanStorage>"),--87
	localize("<*buildPlanFarm>"),--88
	localize("<*buildPlanBarrackAndRangeAndHorse>"),--89
	localize("<*buildPlanWorkshop>"),--90
	localize("<*buildPlanForge>"),--91
	localize("<*buildPlanTurret>"),--92
	localize("<*buildPlanSonic>"),--93
	localize("<*buildPlanForge>"),--94
	localize("<*buildPlanDock>"),--95
	localize("<*buildPlanMine>"),--96
	localize("<*buildPlanHouse>"),--97
	localize("<*buildPlanHouse>"),--98
	localize("<*buildPlanHouse>"),--99
	localize("<*buildPlanTurret> <*buildPlanBuiltOnWater>"),--100
	localize("<*buildPlanTurret>"),--101
	localize("<*buildPlanTurret>. <*buildPlanChosenOne>"),--102
	localize("<*buildPlanTurret>"),--103
	localize("<*buildPlanArtillery>"),--104
	localize("<*buildPlanHouse>"),--105
	localize("<*buildPlanForge>"),--106
	localize("<*buildPlanWorkshop>"), --107
	localize("<*buildPlanAirfield>"),--108
	localize("<*buildPlanHouse>"),--109
	localize("<*buildPlanHorse>"),--110
	localize("<*buildPlanAirDefence>"),--111
	localize("<*buildPlanAirDefence>"),--112
	localize("<*buildPlanHouse>"),--113
	localize("<*buildPlanHouse>"),--114
	localize("<*buildPlanRiceFarm>"),--115
	localize("<*buildPlanDeliveryStorage>"),--116
	localize("<*buildPlanRanch>"),--117
	localize("<*buildPlanHouse>"),--118
	localize("<*buildPlanHouse>"),--119
	localize("<*buildPlanStoneMine>"),--120
	localize("<*buildPlanSonic>"),--121
	localize("<*buildPlanHouse>"),--122
	"",--123
	"",--124
	"",--125
	"",--126
	""--127
}

function findImage(images, name)
	images.find = name
	if $lastResult == nil then
		log("Can't find image for '"..name.."'")
		return nil
	end
	id = $lastResult
	if id == nil or images.@id == nil then
		log("interface."..interfaceName..".content.image: No image with id="..id.." (name="..name..")")
	end
	return id
end

researchIcons = {}

local rs = gameplay.researches_list
local images = getInterface().content_image
for i = 1, rs.size do
	researchIcons[i] = findImage(images, "upgrade"..(i - 1)..".png")
end

envIcons = {
	[0]=0,[1]=0,[329]=0,[3]=0,[4]=0,[5]=0,[6]=0,[7]=0,[8]=0,[9]=0,[10]=0,[11]=0,[12]=0,[13]=0,[14]=0,[15]=0,[16]=0,[17]=0,[18]=0,[19]=0,[20]=0,[21]=0,[22]=0,[23]=0,[24]=0,[25]=0,[26]=0,[27]=0,[28]=0,[29]=0,[30]=0,[31]=0,[32]=0,[36]=0,[37]=0,[274]=0,[38]=0,[275]=0,[39]=0,[276]=0,[63]=0,[64]=0,[65]=0,[66]=0,[67]=0,[68]=0,[69]=0,[70]=0,[90]=0,[103]=0,[303]=0,[305]=0,[323]=0,[324]=0,[325]=0,[326]=0,[327]=0,[328]=0
}

tempAbilityIcons = {findImage(images, "tempAbility0.png"), findImage(images, "tempAbility1.png")}


for envId,data in pairs(envIcons) do
	envIcons[envId] = findImage(images, "env"..envId..".png")
end

unitsWorkIconText = {
	[54] = {[0]={envIcons[90],localize("<*unitOptionGrowWheat/0>"),localize("<*unitOptionGrowWheat/1>")}},
	[70] = {[0]={envIcons[90],localize("<*unitOptionGrowWheat/0>"),localize("<*unitOptionGrowWheat/1>")}},
	[95] = {[0]={envIcons[90],localize("<*unitOptionGrowWheat/0>"),localize("<*unitOptionGrowWheat/1>")}},
	[193] = {[0]={envIcons[90],localize("<*unitOptionGrowWheat/0>"),localize("<*unitOptionGrowWheat/1>")}},
	[339] = {[0]={envIcons[305],localize("<*unitOptionGrowRice/0>"),localize("<*unitOptionGrowRice/1>")}},
}

envResource = {
	[0]=0,[1]=0,[3]=1,[4]=1,[5]=1,[6]=1,[7]=1,[8]=1,[9]=1,[10]=1,[11]=1,[12]=1,[13]=1,[14]=1,[15]=1,[16]=1,[17]=1,[18]=1,[19]=1,[20]=1,[21]=1,[22]=1,[23]=1,[24]=1,[25]=1,[26]=1,[27]=1,[28]=1,[29]=1,[30]=1,[31]=1,[32]=1,[36]=0,[37]=2,[38]=1,[39]=2,[63]=1,[64]=1,[65]=1,[66]=1,[67]=1,[68]=1,[69]=0,[70]=0,[90]=0,[103]=0,[274]=2,[275]=1,[276]=2,[303]=1,[305]=0,[323]=1,[324]=1,[325]=1,[326]=1,[327]=1,[328]=1,[329]=0
}

unitIcons = {}

local ut = gameplay.unitType
for i = 1, ut.size do
	unitIcons[i] = findImage(images, "unit"..(i - 1)..".png")
end

hotKeyNames = {
	[32] = "Space",
	[39] = "'",
	[44] = ",",
	[45] = "-",
	[46] = ".",
	[47] = "/",
	[48] = "0",
	[49] = "1",
	[50] = "2",
	[51] = "3",
	[52] = "4",
	[53] = "5",
	[54] = "6",
	[55] = "7",
	[56] = "8",
	[57] = "9",
	[59] = ";",
	[61] = "=",
	[65] = "A",
	[66] = "B",
	[67] = "C",
	[68] = "D",
	[69] = "E",
	[70] = "F",
	[71] = "G",
	[72] = "H",
	[73] = "I",
	[74] = "J",
	[75] = "K",
	[76] = "L",
	[77] = "M",
	[78] = "N",
	[79] = "O",
	[80] = "P",
	[81] = "Q",
	[82] = "R",
	[83] = "S",
	[84] = "T",
	[85] = "U",
	[86] = "V",
	[87] = "W",
	[88] = "X",
	[89] = "Y",
	[90] = "Z",
	[91] = "[",
	[92] = "\\",
	[93] = "]",
	[96] = "~",
	[256] = "Esc",
	[257] = "Enter",
	[258] = "Tab",
	[259] = "Backspace",
	[260] = "Insert",
	[261] = "Delete",
	[262] = "Right",
	[263] = "Left",
	[264] = "Down",
	[265] = "Up",
	[266] = "Page up",
	[267] = "Page down",
	[268] = "Home",
	[269] = "End",
	[280] = "Caps lock",
	[281] = "Scroll lock",
	[282] = "Num lock",
	[283] = "Print screen",
	[284] = "Pause",
	[290] = "F1",
	[291] = "F2",
	[292] = "F3",
	[293] = "F4",
	[294] = "F5",
	[295] = "F6",
	[296] = "F7",
	[297] = "F8",
	[298] = "F9",
	[299] = "F10",
	[300] = "F11",
	[301] = "F12",
	[340] = "Shift",
	[341] = "Ctrl",
	[342] = "Alt",
	[344] = "Shift",
	[345] = "Ctrl",
	[346] = "Alt"
}

resourceIcons = {579, 580, 584, 582, 581} --0 еда / 1 материалы / 2 золото / 3 топливо / 4 металл


function toBool(v)
	if type(v) == "number" then return v ~= 0 end
	if type(v) == "string" then
		if v == "true" then return true end
		local n = tonumber(v)
		return n ~= nil and n ~= 0
	end
	return false
end

function getHotKey(hotKeyId)
	id = hotKeyId
	local keys = getInterface().hotKeys_list_@id_keys
	local sz = keys.size
	local key = keys.$0_value
	local result = hotKeyNames[key]
	for i = 2, sz do
		id = i - 1
		local key = keys.@id_value
		result = result.." + "..hotKeyNames[key]
	end
	return result
end

function getWidgetHotKey(nodes, widgetId)
	id = widgetId
	if nodes.@id_hotKey == nil then
		return ""
	else
		local key = nodes.@id_hotKey
		return getHotKey(key)
	end
end

function getEnvName(envTypes, envType)
	local nm = envNames[envType]
	if nm == nil then
		return envTypes.@envType_createTag
	else
		return nm
	end
end

function outCostDigit(showNode, digitNode, initCost, fullCost, hasRes, divider)
	showNode.visible = fullCost > 0
	local w = digitNode.widget
	w.text = fullCost // divider
	if hasRes >= fullCost then
		w.textColor_value = 0xffffffff
	else
		if hasRes >= initCost then
			w.textColor_value = 0xff00ffff
		else
			w.textColor_value = 0xff0000ff
		end
	end
end

function getNationName(id, firstPeriod)
	if id >= #nationNames then return "---" end
	local result = nationNames[id + 1]
	if #result == 2 then
		if firstPeriod then
			return result[1]
		else
			return result[2]
		end
	else
		return result
	end
end

function getUnitNationName(unitTypeId, firstPeriod)
	local nationId = unitNations[unitTypeId + 1]
	if nationId == nil then return "" end
	return getNationName(nationId, firstPeriod)
end

function updateMassTransformationWindowInfo(nodes, myFaction, statistics, firstPeriod)
	local unitTypeId
	local workId
	local num = 1
	local gameplay = $session_gameplay_gameplay

	if massUpdateMass then
		if massUpdateId == nil then return end
		if massUpdateId > #massUpdate then
			nodes.$328_visible = false
			massUpdateId = nil
			return
		end
		local data = massUpdate[massUpdateId]
		unitTypeId = data[1]
		workId = data[2]
		statistics.liveConstructed = unitTypeId
		local liveConstructed = $lastResult
		statistics.underTransformation = unitTypeId
		local underTransformation = $lastResult
		num = liveConstructed - underTransformation

		nodes.$548_widget_text = localize("<*upgradeUnit/1>")
	else
		nodes.$548_widget_text = localize("<*upgradeUnit/0>")
		local state = workButtonsState[9]
		if not state.show or currentSelectionUnitType == nil then
			nodes.$328_visible = false
			massUpdateId = nil
			return
		end
		local sel = currentSelectionUnitTypes[currentSelectionUnitType]
		unitTypeId = sel[1]
		assert(unitTypeId ~= nil)
		workId = state.workId

--___
id = unitTypeId
local fromUnit = gameplay.unitType_@id
id = workId
id = fromUnit.work_@id_ability
if fromUnit.ability_@id_type ~= 2 then
	log(unitTypeId, workId)
	log(workButtonsState)
	log(currentSelectionUnitTypes)
	assert(false)
end

		sel[2] = sel[2] - currentSelectionUnderTransformation
		num = sel[2]
	end

	id = unitTypeId
	local fromUnit = gameplay.unitType_@id
	if fromUnit == nil then return end
	
	id = workId
	local work = fromUnit.work_@id
	if work == nil then return end
	id = work.ability
	local ability = fromUnit.ability_@id
	assert(ability.type == 2)
	
	local nextUnitId = ability.data_unit
	id = nextUnitId
	local nextUnit = gameplay.unitType_@id

	nodes.$573_widget_text = unitNames[unitTypeId + 1]
	nodes.$756_widget_middle_set_normal = unitIcons[unitTypeId + 1]
	nodes.$594_widget_text = getUnitNationName(unitTypeId, firstPeriod)
	nodes.$80_visible = num > 1
	nodes.$80_widget_text = num

	nodes.$578_widget_text = unitNames[nextUnitId + 1]
	nodes.$711_widget_middle_set_normal = unitIcons[nextUnitId + 1]
	nodes.$709_widget_text = getUnitNationName(nextUnitId, firstPeriod)
	nodes.$125_visible = num > 1
	nodes.$125_widget_text = num

	nodes.$547_widget_text = work.makeTime // 1000

	local supply1 = 0
	if nextUnit.supplyOn then supply1 = nextUnit.supply_cost end
	local supply2 = 0
	if fromUnit.supplyOn then supply2 = fromUnit.supply_cost end
	local supply = supply1 - supply2
	if supply > 0 then
		nodes.$349_visible = true
		nodes.$536_widget_text = supply * num // 10
	else
		nodes.$349_visible = false
	end

	if ability.requirements_unit_size > 0 then
		nodes.$127_visible = true
		nodes.$228_widget_text = getListOfRequiredUnits(ability.requirements_unit, ability.requirements_unitsAll)
	else
		nodes.$127_visible = false
	end

	local costOrder = work.costOrder
	local costStart = work.costStart
	local costProcess = work.costProcess
	local i0 = costOrder.$0 + costStart.$0 + costProcess.$0
	local i1 = costOrder.$1 + costStart.$1 + costProcess.$1
	local i2 = costOrder.$2 + costStart.$2 + costProcess.$2
	id = $session_visual_currentFaction
	local sFaction = gameplay.scene_0_faction_@id
	local resources = sFaction.treasury_resources
	local r0 = resources.$0
	local r1 = resources.$1
	local r2 = resources.$2

	outCostDigit(nodes.$350, nodes.$530, i0, i0 * num, r0, 1000)
	outCostDigit(nodes.$351, nodes.$457, i1, i1 * num, r1, 1000)
	outCostDigit(nodes.$352, nodes.$383, i2, i2 * num, r2, 1000)
end

workButtonsState = {
	{ show = false, workId = 0 },
	{ show = false, workId = 0 },
	{ show = false, workId = 0 },
	{ show = false, workId = 0 },
	{ show = false, workId = 0 },
	{ show = false, workId = 0 },
	{ show = false, workId = 0 },
	{ show = false, workId = 0 },
	{ show = false, workId = 0 }
}

function getUnitWorkIconText(unitTypeId, workId)
	local workIconText = unitsWorkIconText[unitTypeId]
	if workIconText == nil then return nil end
	return workIconText[workId]
end

function isResearchReadyForStart(researchesState, researchId)
	local size = researchesState.size
	if researchId >= size then return true end
	id = researchId
	local researchState = researchesState.@id
	local quantityLimit = $session_gameplay_gameplay_researches_list_@id_quantity
	return not researchState.inProcess and researchState.quantity < quantityLimit
end

function isResearchCompleteF(researchesState, researchId)
	if researchId >= researchesState.size then return false end
	id = researchId
	local researchState = researchesState.@id
	return researchState.quantity > 0
end

function isResearchComplete(faction, research)
	local factions = $session_gameplay_gameplay_faction
	id = faction
	local researchesState = factions.@id_researchState
	return isResearchCompleteF(researchesState, research)
end

function haveRequiredUnit(requirement, statistics, noMax)
	local ru = requirement.type
	local min = requirement.min
	local max = requirement.max
	statistics.liveConstructed = ru
	local live = $lastResult
	return live >= min and (noMax or live <= max)
end

function haveRequiredUnitsAny(requirements, statistics)
	local sz = requirements.size
	for i = 1, sz do
		id = i - 1
		if haveRequiredUnit(requirements.@id, statistics, sz >= 5) then return true end
	end
	return false
end

function haveRequiredUnitsAll(requirements, statistics)
	local sz = requirements.size
	for i = 1, sz do
		id = i - 1
		if not haveRequiredUnit(requirements.@id, statistics, sz >= 5) then return false end
	end
	return true
end

function haveRequiredUnits(requirements, all, statistics)
	if all then
		return haveRequiredUnitsAll(requirements, statistics)
	else
		return haveRequiredUnitsAny(requirements, statistics)
	end
end

function haveRequiredResearchesAny(requirements, researchState)
	local sz = requirements.size
	if sz == 0 then return true end
	for i = 1, sz do
		id = i - 1
		local o = requirements.@id
		if isResearchCompleteF(researchState, o.id) then return true end
	end
	return false
end

function haveRequiredResearchesAll(requirements, researchState)
	local sz = requirements.size
	for i = 1, sz do
		id = i - 1
		local o = requirements.@id
		if not isResearchCompleteF(researchState, o.id) then return false end
	end
	return true
end

function haveRequiredResearches(requirements, all, researchState)
	if all then
		return haveRequiredResearchesAll(requirements, researchState)
	else
		return haveRequiredResearchesAny(requirements, researchState)
	end
end

function haveRequiredAll(requirements, statistics, researchState)
	return haveRequiredResearches(requirements.research, requirements.researchesAll, researchState) and haveRequiredUnits(requirements.unit, requirements.unitsAll, statistics)
end

function showWorkButtonSpecial(nodes, buttonId, unitType, icon)
	specialAbilities[buttonId] = unitType

	id = workButtonBlocks[buttonId]
	local n = nodes.@id
	n.visible = true
	n.disabled = false
	
	id = workReservePanels[buttonId]
	nodes.@id_visible = false

	id = workButtons[buttonId]
	local set = nodes.@id_widget_middle_set
	set.normal = icon
	set.disabled = icon
end

function showWorkButton(nodes, myFaction, statistics, reserve, reserveProgress, unitTypeId, unitType, buttonId, workId, finalAge)
	local show = false
	local disabled = true
	local continue = true

	if workId < unitType.work_size then
		id = workId
		local work = unitType.work_@id
		id = work.ability
		local ability = unitType.ability_@id
		local requirements = ability.requirements
		
		local hasReserve = work.reserveLimit > 0
		
		id = workReservePanels[buttonId]
		if id ~= nil then
			nodes.@id_visible = hasReserve
			
			if hasReserve then
				workReserveNumber = workReserveNumbers[buttonId]
				nodes.@workReserveNumber_widget_text = reserve
			end
		end
		
		local enabledE = work.enabled
		local enabledR = haveRequiredResearches(requirements.research, requirements.researchesAll, myFaction.researchState)
		local enabledU = haveRequiredUnits(requirements.unit, requirements.unitsAll, statistics)
		local enabledSum = enabledE and enabledR and enabledU

		id = workReserveProgress[buttonId]
		if id ~= nil then
			local node = nodes.@id
			if hasReserve and reserve == 0 and enabledSum then
				node.widget_current = reserveProgress * 100 // work.reserveTime
				node.visible = true
			else
				node.visible = false
			end
		end
	
		local available = true
		local normalIcon = nil
		local disabledIcon = nil
	
		local abilityType = ability.type
		if abilityType == 0 then --training
			workObject = ability.data_unit
			show = enabledR
			continue = not enabledSum
			normalIcon = unitIcons[workObject + 1]
			disabledIcon = unitIcons[workObject + 1]
		elseif abilityType == 1 then --research
			workObject = ability.data_research
			continue = not enabledR
			if isResearchReadyForStart(myFaction.researchState, workObject) then
				show = enabledR-- and enabledU
				
				if show then
					local h = hideResearchOnFinalAge[workObject]
					if h ~= nil then show = h < finalAge end
				end

				available = not myFaction.researchesUnavailable_@workObject

				local icon = researchIcons[workObject + 1]
				normalIcon = icon
				disabledIcon = icon
			end
		elseif abilityType == 2 then --transformation
			workObject = ability.data_unit
			show = enabledE and enabledR
			continue = not show
			normalIcon = unitIcons[workObject + 1]
			disabledIcon = unitIcons[workObject + 1]
		else --envsCreate
			workObject = ability.data_id
			continue = not enabledSum
			show = true
			normalIcon = 286
			disabledIcon = 286
		end


		disabled = not enabledSum or not available

		if show then
			id = workButtonBlocks[buttonId]
			local nodeButton = nodes.@id

			nodeButton.visible = true

			local state = workButtonsState[buttonId]
			assert(state ~= nil)
			state.workId = workId
			state.show = true
		
			id = workButtons[buttonId]
			local set = nodes.@id_widget_middle_set

			set.normal = normalIcon
			set.disabled = disabledIcon

			nodeButton.disabled = disabled

			id = workUnavailableIcon[buttonId]
			if id ~= nil then
				nodes.@id_visible = not available
			end
		
			local iconText = getUnitWorkIconText(unitTypeId, workId)
			if iconText ~= nil then
				set.normal = iconText[1]
				set.disabled = iconText[1]
			end
		end
	end
	
	return {show, disabled, continue}
end

function forEachPlayerFaction(player, func)
	assert(player < 64)
	id = player
	local facs = $session_gameplay_gameplay_player_@id_controlledFactions
	assert(facs ~= nil)
	for faction = 0, 63 do
		id = faction
		if facs.@id then
			func(faction)
		end
	end
end

function showUnitTypeInfo()
	if currentSelectionUnitType == nil then return end

	local nodes = getNodes()
	local selectionList = $session_visual_scene_0_selection_units_list
	if selectionList.size == 0 then return end

	id = selectionList.$0_id
	local gUnit = $session_gameplay_gameplay_scene_0_unit_@id
	if gUnit == nil or gUnit.instanceId ~= selectionList.$0_instance then return end

	shownUnitTypeInfo = currentSelectionUnitTypes[currentSelectionUnitType][1]
	
	id = gUnit.typeModified
	local unitType = $session_gameplay_gameplay_unitTypeModified_@id
	assert(unitType ~= nil)

	if unitType.movementOn then
		nodes.$1072_visible = true
		nodes.$1053_widget_text = unitType.movement_moveSpeed
	else
		nodes.$1072_visible = false
	end

	if unitType.transportingOn then
		nodes.$241_visible = true
		nodes.$246_widget_text = unitType.transporting_volume
	else
		nodes.$241_visible = false
	end

	if unitType.transportOn then
		nodes.$675_visible = true
		nodes.$653_widget_text = unitType.transport_volume
	else
		nodes.$675_visible = false
	end

	if unitType.airplaneOn then
		local fuel = unitType.airplane_fuel
		nodes.$1405_visible = fuel > 0
		if fuel > 0 then
			nodes.$1404_widget_text = localize("<*timerSec/0>")..(fuel // 1000)..localize("<*timerSec/1>")
		end
	else
		nodes.$1405_visible = false
	end

	nodes.$1009_visible = unitType.openFows_1
	nodes.$1029_visible = unitType.hiddenInFows_1

	
	-- ARMOR

	local sz = {0, 0, 0, 0}
	local tickness = {0, 0, 0, 0}
		
	if unitType.armor_type ~= 2 then
		sz[1] = 1
	else
		local armor = unitType.armor_data
		local armors = armor.size
		for i = 1, armors do
			id = i - 1
			local a = armor.@id
			sz[i] = a.probability
			tickness[i] = a.object_tickness
		end
	end

	local szs = sz[1] + sz[2] + sz[3] + sz[4]
	if szs == 0 then szs = 1 end

	local armorBarSize = 220 * interfaceScale

	local gsz0 = math.floor(armorBarSize * sz[1] / szs)
	local gsz1 = math.floor(armorBarSize * sz[2] / szs)
	local gsz2 = math.floor(armorBarSize * sz[3] / szs)
	local gsz3 = math.floor(armorBarSize * sz[4] / szs)

	local left0 = nodes.$6_localLeft
	local left1 = left0 + gsz0
	local left2 = left1 + gsz1
	local left3 = left2 + gsz2

	function setSizeX(node, size)
		if size <= 0 then
			node.visible = false
		else
			node.visible = true
			node.sizeX = size
		end
	end

	setSizeX(nodes.$6, gsz0)
	nodes.$56_localLeft = left1
	setSizeX(nodes.$56, gsz1)
	nodes.$98_localLeft = left2
	setSizeX(nodes.$98, gsz2)
	nodes.$99_localLeft = left3
	setSizeX(nodes.$99, gsz3)

	if gsz0 < 20 then
		left0 = left0 - (20 - gsz0)
		gsz0 = 20
	end

	nodes.$261_widget_text = (sz[1] * 100 // szs).."%"
	nodes.$261_localLeft = left0
	setSizeX(nodes.$261, gsz0)

	nodes.$362_widget_text = (sz[2] * 100 // szs).."%"
	nodes.$362_localLeft = left1
	setSizeX(nodes.$362, gsz1)

	nodes.$363_widget_text = (sz[3] * 100 // szs).."%"
	nodes.$363_localLeft = left2
	setSizeX(nodes.$363, gsz2)

	nodes.$364_widget_text = (sz[4] * 100 // szs).."%"
	nodes.$364_localLeft = left3
	setSizeX(nodes.$364, gsz3)


	nodes.$388_widget_text = tickness[1] // 1000
	nodes.$388_localLeft = left0
	setSizeX(nodes.$388, gsz0)
	
	nodes.$387_widget_text = tickness[2] // 1000
	nodes.$387_localLeft = left1
	setSizeX(nodes.$387, gsz1)
	
	nodes.$366_widget_text = tickness[3] // 1000
	nodes.$366_localLeft = left2
	setSizeX(nodes.$366, gsz2)
	
	nodes.$365_widget_text = tickness[4] // 1000
	nodes.$365_localLeft = left3
	setSizeX(nodes.$365, gsz3)

	local av = (sz[1] * tickness[1] + sz[2] * tickness[2] + sz[3] * tickness[3] + sz[4] * tickness[4]) // szs
	nodes.$1391_widget_text = (av // 1000).."."..(av // 100 % 10)


	-- WEAPONS

	local weaponId = 0

	if shownUnitTypeInfo ~= 15 then
		local function getDamageStr(damage, attacksPerAttack)
			if damage == nil then return "0" end
			if attacksPerAttack > 1 then return (damage // 1000).." x "..attacksPerAttack end
			return tostring(damage // 1000)
		end

		local function showWeapon(weapon)
			if weaponId == #weaponBlock then return end
			weaponId = weaponId + 1
			widgetId = weaponBlock[weaponId]
			nodes.@widgetId_visible = true

			local damage = weapon.damage
			local damages = damage.damages
			
			local attacksCount = weapon.attacksPerAttack * weapon.attacksPerAction * damage.damagesCount
			widgetId = weaponDamageValue[weaponId]
			
			nodes.@widgetId_widget_text = getDamageStr(damages.$0, attacksCount)

			if weaponId > #weaponTypedDamage then return end
			local wtd = weaponTypedDamage[weaponId]
		
			local n = 0	
			for j = 1, 30 do
				id = j
				local dmg = damages.@id
				if dmg ~= nil and ((j ~= 14 and j ~= 20) or dmg ~= 0) then
					n = n + 1
					if n <= #wtd then
						local typedDamage = wtd[n]

						widgetId = typedDamage[1]
						nodes.@widgetId_visible = true

						widgetId = typedDamage[2]
						nodes.@widgetId_widget_set_normal = weaponUnitTagIcon[n]

						widgetId = typedDamage[3]
						nodes.@widgetId_widget_text = unitTags[j]
						
						widgetId = typedDamage[4]
						nodes.@widgetId_widget_text = getDamageStr(dmg, attacksCount)
					end
				end
			end
			
			id = specialDamage[weaponId]
			nodes.@id_visible = n > 0		
			
			for j = n + 1, 3 do
				local typedDamage = weaponTypedDamage[weaponId][j]
				widgetId = typedDamage[1]
				nodes.@widgetId_visible = false
			end
			
			widgetId = weaponAdvancedInfo[weaponId]
			nodes.@widgetId_visible = true

			widgetId = weaponIcon[weaponId]
			local wi = unitsWeaponIcon[shownUnitTypeInfo]
			local set = nodes.@widgetId_widget_set
			if wi == nil then
				set.normal = 286
			else
				wi = wi[weaponId]
				if wi == nil then
					set.normal = 286
				else
					set.normal = wi
				end
			end

			local area = damage.area
			widgetId = weaponDamageType[weaponId]
			local widget = nodes.@widgetId_widget
			if area == 0 then widget.text = localize("<*damageArea/0>")
			elseif area == 1 then widget.text = localize("<*damageArea/1>")
			elseif area == 2 then widget.text = localize("<*damageArea/2>")
			end
			
			local rechargePeriod = weapon.rechargePeriod
			widgetId = weaponRechargeTime[weaponId]
			nodes.@widgetId_widget_text = (rechargePeriod // 1000).."."..(rechargePeriod // 100 % 10)

			local spread = weapon.spread
			widgetId = weaponSpread[weaponId][1]
			if spread == 0 then
				nodes.@widgetId_visible = false
			else
				nodes.@widgetId_visible = true
				widgetId = weaponSpread[weaponId][2]
				nodes.@widgetId_widget_text = (weapon.spread // 10).."%"
			end

			widgetId = weaponDistance[weaponId]
			local distMin = weapon.distanceMin
			if distMin == 0 then
				nodes.@widgetId_widget_text = weapon.distanceMax // 1000
			else
				nodes.@widgetId_widget_text = (distMin // 1000).." - "..(weapon.distanceMax // 1000)
			end
		end

		local weaponsNumber = unitType.weapon_size
		for i = 1, weaponsNumber do
			id = i - 1
			local weapon = unitType.weapon_@id
			showWeapon(weapon)
		end

		local turretsNumber = unitType.turret_size
		for i = 1, turretsNumber do
			id = i - 1
			local weapons = unitType.turret_@id_weapon
			local weaponsNumber = weapons.size
			for i = 1, weaponsNumber do
				id = i - 1
				local weapon = weapons.@id
				showWeapon(weapon)
			end
		end
	end
	
	local parent = nodes.$114
	local widget = nodes.$193
	widget.visible = true
	widget.sizeY = math.floor((160 + weaponId * 120) * interfaceScale)
	widget.localLeft = parent.screenLeft - 10
	widget.localTop = parent.screenTop - widget.sizeY - 10

	for i = weaponId + 1, 5 do
		id = weaponBlock[i]
		nodes.@id_visible = false
	end
end

function cameraToMinimap(x, y, minimapWidget)
	local nodes = getNodes()
	local sz = $session_visual_scene_0_landscape_size
	id = minimapWidget
	local n = nodes.@id
	local lx = sz.x * (1 - x / n.sizeX)
	local ly = sz.y * (y / n.sizeY)
	$session_visual_scene_0_cameraShowPosition = {lx, ly}
end

function getAgeFactionIndustrial(researchesState, default)
	if isResearchCompleteF(researchesState, 93) then return {6, 8} end
	if isResearchCompleteF(researchesState, 59) then return {5, 8} end
	if isResearchCompleteF(researchesState, 114) then return {6, 9} end
	if isResearchCompleteF(researchesState, 64) then return {5, 9} end
	if isResearchCompleteF(researchesState, 115) then return {6, 10} end
	if isResearchCompleteF(researchesState, 68) then return {5, 10} end
	if isResearchCompleteF(researchesState, 116) then return {6, 11} end
	if isResearchCompleteF(researchesState, 67) then return {5, 11} end
	if isResearchCompleteF(researchesState, 118) then return {6, 12} end
	if isResearchCompleteF(researchesState, 63) then return {5, 12} end
	if isResearchCompleteF(researchesState, 121) then return {6, 13} end
	if isResearchCompleteF(researchesState, 65) then return {5, 13} end
	if isResearchCompleteF(researchesState, 125) then return {6, 14} end
	if isResearchCompleteF(researchesState, 62) then return {5, 14} end
	if isResearchCompleteF(researchesState, 126) then return {6, 15} end
	if isResearchCompleteF(researchesState, 70) then return {5, 15} end
	if isResearchCompleteF(researchesState, 131) then return {6, 16} end
	if isResearchCompleteF(researchesState, 73) then return {5, 16} end
	if isResearchCompleteF(researchesState, 135) then return {6, 17} end
	if isResearchCompleteF(researchesState, 72) then return {5, 17} end
	if isResearchCompleteF(researchesState, 136) then return {6, 18} end
	if isResearchCompleteF(researchesState, 61) then return {5, 18} end
	return {4, default}
end

function getUnit(units, unitId, instanceId)
	id = unitId
	local target = units.@id
	if instanceId ~= nil and (target == nil or target.instanceId ~= instanceId) then return nil end
	return target
end

function getUnitI(units, instancedId)
	id = instancedId.id
	local target = units.@id
	if target == nil or target.instanceId ~= instancedId.instance then return nil end
	return target
end

function getEnvI(envs, instancedId)
	id = instancedId.id
	local target = envs.@id
	if target == nil or target.instanceId ~= instancedId.instance then return nil end
	return target
end

function getAgeFaction(faction)
	local factions = $session_gameplay_gameplay_faction
	id = faction
	local researchesState = factions.@id_researchState

	if isResearchCompleteF(researchesState, 3) then
		if not isResearchCompleteF(researchesState, 1) then return {1, 2} end
		if isResearchCompleteF(researchesState, 5) then
			if not isResearchCompleteF(researchesState, 15) then return {3, 4} end
			return getAgeFactionIndustrial(researchesState, 4)
		end
		if isResearchCompleteF(researchesState, 6) then
			if not isResearchCompleteF(researchesState, 9) then return {3, 5} end
			return getAgeFactionIndustrial(researchesState, 5)
		end
		return {2, 2}
	end
	
	if isResearchCompleteF(researchesState, 4) then
		if not isResearchCompleteF(researchesState, 2) then return {1, 3} end
		if isResearchCompleteF(researchesState, 7) then
			if not isResearchCompleteF(researchesState, 16) then return {3, 6} end
			return getAgeFactionIndustrial(researchesState, 6)
		end
		if isResearchCompleteF(researchesState, 8) then
			if not isResearchCompleteF(researchesState, 17) then return {3, 7} end
			return getAgeFactionIndustrial(researchesState, 7)
		end
		return {2, 3}
	end

	return {0, 1}
end

function setFlagColor(set, color)
	set.normalColor_value = color
	set.hoveredColor_value = color
	set.pressedColor_value = color
end

function toTimeStr(value)
	if value < 3600 then
		local min = value // 60
		local sec = value % 60
		return string.format(strTimeH0.."%u"..strTimeH1.."%02d"..strTimeH2, min, sec)
	end
	if value < 86400 then
		local hour = value // 3600
		local min = value % 3600 // 60
		local sec = value % 60
		return string.format(strTimeD0.."%u"..strTimeD1.."%02d"..strTimeD2.."%02d"..strTimeD3, hour, min, sec)
	end
	local day = value // 86400
	local hour = value % 86400 // 3600
	return string.format(strTimeL0.."%u"..strTimeL1.."%02d"..strTimeL2, day, hour)
end

function getRelation(relations, fromFaction, toFaction)
	id = fromFaction
	local f = relations.@id
	id = toFaction
	return f.@id_value
end

function getPlayerNameFont(player)
	if playerNames == nil then return {"Noname", fonts.en} end
	local name = playerNames[player + 1]
	if name == nil then return {"Noname", fonts.en} end
	return {name, playerFonts[player + 1]}
end

function writePlayerToWidget(player, widget, textColor, strokeColor)
	local plnf = getPlayerNameFont(player)
	widget.text = plnf[1]
	widget.fontName = plnf[2]
	if textColor ~= nil then widget.textColor_value = textColor end
	if strokeColor ~= nil then widget.strokeColor_value = strokeColor end
end

function writePlayerToWidget_(player, widget)
	local col = getPlayerColor(player)
	writePlayerToWidget(player, widget, col[1], col[2])
end

function canShow(scene, x, y, myFaction)
	if not $session_visual_scene_0_hideInFogOfWar then return true end
	scene.checkFow = {x, y, myFaction}
	return $lastResult
end

function canShowUnit(scene, unit, unitType, myFaction)
	if not $session_visual_scene_0_hideInFogOfWar then return true end
	local rel = getRelation(scene.relation, myFaction, unit.faction)
	if rel == 1 then return true end
	scene.checkFow = {unit.position_x, unit.position_y, myFaction, unitType.hiddenInFows_value}
	return $lastResult
end

attackPriorityLimitZero = false
attackPriorityLimitHigh = false
buttonAttackMove = false
buttonAttackGround = false
attackGroundList = {}
buttonUnload = false
unloadToPosition = false
buttonStop = false
danceUnitTypes = {}
buttonGatherLast = false
unitsShowWork = false
showingUnitsInTransport = false

function getAttackGround(unitTypeId, unitType)
	local ag = unitsAttackGroundWeapon[unitTypeId]
	if ag ~= nil then
		if ag == 0 then return 0 end
		return ag[1] * 100 + ag[2]
	end
	local weapons = unitType.weapon
	if weapons.size == 0 then return 0 end
	if weapons.$0_enabled then
		local damage = weapons.$0.damage
		local area = damage.area
		if area == 1 or (area == 2 and damage.radius >= 50000) then return 1 end
	end
	return 0
end

function blockedPath(landscape, x1, y1, x2, y2)
	landscape.calcPath = {x1, y1, x2, y2, 106}
	res = $a_lastResult
	if res[1] == "3" then return false end
	if res[1] ~= "4" then return true end
	local xx = tonumber(res[2])
	local yy = tonumber(res[3])
	local dx = xx - x1
	local dy = yy - y1
	local d = dx * dx + dy * dy
	return d < 1000000000000
end

function forEachWeaponW(weapons, weaponTypes, func)
	assert(weapons ~= nil)
	assert(weaponTypes ~= nil)
	local weaponsNum = weapons.size
	for i = 1, weaponsNum do
		id = i - 1
		local weapon = weapons.@id
		local weaponType = weaponTypes.@id
		func(weapon, weaponType)
	end
end

function forEachWeapon(gUnit, unitType, func)
	local weapons = gUnit.weapon
	local weaponTypes = unitType.weapon
	forEachWeaponW(weapons, weaponTypes, func)

	local function funcT(turret, turretType)
		local weapons = turret.weapon
		local weaponTypes = turretType.weapon
		forEachWeaponW(weapons, weaponTypes, func)
	end

	forEachTurret(gUnit, unitType, funcT)
end

function forEachTurret(gUnit, unitType, func)
	local turrets = gUnit.turret
	if turrets == nil then return end
	local turretsNum = turrets.size
	local turretTypes = unitType.turret

	for i = 1, turretsNum do
		id = i - 1
		local turret = turrets.@id
		local turretType = turretTypes.@id
		func(turret, turretType)
	end
end

function showEnvSelection()
	local nodes = getNodes()
	local vSession = $session_visual
	local gameplay = $session_gameplay_gameplay
	local scene = gameplay.scene_0

	currentSelectionUnitType = nil
	currentSelectionUnitFaction = nil
	
	nodes.$22_visible = false
	nodes.$423_visible = false
	nodes.$679_visible = false

	local env = getEnvI(scene.env, vSession.scene_0_selection_env)
	if env ~= nil then
		local gx = env.position_x
		local gy = env.position_y
		local myFactionId = vSession.currentFaction
		if canShow(scene, gx, gy, myFactionId) then
			envType = env.type
			local icon = envIcons[envType]

			nodes.$19_visible = true

			nodes.$330_widget_text = getEnvName(gameplay.envType, envType)

			local resource = envResource[envType]
			if resource ~= nil then
				nodes.$36_visible = true
				nodes.$247_widget_set_normal = resourceIcons[resource + 1]
				local h = env.health
				if h > 0 and h < 1000 then h = 1000 end
				nodes.$248_widget_text = h // 1000
			else
				nodes.$36_visible = false
			end
			
			if icon ~= nil then
				nodes.$327_visible = true
				nodes.$327_widget_middle_set_normal = icon
			else
				nodes.$327_visible = false
			end
		else
			nodes.$19_visible = false
		end
	else
		nodes.$19_visible = false
	end
end

function updateUnitButtonsState(isMyFaction, gUnit, unitTypeId, unitType)
	if not isMyFaction or not unitType.controllable then return end

	local movable = unitType.movementOn
	local battleUnit = (unitType.weapon_size > 0 or unitType.turret_size > 0)
	buttonAttackMove = buttonAttackMove or (movable and battleUnit)
	if battleUnit then
		if gUnit.attackPriorityLimit == 0 then
			attackPriorityLimitZero = true
		else
			attackPriorityLimitHigh = true
		end
	end
	
	local ag = getAttackGround(unitTypeId, unitType)
	buttonAttackGround = buttonAttackGround or ag ~= 0
	if ag ~= 0 then attackGroundList[unitTypeId] = ag end
	
	local transporting = gUnit.transportingUnits_size > 0
	buttonUnload = buttonUnload or transporting
	unloadToPosition = unloadToPosition or (transporting and movable)
	buttonStop = buttonStop or gUnit.task_size > 0
	
	if unitType.danceDuration > 0 and unitCanDance[unitTypeId] then danceUnitTypes[unitTypeId] = true end
	buttonGatherLast = buttonGatherLast or gUnit.hasLastGather
end

function showOneUnitSelection()
	local nodes = getNodes()
	local vSession = $session_visual
	local selectionUnit = vSession.scene_0_selection_units_list_0
	local gameplay = $session_gameplay_gameplay
	local scene = gameplay.scene_0
	local units = scene.unit
	local gUnit = getUnitI(units, selectionUnit)
	currentSelectionUnitType = nil
	currentSelectionUnitFaction = nil
	currentSelectionNum = 0

	if gUnit == nil or gUnit.state < 3 or gUnit.presence == 2 then
		nodes.$484_visible = false
		unitsShowWork = false
	else
		faction = gUnit.faction
		local myFactionId = vSession.currentFaction
		local isMyFaction = (faction == myFactionId) or isModeReplay
		
		id = gUnit.typeModified
		local unitType = gameplay.unitTypeModified_@id
		assert(unitType ~= nil)

		if not isMyFaction and not canShowUnit(scene, gUnit, unitType, myFactionId) then
			nodes.$484_visible = false
			unitsShowWork = false
		else
			local unitTypeId = gUnit.type
			local unitTypeModifiedId = gUnit.typeModified
			
			if unitTypeId ~= 331 and unitTypeId ~= 332 and unitTypeId ~= 335 and unitTypeId ~= 336 then
				local at = gUnit.attachedAirplane
				local ats = at.size
				local sum = ats
				if ats > 0 then
					for i = 0, ats-1 do
						id = i
						if at.@id_id ~= nil then sum = sum - 1 end
					end
				end
				if ats > 0 and sum == 0 then unitsShowWork = false end
			end
		
			updateUnitButtonsState(isMyFaction, gUnit, unitTypeId, unitType)

			nodes.$22_visible = not buttonUnload

			if buttonUnload then
				nodes.$679_visible = true
				showingUnitsInTransport = true
			end

			currentSelectionUnitType = unitTypeModifiedId
			currentSelectionUnitFaction = faction
			currentSelectionNum = 1

			if (not isMyFaction or isModeReplay) and faction > 1 then
				local n = nodes.$988
				n.visible = true
				local w = n.widget
				local rel = getRelation(scene.relation, myFactionId, faction)
				local pl = getPlayerOfFaction(faction)
				if pl ~= nil then
					writePlayerToWidget(pl, w, teamsColors[rel + 1][1])
					if rel == 1 then
						nodes.$713_visible = true
					elseif rel == 2 then
						nodes.$290_visible = true
					end
				else
					n.visible = false
				end
			else
				nodes.$988_visible = false
			end

			currentSelectionUnitTypes[unitTypeModifiedId] = {unitTypeId, 1}

			local nation = unitNations[unitTypeId + 1]
			nodes.$24_widget_text = unitNames[unitTypeId + 1]
			if nation == nil then
				nodes.$252_widget_text = ""
			else
				local actualEra = getAgeFaction(faction)[1]
				nodes.$252_widget_text = getNationName(nation, actualEra % 2 == 1)
			end

			local killsCounter = gUnit.killsCounter
			nodes.$1001_visible = killsCounter > 0
			nodes.$1003_widget_text = killsCounter
			
			local curHealth = gUnit.health
			if curHealth > 0 and curHealth < 1000 then curHealth = 1000 end
			local maxHealth = unitType.health
						
			nodes.$71_visible = true
			if showFullHealth then
				nodes.$25_widget_text = (curHealth // 1000).." / "..(maxHealth // 1000)
			else
				nodes.$25_widget_text = curHealth // 1000
			end		

			nodes.$71_widget_current = curHealth * 100 // maxHealth

			nodes.$168_visible = false

			for i = 1, #workQueueButtons do
				id = workQueueButtons[i]
				nodes.@id_visible = false
			end
		
			if gUnit.state == 3 then
				-- UNDER CONSTRUCTION
				
				danceUnitTypes = {}
				buttonGatherLast = false
				buttonStop = false
				buttonAttackGround = false
				buttonAttackMove = false
				attackPriorityLimitZero = false
				attackPriorityLimitHigh = false
				buttonUnload = false
				unitsShowWork = false
				
				if isMyFaction then
					nodes.$423_visible = true
					nodes.$35_visible = false
				
					local buildingProgress = gUnit.buildingProgress * 1000 // 8388608
					nodes.$389_widget_text = (buildingProgress // 10).." %"
					nodes.$390_widget_current = buildingProgress
				end
			else
				-- JUST UNIT

				if isMyFaction and gUnit.bag_amount > 999 and unitTypeId_ ~= 301 then
					nodes.$35_visible = true
					nodes.$39_widget_set_normal = resourceIcons[gUnit.bag_resource + 1]
					nodes.$86_widget_text = gUnit.bag_amount // 1000
				else
					nodes.$35_visible = false
				end

				local storage = unitType.storageMultiplier
				nodes.$34_visible = (storage ~= 0)
				if storage ~= 0 then
					nodes.$33_widget_text = (storage * 100 // 65536).." %"
					
					for j = 1, #storageBoxes do
						local g = 65536 * (1 + j / 10)
						id = storageBoxes[j]
						nodes.@id_visible = storage >= g
					end
				end
				
				if gUnit.state >= 4 and isMyFaction then
					if not buttonUnload then
						-- ACTUAL TASK
				
						local tasks = gUnit.task
						if tasks.size > 0 then
							local task = tasks.$0
							local data = task.data
							local taskType = task.type
							if taskType == 0 or taskType == 1 or taskType == 17 then
								if task.strict then
									nodes.$739_visible = true
								else
									nodes.$546_visible = true
								end
								taskPositionX = data.position_x
								taskPositionY = data.position_y
							elseif taskType == 12 then
								nodes.$1119_visible = true
								taskPositionX = data.position_x
								taskPositionY = data.position_y
							elseif taskType == 2 then
								local targetId = data.target
								local unit = getUnitI(units, targetId)
								if unit ~= nil then
									local weaponId = data.weapon
									nodes.$735_visible = true
									taskPositionX = unit.position_x
									taskPositionY = unit.position_y
									id = unit.typeModified
									local unitType = gameplay.unitTypeModified_@id
									nodes.$750_widget_middle_set_normal = unitIcons[unit.type + 1]
									local color = getFactionColor(unit.faction)[1]
									setFlagColor(nodes.$753_widget_set, color)
									nodes.$754_widget_current = unit.health * 100 // unitType.health

									scene.unit_averageDamage = {selectionUnit.id, targetId.id}
									local dmg = $lastResult
									if dmg < 10000 then
										nodes.$748_widget_text = (dmg // 1000).."."..(dmg // 100 % 10)
									else
										nodes.$748_widget_text = dmg // 1000
									end

									scene.unit_hitChance = {selectionUnit.id, targetId.id, weaponId}
									local chance = $lastResult
									if chance < 100 then
										nodes.$1399_widget_text = (chance // 10).."."..(chance % 10).."%"
									else
										nodes.$1399_widget_text = (chance // 10).."%"
									end
								end
							elseif taskType == 3 then
								planId = data.plan
								local plan = scene.faction_buildPlan_@planId
								if plan ~= nil then
									nodes.$738_visible = true
									rule = plan.rule
									taskPositionX = plan.position_x
									taskPositionY = plan.position_y
									id = gameplay.build_@rule_unit
									nodes.$762_widget_middle_set_normal = unitIcons[id + 1]
									local color = getFactionColor(faction)[1]
									setFlagColor(nodes.$776_widget_set, color)
									nodes.$764_widget_current = 0
								end
							elseif taskType == 4 then
								local unit = getUnitI(units, data.target)
								if unit ~= nil then
									nodes.$738_visible = true
									taskPositionX = unit.position_x
									taskPositionY = unit.position_y
									nodes.$762_widget_middle_set_normal = unitIcons[unit.type + 1]
									local color = getFactionColor(unit.faction)[1]
									setFlagColor(nodes.$776_widget_set, color)
									nodes.$764_widget_current = unit.buildingProgress * 100 // 8388608
								end
							elseif taskType == 5 and unitTypeId_ ~= 301 then
								local envId = data.target
								local env = getEnvI(scene.env, envId)
								if env ~= nil then
									nodes.$736_visible = true
									taskPositionX = env.position_x
									taskPositionY = env.position_y
									envTypeId = env.type
									local envType = gameplay.envType_@envTypeId
									nodes.$755_widget_middle_set_normal = envIcons[envTypeId]
									nodes.$774_widget_current = env.health * 100 // envType.health
									
									nodes.$784_widget_text = "---"
									local targetTags = data.targetTags_value
									local gather = unitType.gather
									for i = 1, gather.size do
										id = i - 1
										local tags = gather.@id_envTags_value
										if (tags & targetTags) > 0 then
											local val = gather.@id_perTick * 20
											nodes.$784_widget_text = (val // 1000).."."..(val // 100 % 10)
										end
									end
								end
							elseif taskType == 6 then
								local unit = getUnitI(units, data.target)
								if unit ~= nil then
									nodes.$737_visible = true
									taskPositionX = unit.position_x
									taskPositionY = unit.position_y
									nodes.$758_widget_middle_set_normal = unitIcons[unit.type + 1]
									local color = getFactionColor(unit.faction)[1]
									setFlagColor(nodes.$775_widget_set, color)
								end
							elseif taskType == 15 then
								local targetId = gUnit.targetAerodrome
								local unit = getUnitI(units, targetId)
								if unit ~= nil then
									nodes.$1326_visible = true
									taskPositionX = unit.position_x
									taskPositionY = unit.position_y
									nodes.$1381_widget_middle_set_normal = unitIcons[unit.type + 1]
								end
							elseif taskType == 9 then
								local targetId = data.target
								local unit = getUnitI(units, targetId)
								if unit ~= nil then
									nodes.$740_visible = true
									taskPositionX = unit.position_x
									taskPositionY = unit.position_y
									id = unit.typeModified
									local unitType = gameplay.unitTypeModified_@id
									nodes.$768_widget_middle_set_normal = unitIcons[unit.type + 1]
									local color = getFactionColor(unit.faction)[1]
									setFlagColor(nodes.$772_widget_set, color)
									nodes.$771_widget_current = unit.health * 100 // unitType.health
								end
							end
						end
					end
					
						
					-- WORK QUEUE

					if unitType.work_size > 0 then
						local worksState = gUnit.work
						queueSize = worksState.queue_size
						if queueSize > 0 then nodes.$58_visible = true end
						nodes.$59_visible = queueSize > 5 -- кнопка очереди производства +

						if queueSize > 0 then
							local workTime = worksState.queue_0_time
							local workProgress = 1000
							if workTime > 0 then
								workProgress = worksState.progress * 1000 // workTime
							end
							nodes.$168_visible = true -- прогресс текущего производства(текст) в процентах
							nodes.$168_widget_text = (workProgress // 10).." %"
							nodes.$64_widget_current = workProgress

							for i = 1, 5 do
								id = i - 1
								local workState = worksState.queue_@id
								if i <= queueSize then
									id = workQueueButtons[i]
									nodes.@id_visible = true
									local set = nodes.@id_widget_middle_set

									id = i - 1
									local iconText = getUnitWorkIconText(currentSelectionUnitTypes[currentSelectionUnitType][1], workState.work)
									id = workState.work
									local work = unitType.work_@id
									id = work.ability
									local ability = unitType.ability_@id
									
									finalizedWork = finalizedWork or work.final
									local abilityType = ability.type
									
									if iconText ~= nil then
										set.normal = iconText[1]
									else
										if abilityType == 0 then --training
											workObject = ability.data_unit
											set.normal = unitIcons[workObject + 1]
										elseif abilityType == 1 then --research
											workObject = ability.data_research
											set.normal = researchIcons[workObject + 1]
										elseif abilityType == 2 then --transformation
											workObject = ability.data_unit
											set.normal = unitIcons[workObject + 1]
										else --envsCreate
											workObject = ability.data_id
											set.normal = 286
										end
									end

									local amount = workState.amount
									id = workQueueNumbers[i]
									local n = nodes.@id
									n.visible = amount > 1
									if amount > 1 then
										n.widget_text = amount
									end
								else
									id = workQueueNumbers[i]
									nodes.@id_visible = false
								end
							end

							for i = 6, queueSize do
								id = i - 1
								id = worksState.queue_@id_work
								local work = unitType.work_@id
								assert(work ~= nil)
								finalizedWork = finalizedWork or work.final
							end
						end
					end
				end
			end
		end
	end
end

function showUnitsSelection()
	local nodes = getNodes()
	nodes.$71_visible = false
	nodes.$679_visible = false
	local unitsList = $session_visual_scene_0_selection_units_list
	
	local gameplay = $session_gameplay_gameplay
	local units = gameplay.scene_0_unit
	local myFactionId = $session_visual_currentFaction
	local notFramedAny = true
	local currentSelectionButtonsTypes = {}
	faction = nil
	local unitsCount = 0
	
	for i = 1, unitsList.size do
		id = i - 1
		local selectionUnit = unitsList.@id
		local gUnit = getUnitI(units, selectionUnit)
		if gUnit ~= nil and gUnit.state >= 3 and gUnit.presence ~= 2 then
			unitsCount = unitsCount + 1
			local fac = gUnit.faction
			if faction == nil or fac == faction then
				faction = fac

				local unitTypeId = gUnit.type
				local unitTypeModifiedId = gUnit.typeModified
				currentSelectionButtonsTypes[i] = unitTypeModifiedId

				id = gUnit.typeModified
				local unitType = gameplay.unitTypeModified_@id
				
				updateUnitButtonsState(((faction == myFactionId) or isModeReplay), gUnit, unitTypeId, unitType)

				if unitTypeModifiedId == currentSelectionUnitType then
					notFramedAny = false
				end
			
				local a = currentSelectionUnitTypes[unitTypeModifiedId]
				if a == nil then
					currentSelectionUnitTypes[unitTypeModifiedId] = {unitTypeId, 1}
				else
					a[2] = a[2] + 1
				end
			end
		end
	end
	
	if unitsCount == 0 then
		currentSelectionUnitType = nil
		currentSelectionUnitFaction = nil
		getNodes().$484_visible = false
		unitsShowWork = false
	end
	
	if notFramedAny then
		currentSelectionUnitType = nil
		currentSelectionUnitFaction = nil
		for k,v in pairs(currentSelectionButtonsTypes) do
			currentSelectionUnitType = v
			currentSelectionUnitFaction = faction
			break
		end
	end
	
	
	showingUnitsInTransport = false
end

function updateSelection(statistics)
	local nodes = getNodes()
	buttonAttackMove = false
	attackPriorityLimitZero = false
	attackPriorityLimitHigh = false
	buttonAttackGround = false
	attackGroundList = {}
	buttonUnload = false
	unloadToPosition = false
	buttonStop = false
	danceUnitTypes = {}
	buttonGatherLast = false
	unitsShowWork = false
	currentSelectionUnderTransformation = 0
	nodes.$885_visible = false
	nodes.$866_visible = false
	specialAbilities = {}

	workButtonsState = {
		{ show = false, workId = 0 },
		{ show = false, workId = 0 },
		{ show = false, workId = 0 },
		{ show = false, workId = 0 },
		{ show = false, workId = 0 },
		{ show = false, workId = 0 },
		{ show = false, workId = 0 },
		{ show = false, workId = 0 },
		{ show = false, workId = 0 }
	}

	local vSession = $session_visual

	if vSession.scene_0_selection_env ~= nil then
		-- SELECTED ENV
		showEnvSelection()
		$interface_unitsSelectedGroup_active = false
	else
		-- SELECTED UNITS

		local gameplay = $session_gameplay_gameplay
		local scene = gameplay.scene_0
		local units = scene.unit

		nodes.$19_visible = false
		nodes.$22_visible = false
		nodes.$423_visible = false
		nodes.$679_visible = false
		nodes.$713_visible = false
		nodes.$290_visible = false
		
		local selectionList = vSession.scene_0_selection_units_list
		local selectionSize = selectionList.size
		finalizedWork = false
		currentSelectionUnitTypes = {}

		if selectionSize == 0 then
			currentSelectionUnitType = nil
			currentSelectionUnitFaction = nil
			$interface_unitsSelectedGroup_active = false
		else
			nodes.$484_visible = true
			unitsShowWork = true
			$interface_unitsSelectedGroup_active = true
			
			if selectionSize == 1 then
				showOneUnitSelection()
			else
				showUnitsSelection()
			end
		end

		if currentSelectionUnitType ~= nil then
			
			local landscape = $session_gameplay_gameplay_scene_0_landscape
			
			if shownUnitTypeInfo ~= nil and shownUnitTypeInfo ~= currentSelectionUnitTypes[currentSelectionUnitType][1] then
				showUnitTypeInfo()
			end
			
			local currentSelectionTypeCount = currentSelectionUnitTypes[currentSelectionUnitType]
			nodes.$114_widget_middle_set_normal = unitIcons[currentSelectionTypeCount[1] + 1]
			if currentSelectionTypeCount ~= nil then
				nodes.$466_visible = currentSelectionTypeCount[2] > 1
				nodes.$466_widget_text = currentSelectionTypeCount[2]
				nodes.$535_visible = currentSelectionTypeCount[2] > 1
				
				nodes.$1378_visible = false
				nodes.$199_visible = false
				nodes.$1385_visible = false
				nodes.$1000_visible = false
				if currentSelectionTypeCount[2] == 1 then
					local selectionUnit = selectionList.$0
					local gUnit = getUnitI(units, selectionUnit)
					if gUnit ~= nil and gUnit.state >= 4 and gUnit.presence ~= 2 then
						id = gUnit.typeModified
						local unitType = gameplay.unitTypeModified_@id

						local rechTm = 0
						local rechMax = 5000
						
						local function checkWeapon(weapon, weaponType)
							local rechargeTime = weapon.rechargeTime
							if rechargeTime >= 0 then
								local rechargePeriod = weaponType.rechargePeriod
								if rechargePeriod >= rechMax then
									rechTm = rechargeTime
									rechMax = rechargePeriod
								end
							end
						end
						
						forEachWeapon(gUnit, unitType, checkWeapon)
						
						if rechTm > 0 then
							nodes.$199_visible = true
							nodes.$117_widget_current = 1000 - rechTm * 1000 // rechMax
						end
						
						local dieTime = gUnit.dieTime
						local lifeTime = gUnit.fuel
						if lifeTime == nil then lifeTime = 0 end
						local lifeLimit = unitType.airplane_fuel
						if lifeLimit == nil then lifeLimit = 0 end
						if dieTime < 100000000 then
							local lf = dieTime - gameplay.time
							local lim = dieTime - gUnit.bornTime
							if lf < lim then
								lifeTime = lf
								lifeLimit = lim
							end
						end
						
						if lifeTime > 0 then
							local n = nodes.$1378
							n.visible = true
							n.widget_current = lifeTime * 1000 // lifeLimit
						end
						
						local chargesMax0 = unitType.weapon_0_charges
						if chargesMax0 ~= nil and chargesMax0 > 0 then
							local charges = gUnit.weapon_0_charges
							nodes.$1385_visible = true
							if charges > 0 then
								nodes.$323_visible = true
								nodes.$323_sizeX = math.floor(6 * interfaceScale * charges)
							else
								nodes.$323_visible = false
							end
							nodes.$312_sizeX = math.floor(6 * interfaceScale * chargesMax0)
						end

						local chargesMax1 = unitType.weapon_1_charges
						if chargesMax1 ~= nil and chargesMax1 > 0 then
							local charges = gUnit.weapon_1_charges
							nodes.$1000_visible = true
							if charges > 0 then
								nodes.$999_visible = true
								nodes.$999_sizeX = math.floor(6 * interfaceScale * charges)
							else
								nodes.$999_visible = false
							end
							nodes.$998_sizeX = math.floor(6 * interfaceScale * chargesMax1)
						end
					end
				end

				local color = getFactionColor(faction)[1]
				setFlagColor(nodes.$385_widget_set, color)

				local isMyFaction = (faction == vSession.currentFaction) or isModeReplay

				if isMyFaction and unitsShowWork then
					-- WORK ABILITIES

					local unitType = gameplay.unitTypeModified_@currentSelectionUnitType
					if unitType ~= nil then
						if unitType.tags_5 and HQid ~= nil then
							local landscape = $session_gameplay_gameplay_scene_0_landscape
							landscape.findFreePosition = {math.floor(HQx * 256), math.floor(HQy * 256), 106}
							local res = $a_lastResult
							if res[1] == "1" then
								local x = tonumber(res[2])
								local y = tonumber(res[3])
								local sx = landscape.size_x - 10000
								local sy = landscape.size_y - 10000
								if blockedPath(landscape, x, y, 10000,10000) and blockedPath(landscape, x, y, sx, sy) then
									nodes.$885_visible = true
								else
									nodes.$866_visible = true
								end
							end
						end

						local works = unitType.work_size

						local reserves = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
						local reserveProgress = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
						local selCount = 0
						local checkNoTask = (currentSelectionUnitTypes[currentSelectionUnitType][1] == 288)
						
						for i = 1, selectionSize do
							id = i - 1
							local selectionUnit = selectionList.@id
							local gUnit = getUnitI(units, selectionUnit)
							if gUnit ~= nil and gUnit.state >= 4 and gUnit.presence ~= 2 then
								if checkNoTask then
									local tasks = gUnit.task
									if tasks.size > 0 then
										unitsShowWork = false
									end
								end

								if gUnit.typeModified == currentSelectionUnitType then
									if gUnit.underTransformation then currentSelectionUnderTransformation = currentSelectionUnderTransformation + 1 end
									selCount = selCount + 1
									for j = 1, works do
										id = j - 1
										local work = unitType.work_@id
										assert(work ~= nil)
										if work.reserveLimit > 0 then
											local res = gUnit.work_reserve_@id
											reserves[j] = reserves[j] + res.amount
											if reserveProgress[j] < res.time then
												reserveProgress[j] = res.time
											end
										end
									end
								end
							end
						end
						
						if unitsShowWork then
							finalizedWork = finalizedWork or (currentSelectionUnderTransformation == selCount)

							local showAny = false
							id = faction
							local myFaction = gameplay.faction_@id
							local finalAge = tonumber($session_gameplay_gameplay_dataStorage_finalAge)
							if finalAge == nil then finalAge = 100 end

							if finalizedWork then
								for i = 1, 9 do
									nodeButtonId = workButtonBlocks[i]
									nodes.@nodeButtonId_visible = false
								end
							else
								local worksData = unitsWork[currentSelectionUnitTypes[currentSelectionUnitType][1]]
								for i = 1, 9 do
									assert(workButtonsState[i] ~= nil)
									id = workButtonBlocks[i]
									nodes.@id_visible = false
									if worksData ~= nil then
										local workData = worksData[i]
										if workData ~= nil then
											for j = 1, #workData do
												local w = workData[j]
												local showDisabled = showWorkButton(nodes, myFaction, statistics, reserves[w + 1], reserveProgress[w + 1], currentSelectionUnitTypes[currentSelectionUnitType][1], unitType, i, w, finalAge)
												if showDisabled[1] then
													showAny = true
													if not showDisabled[3] then break end
												end
											end
										else
											nodeButtonId = workButtonBlocks[i]
											nodes.@nodeButtonId_visible = false
											workButtonsState[i].show = false
										end
									else
										local show = showWorkButton(nodes, myFaction, statistics, reserves[i], reserveProgress[i], currentSelectionUnitTypes[currentSelectionUnitType][1], unitType, i, i - 1, finalAge)
										showAny = showAny or show[1]
									end
								end
								
								if currentSelectionUnitTypes[currentSelectionUnitType][1] == 352 then
									local sum = 0
									for unitTypeModifiedId, typeCount in pairs(currentSelectionUnitTypes) do
										sum = sum + 1
									end
									if sum == 1 then
										showWorkButtonSpecial(nodes, 1, 352, tempAbilityIcons[1])
										showAny = true
									end
								end
								if currentSelectionUnitTypes[currentSelectionUnitType][1] == 360 then
									local sum = 0
									for unitTypeModifiedId, typeCount in pairs(currentSelectionUnitTypes) do
										sum = sum + 1
									end
									if sum == 1 then
										showWorkButtonSpecial(nodes, 1, 360, tempAbilityIcons[2])
										showAny = true
									end
								end
								if currentSelectionUnitTypes[currentSelectionUnitType][1] == 361 then
									local sum = 0
									for unitTypeModifiedId, typeCount in pairs(currentSelectionUnitTypes) do
										sum = sum + 1
									end
									if sum == 1 then
										showWorkButtonSpecial(nodes, 1, 361, tempAbilityIcons[2])
										showAny = true
									end
								end
							end
							
							nodes.$68_visible = showAny
						end
					end
				end
			end
		end
	end
	assert(currentSelectionUnitType == nil or currentSelectionUnitTypes[currentSelectionUnitType] ~= nil)

	nodes.$1276_visible = attackPriorityLimitZero or attackPriorityLimitHigh
	nodes.$901_visible = attackPriorityLimitZero and not attackPriorityLimitHigh
	nodes.$1277_visible = attackPriorityLimitHigh and not attackPriorityLimitZero
	nodes.$1278_visible = attackPriorityLimitHigh and attackPriorityLimitZero
	
	nodes.$945_visible = buttonAttackMove
	nodes.$119_visible = buttonStop
	nodes.$201_visible = not isEmptyTable(danceUnitTypes)
	nodes.$183_visible = buttonGatherLast
	nodes.$456_visible = buttonAttackGround
	nodes.$206_visible = buttonUnload
end

function isEmptyTable(tbl)
	return next(tbl) == nil
end

function updateMinimapIcons()
	local gameplay = $session_gameplay_gameplay
	local scene = gameplay.scene_0
	local vSession = $session_visual
	local icons = vSession.scene_0_minimap_icons
	local currentFaction = vSession.currentFaction

	for i = 1, #showMinimapIcons do
		icons.remove = showMinimapIcons[i]
	end

	showMinimapIcons = {}

	local canSeeTownHalls = isResearchComplete(currentFaction, 92)
	
	scene.findAllUnits = {255, 32}
	if $lastResult == "" then return end
	local units = $a_lastResult

	for i = 1, #units do
		id = units[i]
		local unit = scene.unit_@id
		id = unit.typeModified
		local unitType = gameplay.unitTypeModified_@id
		local wonder = unitType.tags_9
		local faction = unit.faction
		local position = unit.position
		id = position.x
		local x = vSession.coordinateToVisual_@id
		id = position.y
		local y = vSession.coordinateToVisual_@id

		icons.create = {0,1000}
		local iid = $a_lastResult
		table.insert(showMinimapIcons, {tonumber(iid[1]), tonumber(iid[2])})

		id = tonumber(iid[1])
		local icon = icons.@id

		icon.color_value = 0xffffffff
		icon.position_x = x
		icon.position_y = y
		icon.scale = 22

		if wonder then
			icon.scale = icon.scale * 2
			if faction == wwWinFaction then
				icon.billboard = 2
			else
				icon.billboard = 1
			end
		elseif canSeeTownHalls then
			icon.scale = icon.scale * 1.2
			icon.billboard = 0
		end
	end
end

function setInterfaceScale(widgetsScale, fontsScale)
	interfaceScale = widgetsScale
	updateTeamBlocks()
	onResize()
end

function getFactionOfPlayer(player)
	id = player
	local facs = $session_gameplay_gameplay_player_@id_controlledFactions
	for i = 0, 63 do
		id = i
		if facs.@id then return i end
	end
	return -1
end

function getPlayerOfFaction(faction)
	local plr = $session_gameplay_gameplay_player
	local plrs = plr.size
	for i = 0, plrs - 1 do
		id = i
		local player = plr.@id_controlledFactions
		id = faction
		if player.@id then return i end
	end
	return nil
end

function getPlayerTeam(player)
	id = getFactionOfPlayer(player)
	return $session_gameplay_gameplay_scene_0_faction_@id_team
end

function underWater(z)
	return z < 130200
end

function updateTeamBlocks()
	local nodes = getNodes()

	local teamsInitData =
	{
		list1 = 0,
		list2 = 0,
		blockId = 0,
		blockAddY = nodes.$1184_localTop,
		blockSizeColumn = nodes.$1143_screenLeft - nodes.$1184_screenLeft,
		blockNode
	}

	local gameplay = $session_gameplay_gameplay
	local players = gameplay.player_size
	local sFactions = gameplay.scene_0_faction
	local namesPerColumn = 20

	local currentFaction = $session_visual_currentFaction
	id = currentFaction
	local currentTeam = sFactions.@id_team

	local teams = {}
	for plId = 1, players do
		local function func(facId)
			id = facId
			local team = sFactions.@id_team
			if teams[team] == nil then
				teams[team] = {plId}
			else
				table.insert(teams[team], plId)
			end
		end
		forEachPlayerFaction(plId - 1, func)
	end

	local oneColumn = players <= 20

	if oneColumn then
		nodes.$991_visible = true
	else
		nodes.$1245_visible = true
	end

	for teamSize = 64, 1, -1 do
		for teamId, list in pairs(teams) do
			if #list == teamSize then
				local bestList = 0
				local blockStartPos = 0
				
				if oneColumn or teamsInitData.list1 <= teamsInitData.list2 then
					bestList = 1
					blockStartPos = teamsInitData.list1 + 1
				else
					bestList = 2
					blockStartPos = teamsInitData.list2 + namesPerColumn + 1
				end

				local teamed = #list > 1
				local blockSize = 0
				for j = 1, #list do
					if teamed and teamsInitData.blockNode == nil then
						startTeamBlock(teamsInitData, blockStartPos, bestList, j > 1, teamId == currentTeam)
					end
					
					blockSize = blockSize + 1
					local pl = list[j]
					if bestList == 1 then
						teamsInitData.list1 = teamsInitData.list1 + 1
						playersListPosition[pl] = teamsInitData.list1
						if teamsInitData.list1 >= namesPerColumn then
							finishTeamBlock(teamsInitData, blockStartPos, blockSize)
							bestList = 2
							blockStartPos = teamsInitData.list2 + namesPerColumn + 1
							blockSize = 0
						end
					else
						teamsInitData.list2 = teamsInitData.list2 + 1
						if teamsInitData.list2 >= namesPerColumn then return end 
						playersListPosition[pl] = teamsInitData.list2 + namesPerColumn
						if teamsInitData.list2 >= namesPerColumn then
							finishTeamBlock(teamsInitData, blockStartPos, blockSize)
							bestList = 1
							blockStartPos = teamsInitData.list1 + 1
							blockSize = 0
						end
					end
				end
				
				finishTeamBlock(teamsInitData, blockStartPos, blockSize)
			end
		end
	end
end

function startTeamBlock(teamsInitData, startPos, bestList, connectColumns, myTeam)
	local nodes = getNodes()
	teamsInitData.blockId = teamsInitData.blockId + 1
	id = teamBlocks[teamsInitData.blockId]
	teamsInitData.blockNode = nodes.@id
	teamsInitData.blockNode.visible = true

	assert(startPos <= #playersListNames)
	id = playersListNames[startPos]
	local n = nodes.@id
	teamsInitData.blockNode.localLeft = n.localLeft + math.floor(((2 - bestList) * teamsInitData.blockSizeColumn - 5))
	if myTeam then
		teamsInitData.blockNode.widget_color_value = 0x5000ffff
	else
		teamsInitData.blockNode.widget_color_value = 0x50000080
	end
	teamsInitData.blockNode.localTop = n.localTop + math.floor(teamsInitData.blockAddY)
	teamsInitData.blockNode.sizeX = n.sizeX + 25
	if connectColumns then
		teamsInitData.blockNode.sizeX = teamsInitData.blockNode.sizeX + 9
		if bestList == 1 then
			teamsInitData.blockNode.localLeft = teamsInitData.blockNode.localLeft - 9
		end
	end
end

function finishTeamBlock(teamsInitData, startPos, blockSize)
	if teamsInitData.blockNode == nil then return end
	local nodes = getNodes()
	id = playersListNames[startPos + blockSize - 1]
	local n = nodes.@id
	local sy = n.localTop + n.sizeY + math.floor(teamsInitData.blockAddY) - teamsInitData.blockNode.localTop
	assert(sy > 0)
	teamsInitData.blockNode.sizeY = sy
	teamsInitData.blockNode = nil
end

function hideInterfaces(hide)
	local nodes = getNodes()
	nodes.$60_visible = not hide
	if hide then
		hiddenInterfaces = {}
		for i = 0, 100 do
			if i ~= interfaceId then
				id = i
				local itf = $interface_@id
				if itf ~= nil and itf.active and itf.name ~= "scene" and itf.name ~= "cinematic" and itf.name ~= "cameraMove" then
					itf.active = false
					table.insert(hiddenInterfaces, i)
				end
			end
		end
	else
		if hiddenInterfaces ~= nil then
			for i = 1, #hiddenInterfaces do
				id = hiddenInterfaces[i]
				$interface_@id_active = true
			end
		end
		hiddenInterfaces = nil
	end
	onResize()
end

function getListOfRequiredUnits(requirements, all)
	local delimiter = "/"
	if all then delimiter = "+" end
	local s = ""
	local sz = requirements.size
	for i = 1, sz do
		id = i - 1
		local requirementUnit = requirements.@id
		local num = requirementUnit.min
		if num > 0 then
			local unitType = requirementUnit.type
			if i > 1 then s = s.." "..delimiter.." " end
			s = s..unitNames[unitType + 1]
			if num > 1 then
				s = s.." x"..num
			end
		end
	end
	return s
end

function getListOfRequiredResearches(requirements, all)
	local delimiter = "/"
	if all then delimiter = "+" end
	local s = ""
	local sz = requirements.size
	for i = 1, sz do
		id = i - 1
		local requirementResearch = requirements.@id_id
		if i > 1 then s = s.." "..delimiter.." " end
		s = s..researchNames[requirementResearch + 1]
	end
	return s
end

function updateCostRequirements(requirements)
	local nodes = getNodes()
	local hasRequiredUnit = requirements.unit_size > 0
	local hasRequiredResearch = requirements.research_size > 0
	if hasRequiredUnit or hasRequiredResearch then
		nodes.$18_visible = true
		if hasRequiredUnit then
			nodes.$467_visible = true
			nodes.$32_widget_text = getListOfRequiredUnits(requirements.unit, requirements.unitsAll)
		else
			nodes.$467_visible = false
		end
		if hasRequiredResearch then
			nodes.$543_visible = true
			nodes.$453_widget_setText = getListOfRequiredResearches(requirements.research, requirements.researchesAll)
		else
			nodes.$543_visible = false
		end
	else
		nodes.$18_visible = false
	end
end

function searchUnit(scene, faction, tags)
	scene.searchUnit = {0, 0, 1000000000, faction, tags}
	return $lastResult
end

function getHQ(scene, faction)
	return searchUnit(scene, faction, 32)
end

function isAgeUpgrade(upgrade)
	if upgrade >= 1 and upgrade <= 9 then return true end
	if upgrade >= 15 and upgrade <= 17 then return true end
	if upgrade == 59 then return true end
	if upgrade >= 61 and upgrade <= 73 then return true end
	if upgrade == 93 then return true end
	if upgrade >= 114 and upgrade <= 116 or upgrade == 118 or upgrade == 121 or upgrade == 125 or upgrade == 126 or upgrade == 131 or upgrade == 135 or upgrade == 136 then return true end
	return false
end

function switchPlayerOff(player)
	if player >= #playersListPosition then return end
	local nodes = getNodes()
	local pos = playersListPosition[player + 1]
	if pos == nil then return end
	id = playersListStatus[pos]
	local n = nodes.@id
	n.widget_image = playerStatusOff
end

function prepareDiag(strips)
	assert(#timeline > 1)
	assert(strips > 1)
	local diag = getInterface().content_diagram_0
	diag.resize = {#timeline, strips}
	
	local colors = diag.colors
	for strip = 1, strips do
		local color = getPlayerColor(strip - 1)[1]
		id = strip - 1
		colors.@id_value = color
	end
end

function getTimelineValueGather(gather)
	return gather[1] + gather[2] * 1.5 + gather[3] * 5
end

function getTimelineValueEconomy(workers, workersSum, gather, gatherSum)
	local sum = 0
	local g = getTimelineValueGather(gather)
	if workers > 0 then sum = sum + workers / workersSum end
	if g > 0 then sum = sum + g / getTimelineValueGather(gatherSum) end
	return sum
end

function getTimelineValueWar(army, armySum, killed, killedSum)
	local sum = 0
	if army > 0 then sum = sum + army / armySum end
	if killed > 0 then sum = sum + killed / killedSum * 0.25 end
	return sum
end

function getTimelineValueTotal(army, armySum, killed, killedSum, territory, territorySum, workers, workersSum, gather, gatherSum)
	local sum = getTimelineValueWar(army, armySum, killed, killedSum) + getTimelineValueEconomy(workers, workersSum, gather, gatherSum)
	if territory > 0 then sum = sum + territory / territorySum * 0.5 end
	return sum
end

function updateTimelineTemplate(func)
	assert(#timeline > 1)
	local strips = getInterface().content_diagram_0_strips

	if timelineByTeams then
		prepareDiag(timelineTeamsCount)

		for tm = 1, #timeline do
			local slice = timeline[tm]

			local sum = {0, 0, 0, 0, {0, 0, 0}}
			for teamId, teamData in pairs(timelineTeams) do
				for plNum = 1, #teamData do
					local plId = math.floor(teamData[plNum])
					local facId = playersFactions[plId] + 1
					sum[1] = sum[1] + slice[1][facId]
					sum[2] = sum[2] + slice[2][facId]
					sum[3] = sum[3] + slice[3][facId]
					sum[4] = sum[4] + slice[4][facId]
					sum[5][1] = sum[5][1] + slice[5][facId][1]
					sum[5][2] = sum[5][2] + slice[5][facId][2]
					sum[5][3] = sum[5][3] + slice[5][facId][3]
				end
			end
			
			id = tm - 1
			local strip = strips.@id
			
			local teamCounter = 0
			for teamId, teamData in pairs(timelineTeams) do
				local v = 0
				for plNum = 1, #teamData do
					local plId = math.floor(teamData[plNum])
					local facId = playersFactions[plId] + 1
					v = v + func(slice[1][facId], slice[2][facId], slice[3][facId], slice[4][facId], slice[5][facId], sum[1], sum[2], sum[3], sum[4], sum[5])
				end
				id = teamCounter
				assert(v >= 0)
				strip.@id_value = v
				teamCounter = teamCounter + 1
			end
		end
	else
		local playersCount = $session_gameplay_gameplay_player_size
		prepareDiag(playersCount)

		for tm = 1, #timeline do
			local slice = timeline[tm]

			local sum = {0, 0, 0, 0, {0, 0, 0}}
			for plId = 1, playersCount do
				local facId = playersFactions[plId] + 1
				sum[1] = sum[1] + slice[1][facId]
				sum[2] = sum[2] + slice[2][facId]
				sum[3] = sum[3] + slice[3][facId]
				sum[4] = sum[4] + slice[4][facId]
				sum[5][1] = sum[5][1] + slice[5][facId][1]
				sum[5][2] = sum[5][2] + slice[5][facId][2]
				sum[5][3] = sum[5][3] + slice[5][facId][3]
			end

			id = tm - 1
			local strip = strips.@id

			for plId = 1, playersCount do
				local facId = playersFactions[plId] + 1
				local v = func(slice[1][facId], slice[2][facId], slice[3][facId], slice[4][facId], slice[5][facId], sum[1], sum[2], sum[3], sum[4], sum[5])
				id = plId - 1
				if v >= 0 then
					strip.@id_value = v
				else
					strip.@id_value = 0
				end
			end
		end
	end

	getInterface().updateDiagram = 0
end

function updateTimeline()
	if timeline == nil or #timeline < 2 then return end
	local nodes = getNodes()
	nodes.$1249_disabled = false
	nodes.$1250_disabled = false
	nodes.$1251_disabled = false
	nodes.$1252_disabled = false
	nodes.$1248_disabled = false
	nodes.$1247_disabled = false
	nodes.$1244_disabled = false
	nodes.$1243_disabled = false
	nodes.$1241_disabled = false
	nodes.$1240_disabled = false
	nodes.$1242_disabled = false

	local func
	if timelineType == "all" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return getTimelineValueTotal(v1, s1, v2, s2, v3, s3, v4, s4, v5, s5)
		end
		nodes.$1249_disabled = true
	elseif timelineType == "war" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return getTimelineValueWar(v1, s1, v2, s2)
		end
		nodes.$1250_disabled = true
	elseif timelineType == "army" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return v1
		end
		nodes.$1251_disabled = true
	elseif timelineType == "killed" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return v2
		end
		nodes.$1252_disabled = true
	elseif timelineType == "territory" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return v3
		end
		nodes.$1248_disabled = true
	elseif timelineType == "economy" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return getTimelineValueEconomy(v4, s4, v5, s5)
		end
		nodes.$1247_disabled = true
	elseif timelineType == "workers" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return v4
		end
		nodes.$1244_disabled = true
	elseif timelineType == "gather" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return getTimelineValueGather(v5)
		end
		nodes.$1243_disabled = true
	elseif timelineType == "gather_food" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return v5[1]
		end
		nodes.$1241_disabled = true
	elseif timelineType == "gather_materials" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return v5[2]
		end
		nodes.$1240_disabled = true
	elseif timelineType == "gather_metal" then
		func = function(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
			return v5[3]
		end
		nodes.$1242_disabled = true
	end
	assert(func ~= nil)
	updateTimelineTemplate(func)
end

function prepareTimeline()
	$session_gameplay_gameplay_scripts_scripts_run = 6
	local storage = $session_gameplay_gameplay_dataStorage
	timeline = fromJson(storage.pointsTimeline)
	if timeline == nil then return end
	
	local nodes = getNodes()
	
	local gameTime = #timeline * 30
	nodes.$1265_widget_text = toTimeStr(gameTime // 4)
	nodes.$1266_widget_text = toTimeStr(gameTime * 2 // 4)
	nodes.$1267_widget_text = toTimeStr(gameTime * 3 // 4)
	nodes.$1268_widget_text = toTimeStr(gameTime)
end

function switchMatchResultsTab(tab)
	local nodes = getNodes()
	if tab == "map" then
		nodes.$1139_visible = false
		nodes.$1150_visible = true
		nodes.$1161_visible = false
	else
		nodes.$1139_visible = teamMode and isModeReplay
		nodes.$1150_visible = false
		nodes.$1161_visible = true

		prepareTimeline()
		updateTimeline()
	end
end

function updateAttackWarnings()
	local vSession = $session_visual
	local gameplay = $session_gameplay_gameplay
	local nodes = getNodes()
	local scene = gameplay.scene_0

	local factions = vSession.faction
	local factionsSize = factions.size

	id = $session_gameplay_controlledPlayer
	local facs = gameplay.player_@id_controlledFactions
	id = vSession.currentFaction
	local myRelations = scene.relation_@id
	local time = gameplay.time

	for i = 0, factionsSize - 1 do
		id = i
		local fact = vSession.faction_@id
		local lastDamageTime = fact.lastDamageTime
		local lastDamageFrom = fact.lastDamageFrom
		
		if lastDamageTime > 0 and lastDamageFrom ~= i then
			if facs.@id then
				lastDamageTimeMe = lastDamageTime
				attackedPositionMe = {fact.lastDamagePosition_x, fact.lastDamagePosition_y}
			elseif myRelations.@id_value == 1 and lastDamageFrom > 1 then
				lastDamageTimeAlly = lastDamageTime
				attackedPositionAlly = {fact.lastDamagePosition_x, fact.lastDamagePosition_y}
			end
		end
	end

	local newVisibleAttackMe = (time - lastDamageTimeMe < 7000)
	local newVisibleAttackAlly = (time - lastDamageTimeAlly < 7000)

	if newVisibleAttackMe and not nodes.$949_visible then
		vSession.sound_playSound = {247, 0.07}
	end
	nodes.$949_visible = newVisibleAttackMe

	if newVisibleAttackAlly and not nodes.$1093_visible then
		vSession.sound_playSound = {259, 0.07}
	end
	nodes.$1093_visible = newVisibleAttackAlly
end

function showWorkCost(unitType, workId, x, y)
	id = workId
	local work = unitType.work_@id
	id = work.ability
	local ability = unitType.ability_@id

	local iconText = getUnitWorkIconText(unitTypeId, id)
	local costOrder = work.costOrder
	local costStart = work.costStart
	local costProcess = work.costProcess
	
	updateCostRequirements(ability.requirements)

	local nodes = getNodes()

	nodes.$221_visible = true
	local reserveTime = work.reserveTime
	if reserveTime > 0 then
		nodes.$219_widget_text = (work.makeTime // 1000).." / "..(reserveTime // 1000)
	else
		nodes.$219_widget_text = work.makeTime // 1000
	end

	local widget = nodes.$50

	local parent = nodes.@@widget
	widget.visible = true
	widget.localLeft = parent.screenLeft + x - widget.sizeX - 10
	widget.localTop = parent.screenTop + y - widget.sizeY - 10

	id = $session_visual_currentFaction
	local gameplay = $session_gameplay_gameplay
	local sFaction = gameplay.scene_0_faction_@id
	local gFaction = gameplay.faction_@id
	local resources = sFaction.treasury_resources

	local i0 = costOrder.$0 + costStart.$0
	local i1 = costOrder.$1 + costStart.$1
	local i2 = costOrder.$2 + costStart.$2
	local c0 = i0 + costProcess.$0
	local c1 = i1 + costProcess.$1
	local c2 = i2 + costProcess.$2
	local r0 = resources.$0
	local r1 = resources.$1
	local r2 = resources.$2

	outCostDigit(nodes.$123, nodes.$52, i0, c0, r0, 1000)
	outCostDigit(nodes.$124, nodes.$53, i1, c1, r1, 1000)
	outCostDigit(nodes.$126, nodes.$97, i2, c2, r2, 1000)

	local abilityType = ability.type
	local abilityName
	local name
	local text

	nodes.$112_visible = false
		
	if abilityType == 0 then -- training
		local object = ability.data_unit
		local limit = sFaction.supply_limitMaximized - sFaction.supply_sum
		id = object
		local workUnitType = gameplay.unitType_@id
		if workUnitType.supplyOn then
			local sup = workUnitType.supply_cost
			outCostDigit(nodes.$128, nodes.$130, sup, sup, limit, 10)
		else
			nodes.$128_visible = false
		end
		name = unitNames[object + 1]
		text = unitTexts[object + 1]
		abilityName = localize("<*workTraining>")
	else
		if abilityType == 1 then -- research
			local object = ability.data_research
			id = object
			local unavailable = gFaction.researchesUnavailable_@id
			nodes.$112_visible = unavailable
		
			nodes.$128_visible = false
			name = researchNames[object + 1]
			text = researchTexts[object + 1]
			abilityName = localize("<*workResearch>")
		elseif abilityType == 2 then -- transformation
			local object = ability.data_unit
			nodes.$128_visible = false
			name = unitNames[object + 1]
			text = unitTexts[object + 1]
			abilityName = localize("<*workTransformation>")
		else -- envs create
			id = ability.data_id
			local ec = unitType.createEnvs_@id
			local data = workEnvCreateData[ec.tag]
			if data == nil then
				name = ec.tag
				text = ""
			else
				name = envNames[data[1]]
				text = data[2]
			end
			abilityName = localize("<*workEnvsCreate>")
		end
	end

	if iconText ~= nil then
		name = iconText[2]
		text = iconText[3]
	end

	nodes.$72_visible = true
	nodes.$72_widget_text = abilityName
	nodes.$213_widget_setText = name
	nodes.$94_widget_text = text
end

function updateChatColors()
	if not $interface_chat_scripts_ready then return end
	$interface_chat_scripts_run = {10, "colors", toJson(playersColors)}
end

function isChatBanned(player)
	id = getFactionOfPlayer(player)
	if $session_gameplay_gameplay_faction_@id_abilities_18 then return true end
	if playersChatBan[player] == nil then return false end
	return playersChatBan[player]
end

function getSendResourcesPercent(fromEra, toEra)
	local d = math.abs(toEra - fromEra)
	local p = 20 + 10 * d
	return 100 - p
end

function updateSendResourcesValue(res, value)
	local nodes = getNodes()
	local sendText = {1449, 1450, 1455}
	local recieveText = {1456, 1457, 1458}
	local sliders = {1441, 1446, 1452}

	id = sliders[res + 1]
	local mx = nodes.@id_widget_max
	if value < 0 or value > mx then value = mx end

	id = sendText[res + 1]
	nodes.@id_widget_text_text = value
	id = sliders[res + 1]
	nodes.@id_widget_current = value
	id = recieveText[res + 1]
	nodes.@id_widget_text_text = math.floor(value * sendResourcesPercent // 100)
end

function updateSendResourcesWindow()
	local nodes = getNodes()

	local resources = $session_gameplay_gameplay_scene_0_faction_@sendResourcesFromFaction_treasury_resources
	local r0 = math.floor(resources.$0 / 1000)
	local r1 = math.floor(resources.$1 / 1000)
	local r2 = math.floor(resources.$2 / 1000)

	local myEra = getAgeFaction(sendResourcesFromFaction)[1]
	local targetEra = getAgeFaction(sendResourcesToFaction)[1]
	sendResourcesPercent = getSendResourcesPercent(myEra, targetEra)
	
	nodes.$1594_visible = r0 > 0
	nodes.$1441_widget_max = r0
	
	nodes.$1593_visible = r1 > 0
	nodes.$1446_widget_max = r1

	nodes.$1591_visible = r2 > 0
	nodes.$1452_widget_max = r2

	nodes.$1445_widget_text = 100 - sendResourcesPercent
	
	updateSendResourcesValue(0, nodes.$1441_widget_current)
	updateSendResourcesValue(1, nodes.$1446_widget_current)
	updateSendResourcesValue(2, nodes.$1452_widget_current)
end

function showResourceSendingWindow(player)
	local nodes = getNodes()
	sendResourcesFromFaction = $session_visual_currentFaction
	sendResourcesToFaction = getFactionOfPlayer(player)

	if getRelation($session_gameplay_gameplay_scene_0_relation, sendResourcesFromFaction, sendResourcesToFaction) ~= 1 or sendResourcesFromFaction == sendResourcesToFaction then
		nodes.$1451_visible = false
		return
	end

	nodes.$1451_visible = true
	nodes.$1579_disabled = false
	nodes.$1274_visible = false
	nodes.$74_visible = false
	nodes.$1275_visible = false

	nodes.$1441_widget_current = 0
	nodes.$1449_widget_text_text = "0"
	nodes.$1456_widget_text_text = "0"
	
	nodes.$1446_widget_current = 0
	nodes.$1450_widget_text_text = "0"
	nodes.$1457_widget_text_text = "0"

	nodes.$1452_widget_current = 0
	nodes.$1455_widget_text_text = "0"
	nodes.$1458_widget_text_text = "0"
	
	updateSendResourcesWindow()
end

function showPlayerWindow(player)
	local nodes = getNodes()
	nodes.$873_visible = true
	nodes.$1484_visible = false
	nodes.$871_visible = false
	complaintPlayer = player

	writePlayerToWidget(complaintPlayer, nodes.$973_widget)

	nodes.$874_widget_value = 0
	nodes.$868_widget_text_text = ""
	
	nodes.$1410_widget_checked = isChatBanned(player)
	
	showResourceSendingWindow(player)
end

function showTooltip(parentWidgetId, name, show, x, y)
	local nodes = getNodes()
	id = parentWidgetId
	local parent = nodes.@id
	local widget = nodes.$1279
	widget.visible = show
	widget.localLeft = parent.screenLeft + x - widget.sizeX - 15
	widget.localTop = parent.screenTop + y - widget.sizeY - 15

	nodes.$654_visible = false
	nodes.$1415_visible = false
	nodes.$1409_visible = false
	nodes.$1412_visible = false
	nodes.$556_visible = false
	nodes.$1239_visible = false
	nodes.$141_visible = false
	nodes.$898_visible = false
	nodes.$1280_visible = false
	nodes.$1281_visible = false
	nodes.$1282_visible = false
	nodes.$1284_visible = false
	nodes.$1286_visible = false
	nodes.$1323_visible = false
	nodes.$1324_visible = false

	if name == "dance" then nodes.$1239_visible = true
	elseif name == "formationTight" then
		nodes.$1412_visible = true
		widget.localLeft = parent.screenLeft + x
	elseif name == "formationSparse" then
		nodes.$1409_visible = true
		widget.localLeft = parent.screenLeft + x
	elseif name == "gatesopen" then
		nodes.$1323_visible = true
		widget.localLeft = parent.screenLeft + x
	elseif name == "gatesclose" then
		nodes.$1324_visible = true
		widget.localLeft = parent.screenLeft + x
	elseif name == "gatherLast" then nodes.$556_visible = true
	elseif name == "targetsmart" then nodes.$141_visible = true
	elseif name == "targetclosest" then nodes.$898_visible = true
	elseif name == "targetboth" then nodes.$1280_visible = true
	elseif name == "attackground" then nodes.$1281_visible = true
	elseif name == "stop" then nodes.$1282_visible = true
	elseif name == "moveattack" then nodes.$1284_visible = true
	elseif name == "unload" then nodes.$1286_visible = true
	elseif name == "abilityBomb" then nodes.$1415_visible = true
	elseif name == "abilityTorpedo" then nodes.$654_visible = true
	end
end

function sendOnMinimap(attack, minimapWidget)
	local sz = $session_gameplay_gameplay_scene_0_landscape_size
	id = minimapWidget
	local n = getNodes().@id
	xg = math.floor(sz.x * (1 - $$x / n.sizeX))
	yg = math.floor(sz.y * ($$y / n.sizeY))
	local vSession = $session_visual
	local x = vSession.coordinateToVisual_@xg
	local y = vSession.coordinateToVisual_@yg
	if attack then
		vSession.script_scripts_run = {11, "x", x, "y", y, "xg", xg, "yg", yg, "direction", 0, "attack", true}
	else
		vSession.script_scripts_run = {11, "x", x, "y", y, "xg", xg, "yg", yg, "direction", 0}
	end
end

function onResize()
	local nodes = getNodes()
	local b = 0
	if nodes.$60_visible then
		b = nodes.$205_sizeY
	end
	if $interface_scene_scripts_ready then
		$interface_scene_scripts_run = {6, "bottom", b}
	end
end

function isUnitTypeBought(unitTypeId)
	local nationId = unitNations[unitTypeId + 1]
	if nationId == nil then return true end
	local ab = culturesAbilities[nationId]
	if ab == nil then return true end
	local currentFaction = $session_visual_currentFaction
	id = currentFaction
	local abilities = $session_gameplay_gameplay_faction_@id_abilities
	id = ab
	return abilities.@id
end



local nodes = getNodes()
playersListPosition = {}

fonts =
{
	ru = localize("<*font_ru>"),
	br = localize("<*font_br>"),
	cn = localize("<*font_cn>"),
	cs = localize("<*font_cs>"),
	da = localize("<*font_da>"),
	de = localize("<*font_de>"),
	en = localize("<*font_en>"),
	es = localize("<*font_es>"),
	fr = localize("<*font_fr>"),
	hi = localize("<*font_hi>"),
	it = localize("<*font_it>"),
	ka = localize("<*font_ka>"),
	kr = localize("<*font_kr>"),
	pl = localize("<*font_pl>"),
	tr = localize("<*font_tr>"),
	nl = localize("<*font_nl>"),
	sr = localize("<*font_sr>"),
	hu = localize("<*font_hu>"),
	tw = localize("<*font_tw>"),
	hr = localize("<*font_hr>"),
	unk = localize("<*font_unk>")
}

nodes.$412_widget_text = getWidgetHotKey(nodes, buildButtons[1])
nodes.$413_widget_text = getWidgetHotKey(nodes, buildButtons[2])
nodes.$414_widget_text = getWidgetHotKey(nodes, buildButtons[3])
nodes.$415_widget_text = getWidgetHotKey(nodes, buildButtons[4])
nodes.$459_widget_text = getWidgetHotKey(nodes, buildButtons[5])
nodes.$464_widget_text = getWidgetHotKey(nodes, buildButtons[6])
nodes.$465_widget_text = getWidgetHotKey(nodes, buildButtons[7])
nodes.$485_widget_text = getWidgetHotKey(nodes, buildButtons[8])
nodes.$486_widget_text = getWidgetHotKey(nodes, buildButtons[9])
nodes.$492_widget_text = getWidgetHotKey(nodes, buildButtons[10])
nodes.$497_widget_text = getWidgetHotKey(nodes, buildButtons[11])
nodes.$498_widget_text = getWidgetHotKey(nodes, buildButtons[12])
nodes.$1371_widget_text = getWidgetHotKey(nodes, buildButtons[13])
nodes.$1372_widget_text = getWidgetHotKey(nodes, buildButtons[14])
nodes.$1373_widget_text = getWidgetHotKey(nodes, buildButtons[15])

nodes.$181_widget_text = getWidgetHotKey(nodes, workButtonBlocks[1])
nodes.$501_widget_text = getWidgetHotKey(nodes, workButtonBlocks[2])
nodes.$512_widget_text = getWidgetHotKey(nodes, workButtonBlocks[3])
nodes.$513_widget_text = getWidgetHotKey(nodes, workButtonBlocks[4])
nodes.$514_widget_text = getWidgetHotKey(nodes, workButtonBlocks[5])
nodes.$518_widget_text = getWidgetHotKey(nodes, workButtonBlocks[6])
nodes.$519_widget_text = getWidgetHotKey(nodes, workButtonBlocks[7])
nodes.$520_widget_text = getWidgetHotKey(nodes, workButtonBlocks[8])
nodes.$542_widget_text = getWidgetHotKey(nodes, workButtonBlocks[9])

nodes.$215_widget_text = getWidgetHotKey(nodes, 9)
nodes.$529_widget_text = getHotKey(29)
nodes.$595_widget_text = getHotKey(62)
nodes.$460_widget_text = getHotKey(107)
nodes.$1406_widget_text = getHotKey(109)
nodes.$157_widget_text = getWidgetHotKey(nodes, 239)
nodes.$951_widget_text = getWidgetHotKey(nodes, 945)
nodes.$120_widget_text = getWidgetHotKey(nodes, 119)
nodes.$395_widget_text = getWidgetHotKey(nodes, 183)
nodes.$1007_widget_text = getWidgetHotKey(nodes, 201)
nodes.$1105_widget_text = getWidgetHotKey(nodes, 456)
nodes.$1136_widget_text = getWidgetHotKey(nodes, 1133)
nodes.$1135_widget_text = getWidgetHotKey(nodes, 1134)
nodes.$234_widget_text = getWidgetHotKey(nodes, 217)
nodes.$214_widget_text = getWidgetHotKey(nodes, 206)
nodes.$902_widget_text = getWidgetHotKey(nodes, 901)

for i = 1, #transformationHotKey do
	id = transformationHotKey[i]
	local node = nodes.@id
	node.widget_text = getWidgetHotKey(nodes, transformationButton[i])
end

id = playersListStatus[1]
playerStatusOn = nodes.@id_widget_image
id = playersListStatus[2]
playerStatusOff = nodes.@id_widget_image
id = playersListStatus[3]
playerStatusMe = nodes.@id_widget_image

$version = true
nodes.$163_widget_text = "Early Access - v"..$lastResult

playersChatBan = {}
chatToRun = {}

ticked = false
sessionInited = true
idlerWorkerNum = 1
choosenUnitTypeId = nil
borderMapState = false
minimapShowEnvs = true
minimapPressed = false
massUpdateMass = true
showMinimapIcons = {}
editorMode = $editor
HQx = 0
HQy = 0
HQid = nil
timelineType = "all"
lastDamageTimeMe = -100000
lastDamageTimeAlly = -100000

local nodes = getNodes()
local gSes = $session_gameplay
local storage = gameplay.dataStorage

local streamMode = gSes.streamMode
isModeSingle = (streamMode == 0)
isModeNetwork = (streamMode == 1)
isModeReplay = (streamMode == 2)
nodes.$146_visible = not isModeReplay
nodes.$1149_visible = isModeReplay and storage.useTimeline ~= nil
nodes.$1151_visible = isModeReplay

nodes.$1139_widget_checked = false
timelineByTeams = false

sendResourcesData = storage.srr
local pns = storage.playerNames
playerNames = nil
playerFonts = nil
if pns ~= "" then
	playerNames = fromJson(pns)
	playerRankings = fromJson(storage.playerRankings)
	if playerNames ~= nil then
		playerFonts = {}
		for i = 1, #playerNames do
			if editorMode and playerRankings ~= nil then playerNames[i] = "("..playerRankings[i]..") "..playerNames[i] end
			$detectLanguage = playerNames[i]
			local font = fonts[$lastResult]
			assert(font ~= nil)
			table.insert(playerFonts, font)
		end
	end
end

local controlledPlayer = gSes.controlledPlayer
local vSession = $session_visual
local currentFaction = vSession.currentFaction
local currentPlayer = getPlayerOfFaction(currentFaction)
local scene = gameplay.scene_0
local teams = scene.teamsCount
local factionsCount = scene.faction_size
teamMode = teams < factionsCount

updateTeamBlocks()

for pl, pos in pairs(playersListPosition) do
	if pos > 40 then break end
	id = playersListNames[pos]
	local n = nodes.@id
	n.visible = true
	writePlayerToWidget_(pl - 1, n.widget)

	id = playersListStatus[pos]
	local n = nodes.@id
	n.visible = true
	
	if pl - 1 == currentPlayer then
		n.widget_image = playerStatusMe
	else
		n.widget_image = playerStatusOn
	end
end

nodes.$975_visible = true

local sFactions = gameplay.scene_0_faction
local players = gameplay.player_size
timelineTeams = {}
timelineTeamsCount = 0
for plId = 1, players do
	local function func(facId)
		id = facId
		local team = sFactions.@id_team + 1
		if timelineTeams[team] == nil then
			timelineTeams[team] = {plId}
		else
			table.insert(timelineTeams[team], plId)
		end
	end
	forEachPlayerFaction(plId - 1, func)
end
for _,_ in pairs(timelineTeams) do
	timelineTeamsCount = timelineTeamsCount + 1
end

nodes.$1389_visible = true
nodes.$830_visible = false

id = controlledPlayer
local eliminated = gameplay.player_@id_eliminated
if eliminated then
	nodes.$471_visible = true
	nodes.$230_visible = true
end

$interface_create = {"/project/Tools/cameraMove", "cameraMove", interfaceScale, interfaceScale, "bordersScroll", toBool($storage_bordersScroll)}
$interface_cameraMove_active = true
$interface_cameraMove_priority = 500

$interface_create = {"/project/Tools/cinematicCamera", "cinematic", interfaceScale, interfaceScale, "cbInterfaceHide", "session", "cbScriptHide", 82}
$interface_cinematic_priority = 80

$interface_create = {"/project/Tools/scene", "scene", interfaceScale, interfaceScale, "useFrame", true, "useSignals", true, "bottom", nodes.$205_sizeY, "signalScript", 37, "addSelectionHotKey", addSelectionHotKey, "envSignalTags", 128}
$interface_scene_active = true
$interface_scene_priority = -100

$interface_create = {"/project/Tools/settings", "settings", interfaceScale, interfaceScale, "cbInterface", interfaceId, "cbScript", 28, "healthBarAppDefault", 2, "healthBarAppColored", 1027, "dumpFileName", $system_localFolder.."/dump.dat"}
$interface_settings_priority = 90

id = currentFaction
local chatBanned = gameplay.faction_@id_abilities_18
local n = nodes.$11
$interface_create = {"/project/Tools/chat", "chat", interfaceScale, interfaceScale, "banned", chatBanned, "playerNames", toJson(playerNames), "colors", toJson(playersColors), "cbInterface", interfaceId, "cbScript", 73, "x", n.screenLeft, "y", n.screenTop, "sx", n.sizeX, "sy", n.sizeY, "horizontalAlign", n.horizontalAlign, "verticalAlign", n.verticalAlign, "sound", 256}
$interface_chat_active = true
$interface_chat_priority = 70

local n = nodes.$1
$interface_create = {"/project/Tools/minimap", "minimap", interfaceScale, interfaceScale, "moveScript", 11, "signalScript", 37, "showTerritories", false, "x", n.screenLeft, "y", n.screenTop, "sx", n.sizeX, "sy", n.sizeY, "horizontalAlign", n.horizontalAlign, "verticalAlign", n.verticalAlign, "targetName", "objectsMinimap", "textureName", "minimapEnvs"}
$interface_minimap_active = true
$interface_minimap_priority = 50

local n = nodes.$1609
$interface_create = {"/project/Tools/minimap", "bigminimap", interfaceScale, interfaceScale, "moveScript", 11, "signalScript", 37, "showTerritories", false, "x", n.screenLeft, "y", n.screenTop, "sx", n.sizeX, "sy", n.sizeY, "horizontalAlign", n.horizontalAlign, "verticalAlign", n.verticalAlign, "targetName", "minimapObjectsBig", "textureName", "minimapEnvsBig"}
$interface_bigminimap_priority = 50

local data = {
	nationNames = nationNames,
	unitNames = unitNames,
	unitNations = unitNations
}
$interface_create = {"/project/Tools/unitTypes", "sessionUnitTypes", interfaceScale, interfaceScale, "data", toJson(data)}
$interface_sessionUnitTypes_priority = 150

local n = nodes.$46
$interface_create = {"/project/Tools/unitsSelectedGroup", "unitsSelectedGroup", interfaceScale, interfaceScale, "rightDirection", false, "x", n.screenLeft, "y", n.screenTop, "sx", n.sizeX, "sy", n.sizeY, "horizontalAlign", n.horizontalAlign, "verticalAlign", n.verticalAlign, "allFactionsAsMy", isModeReplay, "cbInterface", interfaceId, "cbScript", 12}
$interface_unitsSelectedGroup_active = true
$interface_unitsSelectedGroup_priority = 30

if isModeReplay then
	$interface_create = {"/project/Tools/replay", "replay", interfaceScale, interfaceScale, "playerNames", toJson(playerNames)}
	$interface_replay_active = true
	$interface_replay_priority = 40
end

updateFactionsColors()

local kickRightsPlayer = tonumber(storage.kickRightsPlayer)
nodes.$378_visible = isModeNetwork and kickRightsPlayer ~= nil and kickRightsPlayer == controlledPlayer

nodes.$373_visible = storage.playersLocalId ~= nil

id = currentFaction
local abilities = gameplay.faction_@id_abilities
local workersDance = abilities.size > 1 and abilities.$1
local pikemanAgroDance = abilities.size > 4 and abilities.$4

unitCanDance =
{
	[1] = workersDance,
	[12] = workersDance,
	[31] = workersDance,
	[55] = workersDance,
	[56] = workersDance,
	[89] = workersDance,
	[90] = workersDance,
	[201] = workersDance,
	[301] = workersDance,
	[349] = workersDance,
	[22] = pikemanAgroDance,
	[36] = pikemanAgroDance,
	[39] = pikemanAgroDance,
	[48] = pikemanAgroDance,
}
         9-  @@   � @   � A  ��@A �A�@B��B�@B�@@B� ć�Ĉ�ĉ�B����F�E @ �F@F �� d� @ �F@F �  d� @��F@F �� d� @��F@F �  d� @��F@F �� d� @��F@F � 	 d� @��F@F ��	 d� @��F@F � 
 d� @��F@F ��
 d� @��F@F �  d� @��F@F �� d� @��F@F �  d� @��K ��� ��  AA �� ��  AB �� � � A �C �� � k@�@��K ��@ �� � A �A �� � A �B �� � A �C �� � k@�@ �K �� ��@ � A� �� � � A� �� �� C A� �� �� � A� �@�� �� A �A �� � A� � �� � AC �� �� � A� �� �@��A� � �A � A� � �B � A� �� �� � A� �� �� +A�K�� �A � A� �� �� � A �C �� � A� �� � � kA����A � A� � �B � A� �� � D A� �� �� � A� �A���� A �B �� � A  �C  ��  �  A! �� �D! �! A� �� �A��A ��! �" C" A�" ��" �# � AD# ��# �� �# A$ �� �� +B�K��B$ ��$ �$ A% �C% ��% �% A& �D& ��& �& A' �E' �� �' kB����B$ �' A�$ �% �C% �% A�% �& �D& �& A�& �� �E' ( AF( �B���C$ A�( ��$ �% D% A�% ��% �& E& A�& ��& �! F' A� �F( �B��AC$ ��( ��$ % AD% ��% ��% & AE& ��& ��& ' AF' �) ��' +C�K��C$ �C) �$ A% �D% ��) �% A& �E& ��) �& A* �F' �F* � kC����C$ �* A�$ �% �D% �% A�% �& �E& �& A�& �' �F' � A�' �C���D$ A�* ��$ �% E% A�% ��% �& F& A�& ��& �� G' A� ��' �C��AD$ �+ ��$ E+ AE% ��+ �� �+ AF& ��& �� ' AG' �� �G( +D�K��D$ �, �$ A% �E% ��% �% A& �F& ��& �& A� �G' �� H( kD����D, �, A�$ �% �E% �% A�% �& �F& �& A�& �' �G' �, A�' �D���E$ A- ��$ �% F% A�% ��% �& G& A�& ��& �� H' A� �H( �D�k@ 	@ �K ���- ��- . AA. ��. � �. A/ �B/ k@�@��K ���- ��- . AA. ��. � �. A/ ��" k@�@ �K �� 0 �@0 �0 A�0 �1 �A1 �1 A�1 �  k@�@��K ��@2 ��2 �2 A3 �A3 ��3 �3 A4 �  k@�@ �K ���4 ��4 5 AA5 ��5 ��5 6 AB6 �  k@�@��K ���6 � 7 A7 A�7 ��7 �8 B8 A�8 �  k@�@ �K �� 9 �@9 �9 A�9 �: k@�@��K ��@ �� � A�# ��  k@�@��K  ��: � ; A; A�; ��; �< k@ @ �K ���< ��< = AA= ��= k@�@��K  � > �@> �> A�> �? �A? �? A�? �@ �B@ �@ A�@ �A �CA �A A�A �B �DB �B A�B �C �EC �C A�C �D �FD �D A�D �E �GE �E A�E �F �HF �F A�F �	G �IG �G A�G k@ @��A H �  �@H �H A�H �I �AI �I A�I �J �BJ �J A�J �K �CK �K A�K �L �DL �L A�L �M �EM �M A�M �N �FN �N A�N �O �GO �O A�O �P �HP �P A�P �	Q �IQ �Q A�Q �
R �@ �� A@R �  ��R �R AS �AS ��S �S AT �BT ��T �T AU �CU ��U �U AV �DV ��V �V AW �EW ��W �W AX �FX ��X �X AY �GY ��Y �Y AZ �HZ ��Z �Z A	[ �I[ ��[ �[ A
\ �J\ �@ �� A�\ �  ��\ ] AA] ��] ��] ^ AB^ ��^ ��^ _ AC_ ��_ �C � A� �D �@ �� A�_ � �� ` A` A�` ��` �a Ba A�a �@��� A�a � �� b Ab A�b ��b �c �@��� A@c � ���c �c Ad �Ad ��d �@��� A�d � �� e Ae A�e ��e �f �@��� A@f �� ��լ�@ԭ��f �� �� V��@֛��f ���� W���װ��ͱ��f ������ A g � ��� � A� �� �� � A� �� �� � A� �� �� D AD �D �� � A� �� �� � A� �� �� G A� �� �G H AH �H �H I AI �I �� � A� �J �J K AK �K �K L AL �L �L M �@ ��  A� �A ��  A� � ��  A� �C �C D A� �� �� � A� �� �� � A� �� �� � A� �� �� � A� �� �� I A�f �I ��f J A�f �J ��f  A � �  A � �  �� �   A �� �  A � �  A � �C D AD �D �D E AE �E �E F AF �F �F G AG �G �G H AH ��f ��f �f A�f ��f ��f �f A�f ��f ��f �f A�f ��f ��f  A � �  �� �   A �� �� � A� �� �� � A� �� �� �f AD �D �D E AE ��f ��f �f A�f ��f ��f �f A�f � �  A � �� � A� �� �I J AJ �J �
  A � �  A � �� M � ��  A � �  A � � � AC � �  A � �� � A� �� �� F AF �F �F G A�f ��f ��f �f A�f �� � I A	 �	 �� J A�f �
 �
  A � �  A � � M �@�    A � �A B AB � �B C AC �C �C D A� �� �� � A� �� ��  A � �   A � �  A � �� � A� �� �� � A� �� �
  A �� �� � A� � �� � ����  A� �� �� � A� �� �B � A� � � � A � �  A � � � AF ��f ��f �f A�f ��f ��f �f A�f ��f ��f �f D	  ��f ��f 
 A
 �
 �
  A � �  A � �  ���   A � � B A� �  �B C AC �C �C D A � �D E AE �E � F A� �� �� � A� �� �� � A� �� �� 	� �I �I J AJ �J �J K AK �K �K L D  �� ��   � �� A@g �   �� A�g �@  �� A�g F@  � h �   � �@h ��h ��� Ah �����h �� �i ���h �� �g  ABh NB�$ �A  ���� ��  Ai A�i �@  A�i ��i +A K �j ��i kA �@�� � AAj ��j +A K ��j ��j kA � �j �i �A � k A�j �A  ABk ��j +B K ��k ��j kB � ��k �j �B � l A�j �B  ACl ��i +C K ��i ��i kC � ��l �j �C � �l Am �C  ADm ��j +D K ��m ��m kD � �n �j �D � En A�i �D  A�n ��j +E K ��n ��j kE � �o �j �E � Fo A�o �E  A�o �p +F K �Fp ��i kF � ��p �i �F � �p A�j �F  Aq ��j +G K �Gq ��j kG � ��q �j �G � �q A�j �G  Ar ��j +H K �Hr ��j kH � ��r �j �H � �r A�j �H 	 A	s ��j +I K	 �Is ��j kI �	 ��s �j �I �	 �s A�j �I 
 A
t ��m +J K
 �Jt ��t kJ �
 ��t �j �J �
 u A�m �J  AKu ��j +K K ��u ��i kK � ��u �j �K � v A�i �K  ALv ��j +L K ��v ��j kL � ��v w �L � Mw A�w �L  A�w ��j +M K �x ��t kM �@  AAx ��j +A K ��x ��j kA � ��x �j �A � y A�j �A  ABy ��m +B K ��y �Bo kB � ��y �j �B � z A�j �B  ACz �w +C K ��z ��j kC � ��z �j �C � { A�m �C  AD{ ��{ +D K ��{ ��m kD � �| �j �D 뀀A| _  ���|  @  $�      AAh ���Ah h��G �B| ����A�h FB �i G��� ��dB���A�h FB �i G��� ��| ��  �� dB  g���  } A�| FA ��d� @A} K  @�} l�  @�}  $A� �} l�  @~ l @A~ lA @�~ l� @�~ l� @ K��A �� � A� �B� kA�@�� K���� �� B� A�� � kA�@� K��A� ���  A� �B� kA�@�� K���� �� B� A�� � kA�@� K��A� ���  A� �B� kA�@�� K�� ��� � �A � B� A�� �A  A �� +B K �B� ��� kB � � � �B kA�@A� K���� ��� � AB� ��� kA�@�� K��� �A� �� A �� kA�@A� K���� ��� �� A�� ��� ��� �� kA�@�� K���� � AB� ��� � �A  A� �B� ��� Î +B K �� �B� �� AÏ kB �A��� A� �B� ��� Ð +B K �� �B� �� AÑ kB � �� C� A�� �Ò �B �A��K �� �B� �� AÓ kB � �� C� A�� �Ô �B � � AC� ��� �Õ �B +B�K�� �� C� A�� �Ö �B � � AC� ��� �× �B  A� �C� ��� Ę +C kB���� � AC� ��� �Ù �B  A� �C� ��� Ě +C K �� �C� �� Aě kC �B�kA�@� KA  �A� �� �� �A� J�@�� K� ��� J������ J����� J�ˁ�� J��ˁA� �A� J��� �A� J��� J���� J�����f �� J��� J��JAU�JAլJAհJAձJ��J��JUƁA� JU��� JUJU�J��JU�Jի��� JU�� JUJկ�A� JU��� JUJ���@�� K�
 ��� �A � A +B� K� �� kB� �� �B� �B� ʁ��A J��� ��  B� K� �� kB� �A� K� �B kB� �A A �B� +B ���J��A  �  AB� �A ����J����A  �  AB� �A ����J�������  �A�  A�f �B� +B K� �� kB� �� �B �B� �����f �� C �B� ��� � � �B �����A�J���A���  �A� � AB� +B� K� �� kB� �� �B �B� �����A�J���� �� B �A� �����  �A� ������f � A +B� ��� B� A� �A ���J����� �A� � A +B� K� �B� kB� �A��A� J��A� �A   A �B� +B ���J��A  �  AB� �A ����J�����f �A   A �B� +B ���J��A  �  AB� �A ����J���� ��  �A� � A +B� �� A� ��f +B ����f K� �� kB� �A�AB� �B �B +B����A� J���A� ˁ� � A +B� K� �B� kB� �A�K� �� kB� �A���A� J��A  �  AB� �A ����J����A �� � �A� � AB +B� K � �B� kB �A���A J����� ��  �A� � AB� +B� K� �� kB� � �B C �B �� �f �B� � A +C� A�f �� � �C� ���K �� � kC �A�K �� �C kC �A���A J����� ��  �A� � A +B� K� �B kB� �A�K �B� �� kB �A���A J���A  �  AB� �A ����J���� ��  �A� � AB� +B� K� � kB� �A�K �� �B kB �A���A J����A��� � �A� � AB +B� K� �B kB� �� � �B� �� � �B�  AÜ �C� +C ����A�J����� ��  �A� � AB +B� �� AB� �� +B ����A� J���A  �  AB� �A ����J���A  �  AB� �A ����J����A  ��  �A� ����J����� �A   A �B� +B ���J��A  �  AB� �A ����J����A  �  AB� �A ����J����� �A   A �B� +B ���J��� �A� � A� +B� K � �B� kB �A���A� J��A� �A   A �B� +B ���J���� �A� � A +B� K �B� �� kB �A���A� J���� �A� � A +B� K �B� �� kB �A���A� J��� ��  �A� � A +B� �� A� ��f +B ����f K� �� kB� �A�AB� �B �B +B����A� J����� ˁ� � A +B� K� �B� kB� �A�K� �� kB� �A���A� J��A  �  AB� �A ����J�����  �A� � A� +B� ���� � AB +B� ���  AB� �A ����J������  �A� � AB� +B� K� ��f kB� �  ��  �B� � AC +C� D  �� �� �C� � � AD �C �A�J���A �A�  A � +B ����  A� �B� +B ����f � AB +B� ���� �f �A� ���� � AB �A ����J����A� ��  �A� � K �B �B� kB �A� A +B� ��� A� +B� ���� A�f +B� �� A� �B +B ����A� J���A  �  AB� �A ����J���A� �A� � A +B� K �B� �� kB �A���A� J��� ��  �A� � AB� +B� K� � kB� �A�K �� �B kB �A���A J���A  �  AB� �A ����J����A  �  AB� �A ����J����A  �  AB� �A ����J���A� �A   A �B� +B ���J���� �A   A �B� +B ���J��A  �  AB� �A ����J���A  �  AB� �A ����J��ËA  �  AB� �A ����J����A  ��  �A� ����J�ċA  �  AB� �A ����J���A  �  AB� �A ����J������ �A� � A� +B� K � �B� kB �A���A� J��� �A   A �B� +B ���J��A� �A   A �B� +B ���J���� �A� � A +B� K �B� �� kB �A���A� J���� �A� � A +B� K �B� �� kB �A���A� J��� �A  � A +B� ���J�� ��  �A� � A +B� K� ��f kB� �� �B �B� � � A �B  AC �� � � +C K� �C kC� ���C� � A� �C��A J���A� ˁ� � A +B� K �� � kB �A�K� �B kB� �A���A� J��A  �� AB� �� �B  �A�����J����A  ��  �A� ����J�A �� B� �A� � A� +B� D  �� �B �B� �� Ü �B� �����A J��ċ�  �A� � AB� +B� ����  �A� ����J��ыA� ��  �A� � AB� +B� ����A� J��̋A� ��  �A� � A +B� ��� AB� +B� ����f K� �� kB� �A� AB +B� ��� A� +B� ����A� J��ˋ����  �A� � AB� +B� K� �� kB� �� � �B� �����f �� � �B� ��� �B C �B �����A�J��΋����  �A� � AB� +B� K �B �� kB �� �B �B� �� �f �B� �f K� � kC� �A� A� +C� ��� A +C� ����A�J��ȋ� � B A� �A  A �� +B K �B ��f kB �� � �B� �� C� �B� � A +C� A�f �� �� �C� ���K� �C kC� �A�K � �� kC �A���A J�͋� ��  �A� � AB� +B� K� �B kB� �A�K� �� kB� �A�K� � kB� �A���A J�̋����  �A� � AB� +B� K� �B kB� �� �� �B� ����� � �B� �����A�J��ϋ� ��  �A� � A +B� K� �� kB� �A�K� �B� kB� �A�K �B �� kB �A���A J�ыA ��  �A� � A� +B� K� �B� kB� �� �B �B� ��  �B� �����A J�ՋA ��  �A� � AB� +B� K� �� kB� �� �B �B� ��  �B� �����A J�΋A���  �A� � A� +B� K� �B� kB� �� �� �B� �� C �B�  A �C +C ����A�J��Ё�� �A  � A +B� ���J��A  ��  �A� ����J����A  ��  �A� ����J���A  ��  �A� ����J����� �A  � A +B� ���J��A  ��  �A� ����J�Ӌ ��  �A�   K� �B kB� �� � �B� � � A �B  AC �� � � +C K� �C kC� ���C� � A� �C��A J����� ˁ� � A +B� K �� � kB �A�K� �B kB� �A���A� J��A� ��  �A� �AB� �� �B  A� +B�����A� J��A  ��  �A� ����J�ËA �� B� �A� � A� +B� D  �� �B �B� �� Ü �B� �����A J�ŋ�  �A� � AB� +B� ����  �A� ����J����� � A� �B� +B K �B � kB � �� C �B �� Ü �B� � A� +C� ����f K� �C kC� �A� A +C� �� A�f � +C ����A J��� �A� � A +B� K� �B� kB� �A���A� J���� �A� A� � +B K� �B� kB� �� �� �B� �� C �B� � A +C� K� �C kC� �� ��f �C� ��  �C� �����A�J��A���  �A� � AB� +B� K� �� kB� �� �B �B� ��  �B� � A� +C� K� �C kC� � ��f  �C �����A�J�ǋ����  �A� � AB� +B� K� �� kB� ��f ��  �B� ��� �B � �B �����A�J��ǋ����  �A� � AB� +B� K �B �� kB �� �B �B� �� �f �B� �f K� � kC� �A� A� +C� ��� A +C� ����A�J����A� �A   A �B� +B ���J���� �A   A �B� +B ���J���� �A  � A +B� ���J��� �A  �A �B� �� +B����J��A� �A   A �B� +B ���J���� �A  �A �B� �� +B����J��A  �� AB� �� �A�����J�܋ ��  �A� � �� ��f �B� � � A �B  AC �� � � +C K� � kC� ���C� � A� �C��A J����� ˁ� � A +B� K �� � kB �A�K� �B kB� �A���A� J��A  �� AB� �� �A�����J����A  ��  �A� ����J��ʋ�  �� B� �A� �����  �A� ����J��ɋ�  �A� � AB� +B� ���� � A� +B� ����  �A� ����J��֋A� ��  �A� � AB� +B� ����A� J�ϋ� ��  �A� � AB� +B� K� � kB� �A�K� �B kB� �A�K� �� kB� �A���A J��Ջ� �� B� �A� � A +B� K� �B kB� �A��K �� � kB �A���A J�֋A��  �A� � AB� +B� K� �B kB� �A�K� �B kB� �A��A�f �� � �B� ���K� �� kB� �A�K� �� kB� �A���A J��׋A ��  �A� � AB� +B� K ��f �� kB �� � �B� ��  �B� � A� +C� K� �C kC� �� �C �C� �� D �C� �����A J�׋A  ��  �A� ����J�ځ� ˁ� � A +B� K� �� kB� �A�K� �B� kB� �A���A� J��A  ��  �A� ����J�݁A� �A   A �B� +B ���J���� �A  � A +B� ���J��A� ��  �A� � AB� +B� ����A� J��؁�� �A  � A +B� ���J������  �A� � AB� +B� K� �� kB� �� � �B� ����� �B �B� �����A�J�؋A  �  AB� �A ����J�ދ ��  �A�   K� �B kB� �� ��f �B� � � A �B  AC �� � � +C K� �C kC� ���C� � A� �C��A J����� ��  �A�  A� � +B ��� AB +B� ����A� J���A  �  AB� �� �B �A ����J�ɋA  �  AB� �A ����J�ˋ�  �� B� �A� �����  �A� ����J�ʁ� ˁ  B� K� �B� kB� �A� A +B� ���J��A� �A� � A +B� K �B� �� kB �A���A� J���� ��� A +B� K� �B� kB� �� �� �B� �� � �B� ����� C �B� ������  �B� ����� C �B� �����A�J���� �A� A +B� K ��f �B� kB �� �� �B� �� C �B� � AC +C� ��� AC +C� ����f K� �� kC� �A� A +C� ��� A +C� ����A J��� ˁ � A +B� K� �B� kB� �� �� �B� �� C �B� � A� +C� �� A �C +C ����A J��A  ��  �A� ����J��A� �A   AB� � +B ���J���� �A   A �B� +B ���J���� �A   A �B� +B ���J��� �A   A �B� +B ���J��A  ��  �A� ����J��A� �A � A +B� K� �B� kB� �� �� �B� �� C �B� � A +C� ����A J��A  �  AB� �A ����J�򁁩 ��� � A +B� K��B� �B  kB��A�K �� � C AC kB �A��K ��f �� kB �A��A� J���� ˁ�  A ��f +B K �B� �B  AC kB �A�K��� � � AC �� kB��A���A� J��� ˁ � A +B� K� �� kB� �� �B� �B� ʁ��� �B �B� ʁ��A J��A� �  A �B �� �f +B K �B� �� kB � � �f �B �� A� �� �B��A �� �C +C�K� �C kC� �� �� �C� � D A �C �A J���� � � A� +B� K�� �� �� kB�� �� �� A� ��f �C D �B �  A� �C� �ê  A� �D �� �B �A � �� � AD� +C�K��C �� � kC�� � � AD �D ��!  �C ���f AD �D �� � AE �� �� � A � �C��A J��� ��� A +B� K �B� � kB �� �� �B� �� � �B� � AC +C� �A�J��A� �  A �B +B K� �B� kB� � �� C �B �� A �� �B�� AC +C� K �� �� kC �� �� �C� �� A�f ��f �C��A J���� �� A� � � � +B K �B �B� kB �� � AC +C� �A�J���� �  A ��f +B K �B� �B kB �� �� �B� �� C �B� �AC �� �� +C�K� �� kC� ����  A �C��  A�f �C �A J��� �A  � A +B� ���J��A� �A  � A +B� ���J���� ��� � A +B� K��B� �B  kB��A�K �� � C AC kB �A��K ��f �� kB �A��A� J���� ��� � A +B� K �B� �B  A kB �A�K �� �B C A� kB �A��K ��f �� kB �A��A� J���� ��  �A� �AB� �B � +B��� A� � �B C +B ��� A�f �� +B ���A� J��� �A  � A +B� ���J��A� ��� � A +B� K��B� �B  kB��A�K �� � C AC kB �A��K ��f �� kB �A��A� J���� ��� � A +B� K��B� �B  kB��A�K��� � C AC �� kB��A��K ��f �� kB �A��A� J���� ��� � A +B� K��B� �B  kB��A�K �� � C AC kB �A��K ��f �� kB �A��A� J��A  ��  �A� ����J��� �A � A +B� K� �� kB� �� �B� �B� ʁ���A J���� ��  �A�  AB� �B �  +B �� A� �B �B � +B ��� A�f �� +B ���A� J�� �� �f �A�  A� � +B K � �B kB �� �B� �B� �� C �B�  AC �� +C K � � kC �� �� �C� �A J��A� �   K� � kB� �A J���� ��� � A +B� K��B� �B  kB��A�K �� � C AC kB �A��K ��f �� kB �A��A� J���� �   K� � kB� �A J��� ��� � A +B� K��B� �B  kB��A�K �� � C AC kB �A��K ��f �� kB �A��A� J��A� ��� � A +B� K��B� �B  kB��A�K �� � C AC kB �A��K ��f �� kB �A��A� J�@�� KA ��� �  AB� �A J�� �A� B� �A J�Ћ ��� B� �A J��́� �  AB� �A J��A� �  AB� �A J���� �  AB� �A J�� ��� B �A J���� ��� B� �A J����� �  AB� �A J���� J�ہ�� �  AB �A J���� �  AB� �A J���� �  AB� �A J�� ��� B� �A J��܁A� �  AB� �A J��A� �  AB� �A J��� �  AB� �A J��A� � B� AB� �A J���� �  AB� �A J���� �  AB� �A J��� � B� AB� �A J��A� �  AB� �A J���� �  AB� �A J���� �  A� �A J��� �  AB� �A J�� �A� B� �A J�ށA� �  AB� �A J�� �A� B� �A J���� �A� B� �A J��� �A� B� �A J�� �A� B� �A J�끁� �  AB� �A J���� �  AB� �A J��� � B� AB� �A J��A� � B� AB� �A J���� � B� AB� �A J���� �  AB� �A J���� � B� AB� �A J��� � B� AB� �A J��A� �  AB� �A J���� �  AB� �A J���� �  AB� �A J��Ad �  AB� �A J���b �  AB� �A J��� � B� AB� �A J��A� � B� AB� �A J���� �  AB� �A J���� �  AB� �A J��� � B� AB� �A J��A� �  AB� �A J���� �  AB� �A J���� � B� AB� �A J�� �A� B� �A J��� �  AB� �A J��A� �  AB� �A J���� �  AB� �A J�� �A� B� �A J��� �A� B� �A J��� ��� B� �A J�� �A� B� �A J�� ��� B� �A J��灁d �  AB� �A J�� �A� B� �A J���� � B� AB� �A J��� ��� J��A� � B� AB� �A J���� � B� AB� �A J���� � B� AB� �A J��� � B� AB� �A J��A� � B� AB� �A J���� � B� AB� �A J�@�� K 	�AF �� �� �AF B� � BF A�� $� FBF �» d� �BF �� �� �BF C� � CF A�� $� FCF �ü d� �CF �� �� �CF D� � DF A�� $� FDF �Ľ d� �DF �� �� �� EF AE� $� FEF ��� d �D  EF Až $� FEF �� d� �EF �E� �� �EF �� � � FFF �ƿ d� �FF �� � +F  kA�	@A� K��AF ��� �� �AF �� � BF A� $� FBF �B� d� �BF ��� �� �BF �� � CF A� $� FCF �C� d� �CF ��� �� �CF �� � DF A� $� FDF �D� d� �DF ��� �� �DF �� � EF A� $� FEF �E� d� �EF ��� �� �EF �� � FF A� $� FFF �F� d� �FF ��� �� �FF �� � GF A� $� FGF �G� d� �GF ��� �� �GF �� � HF A� $� FHF �H� d� �HF ��� �� �HF �� � IF A	� $� FIF �I� d� �IF ��� �� �IF �� � JF A
� $� FJF �J� d� �JF ��� �� �JF �� � KF A� $� FKF �K� d� �KF ��� �� �KF �� � LF A� $� FLF �L� d� �LF ��� �� �LF �� � MF A� $� FMF �M� d� �MF ��� �� �MF �� � kA �AF �� �� �AF B� � BF A�� $� FBF ��� d� �BF �� �� �BF C� � CF A�� $� FCF ��� d� �CF �� �� �CF D� � DF A�� $� FDF ��� d� �DF �� �� �DF E� � EF A�� $� FEF ��� d� �EF �� �� �EF F� � FF A�� $� FFF ��� d� �FF �� �� �FF G� � GF A�� $� FGF ��� d� �GF �� �� �GF H� � HF A�� $� FHF ��� d� �HF �� �� �HF I� � IF A�� $� FIF ��� d� �IF �	� �� �IF J� � JF A�� $� FJF ��� d� �JF �
� �� �JF K� � KF A�� $� FKF ��� d� �KF �� �� �KF L� � LF A�� $� FLF ��� d� �LF �� �� �LF M� � MF A�� $� FMF ��� d� �MF �� �� �MF N� � k� �AF ��� �� �AF �� � BF A� $� FBF �B� d� �BF ��� �� �BF �� � CF A� $� FCF �C� d� �CF ��� �� �CF �� � DF A� $� FDF �D� d� �DF ��� �� �DF �� � EF A� $� FEF �E� d� �EF ��� �� �EF �� � FF A� $� FFF �F� d� �FF ��� �� �FF �� � GF A� $� FGF �G� d� �GF ��� �� �GF �� � HF A� $� FHF �H� d� �HF ��� �� �HF �� � IF A	� $� FIF �I� d� �IF ��� �� �IF �� � JF A
� $� FJF �J� d� �JF ��� �� �JF �� � KF A� $� FKF �K� d� �KF ��� �� �KF �� � LF A� $� FLF �L� d� �LF ��� �� �LF �� � MF A� $� FMF �M� d� �MF ��� �� �MF �� � k� �AF �� �� �AF B� � BF A�� $� FBF ��� d� �BF �� �� �BF C� � CF A�� $� FCF ��� d� �CF �� �� �CF D� � DF A�� $� FDF ��� d� �DF �� �� �DF E� � EF A�� $� FEF ��� d� �EF �� �� �EF F� � FF A�� $� FFF ��� d� �FF �� �� �FF G� � GF A�� $� FGF ��� d� �GF �� �� �GF H� � HF A�� $� FHF ��� d� �HF �� �� �HF I� � IF A�� $� FIF ��� d� �IF �	� �� �IF J� � JF A�� $� FJF ��� d� �JF �
� �� �JF K� � KF A�� $� FKF ��� d� �KF �� �� �KF L� � LF A�� $� FLF ��� d� �LF �� �� �LF M� � MF A�� $� FMF ��� d� �MF �� �� �MF N� � k @�� K��AF ��� �� �AF � � BF AB� $� FBF ��� d� �BF ��� �� �BF � � CF AC� $� FCF ��� d� �CF ��� �� �CF � � DF AD� $� FDF ��� d� �DF ��� �� �DF � � EF AE� $� FEF ��� d� �EF ��� �� �EF � � FF AF� $� FFF ��� d� �FF ��� �� �FF � � GF AG� $� FGF ��� d� �GF ��� �� �GF � � HF AH� $� FHF ��� d� �HF ��� �� �HF 	� � IF AI� $� FIF ��� d� �IF ��� �� �IF 
� � JF AJ� $� FJF ��� d� �JF ��� �� �JF � � KF AK� $� FKF ��� d� �KF ��� �� �KF � � LF AL� $� FLF ��� d� �LF ��� �� �LF � � MF AM� $� FMF ��� d� �MF ��� �� �MF � � kA �AF �A� �� �AF �� � BF A�� $� FBF � d� �BF �B �� �BF � � CF A� $� FCF �d� �CF �C�� �CF �� DF A�$� FDF �d� �DF �D�� �DF �� EF A�$� FEF �d� �EF �E�� �EF �� FF A�$� FFF �d� �FF �F�� �FF �� GF A�$� FGF �d� �GF �G�� �GF �� HF A�$� FHF �d� �HF �H�� �HF �� IF A�$� FIF �	d� �IF �I�� �IF �� JF A�$� FJF �
d� �JF �J�� �JF �� KF A�$� FKF �	d� �KF �K	�� �KF �	� LF A�	$� FLF �
d� �LF �L
�� �LF �
� MF A�
$� FMF �d� �MF �M�� �MF �� k� �AF ���� �AF � BF AB$� FBF ��d� �BF ���� �BF � CF AC$� FCF ��d� �CF ���� �CF � DF AD$� FDF ��d� �DF ���� �DF � EF AE$� FEF ��d� �EF ���� �EF � FF AF$� FFF ��d� �FF ���� �FF � GF AG$� FGF ��d� �GF ���� �GF � HF AH$� FHF ��d� �HF ���� �HF 	� IF AI$� FIF ��d� �IF ���� �IF 
� JF AJ$� FJF ��d� �JF ���� �JF � KF AK$� FKF ��d� �KF ���� �KF � LF AL$� FLF ��d� �LF ���� �LF � MF AM$� FMF ��d� �MF ���� �MF � k� �AF �A�� �AF �� BF A�$� FBF �d� �BF �B�� �BF �� CF A�$� FCF �d� �CF �C�� �CF �� DF A�$� FDF �d� �DF �D�� �DF �� EF A�$� FEF �d� �EF �E�� �EF �� FF A�$� FFF �d� �FF �F�� �FF �� GF A�$� FGF �d� �GF �G�� �GF �� HF A�$� FHF �d� �HF �H�� �HF �� IF A�$� FIF �	 d� �IF �I �� �IF � � JF A� $� FJF �
!d� �JF �J!�� �JF �!� KF A�!$� FKF �"d� �KF �K"�� �KF �"� LF A�"$� FLF �#d� �LF �L#�� �LF �#� MF A�#$� FMF �$d� �MF �M$�� �MF �$� k @�$K��AF �%�� �AF B%� BF A�%$� FBF ��%d� �BF �&�� �BF C&� CF A�&$� FCF ��&d� �CF �'�� �CF D'� DF A�'$� FDF ��'d� �DF �(�� �DF E(� EF A�($� FEF ��(d� �EF �)�� �EF F)� FF A�)$� FFF ��)d� �FF �*�� �FF G*� GF A�*$� FGF ��*d� �GF �+�� �GF H+� HF A�+$� FHF ��+d� �HF �,�� �HF I,� IF A�,$� FIF ��,d� �IF �	-�� �IF J-� JF A�-$� FJF ��-d� �JF �
.�� �JF K.� KF A�.$� FKF ��.d� �KF �/�� �KF L/� LF A�/$� FLF ��/d� �LF �0�� �LF M0� MF A�0$� FMF ��0d� �MF �1�� �MF N1� kA �AF ��1�� �AF �1� BF A2$� FBF �B2d� �BF ��2�� �BF �2� CF A3$� FCF �C3d� �CF ��3�� �CF �3� DF A4$� FDF �D4d� �DF ��4�� �DF �4� EF A5$� FEF �E5d� �EF ��5�� �EF �5� FF A6$� FFF �F6d� �FF ��6�� �FF �6� GF A7$� FGF �G7d� �GF ��7�� �GF �7� HF A8$� FHF �H8d� �HF ��8�� �HF �8� IF A	9$� FIF �I9d� �IF ��9�� �IF �9� JF A
:$� FJF �J:d� �JF ��:�� �JF �:� KF A;$� FKF �K;d� �KF ��;�� �KF �;� LF A<$� FLF �L<d� �LF ��<�� �LF �<� MF A=$� FMF �M=d� �MF ��=�� �MF �=� k� �AF �>�� �AF B>� BF A�>$� FBF ��>d� �BF �?�� �BF C?� CF A�?$� FCF ��?d� �CF �@�� �CF D@� DF A�@$� FDF ��@d� �DF �A�� �DF EA� EF A�A$� FEF ��Ad� �EF �B�� �EF FB� FF A�B$� FFF ��Bd� �FF �C�� �FF GC� GF A�C$� FGF ��Cd� �GF �D�� �GF HD� HF A�D$� FHF ��Dd� �HF �E�� �HF IE� IF A�E$� FIF ��Ed� �IF �	F�� �IF JF� JF A�F$� FJF ��Fd� �JF �
G�� �JF KG� KF A�G$� FKF ��Gd� �KF �H�� �KF LH� LF A�H$� FLF ��Hd� �LF �I�� �LF MI� MF A�I$� FMF ��Id� �MF �J�� �MF NJ� k� �AF ��J�� �AF �J� BF AK$� FBF �BKd� �BF ��K�� �BF �K� CF AL$� FCF �CLd� �CF ��L�� �CF �L� DF AM$� FDF �DMd� �DF ��M�� �DF �M� EF AN$� FEF �ENd� �EF ��N�� �EF �N� FF AO$� FFF �FOd� �FF ��O�� �FF �O� GF AP$� FGF �GPd� �GF ��P�� �GF �P� HF AQ$� FHF �HQd� �HF ��Q�� �HF �Q� IF A	R$� FIF �IRd� �IF ��R�� �IF �R� JF A
S$� FJF �JSd� �JF ��S�� �JF �S� KF AT$� FKF �KTd� �KF ��T�� �KF �T� LF AU$� FLF �LUd� �LF ��U�� �LF �U� MF AV$� FMF �MVd� �MF ��V�� �MF �V� k�AF �W�� �AF BW� BF A�W$� FBF ��Wd� �BF �X�� �BF CX� CF A�X$� FCF ��Xd� �CF �Y�� �CF DY� DF A�Y$� FDF ��Yd� �DF �Z�� �DF EZ� EF A�Z$� FEF ��Zd� �EF �[�� �EF F[� FF A�[$� FFF ��[d� �FF �\�� �FF G\� GF A�\$� FGF ��\d� �GF �]�� �GF H]� HF A�]$� FHF ��]d� �HF �^�� �HF I^� IF A�^$� FIF ��^d� �IF �	_�� �IF J_� JF A�_$� FJF ��_d� �JF �
`�� �JF K`� KF A�`$� FKF ��`d� �KF �a�� �KF La� LF A�a$� FLF ��ad� �LF �b�� �LF Mb� MF A�b$� FMF ��bd� �MF �c�� �MF Nc� kA�AF ��c�� �AF �c� BF Ad$� FBF �Bdd� �BF ��d�� �BF �d� CF Ae$� FCF �Ced� �CF ��e�� �CF �e� DF Af$� FDF �Dfd� �DF ��f�� �DF �f� EF Ag$� FEF �Egd� �EF ��g�� �EF �g� FF Ah$� FFF �Fhd� �FF ��h�� �FF �h� GF Ai$� FGF �Gid� �GF ��i�� �GF �i� HF Aj$� FHF �Hjd� �HF ��j�� �HF �j� IF A	k$� FIF �Ikd� �IF ��k�� �IF �k� JF A
l$� FJF �Jld� �JF ��l�� �JF �l� KF Am$� FKF �Kmd� �KF ��m�� �KF �m� LF An$� FLF �Lnd� �LF ��n�� �LF �n� MF Ao$� FMF �Mod� �MF ��o�� �MF �o� k��AF �p�� �AF Bp� BF A�p$� FBF ��pd� �BF �q�� �BF Cq� CF A�q$� FCF ��qd� �CF �r�� �CF Dr� DF A�r$� FDF ��rd� �DF �s�� �DF Es� EF A�s$� FEF ��sd� �EF �t�� �EF Ft� FF A�t$� FFF ��td� �FF �u�� �FF Gu� GF A�u$� FGF ��ud� �GF �v�� �GF Hv� HF A�v$� FHF ��vd� �HF �w�� �HF Iw� IF A�w$� FIF ��wd� �IF �	x�� �IF Jx� JF A�x$� FJF ��xd� �JF �
y�� �JF Ky� KF A�y$� FKF ��yd� �KF �z�� �KF Lz� LF A�z$� FLF ��zd� �LF �{�� �LF M{� MF A�{$� FMF ��{d� �MF �|�� �MF N|� k��AF ��|�� �AF �|� BF A}$� FBF �B}d� �BF ��}�� �BF �}� CF A~$� FCF �C~d� �CF ��~�� �CF �~� DF A$� FDF �Dd� �DF ���� �DF �� EF A�$� FEF �E�d� �EF ����� �EF ƀ� FF A�$� FFF �F�d� �FF ����� �FF ǁ� GF A�$� FGF �G�d� �GF ����� �GF Ȃ� HF A�$� FHF �H�d� �HF ����� �HF Ƀ� IF A	�$� FIF �I�d� �IF ����� �IF ʄ� JF A
�$� FJF �J�d� �JF ����� �JF ˅� KF A�$� FKF �K�d� �KF ����� �KF ̆� LF A�$� FLF �L�d� �LF ����� �LF ͇� MF A�$� FMF �M�d� �MF ����� �MF Έ� k @�K��AF �A��� �AF ��� BF A$� FBF ��d� �BF �B��� �BF ��� CF AÊ$� FCF ��d� �CF �C��� �CF ��� DF Aċ$� FDF ��d� �DF �D��� �DF ��� EF AŌ$� FEF ��d� �EF �E��� �EF ��� FF Aƍ$� FFF ��d� �FF �F��� �FF ��� GF Aǎ$� FGF ��d� �GF �G��� �GF ��� HF Aȏ$� FHF ��d� �HF �H��� �HF ��� IF Aɐ$� FIF �	�d� �IF �I��� �IF ��� JF Aʑ$� FJF �
�d� �JF �J��� �JF ��� KF A˒$� FKF ��d� �KF �K��� �KF ��� LF A̓$� FLF ��d� �LF �L��� �LF ��� MF A͔$� FMF ��d� �MF �M��� �MF ��� kA �AF ����� �AF �� BF AB�$� FBF ���d� �BF ��� �BF �� CF AC�$� FCF ���d� �CF �×�� �CF �� DF AD�$� FDF ���d� �DF �Ę�� �DF �� EF AE�$� FEF ���d� �EF �ř�� �EF �� FF AF�$� FFF ���d� �FF �ƚ�� �FF �� GF AG�$� FGF ���d� �GF �Ǜ�� �GF �� HF AH�$� FHF ���d� �HF �Ȝ�� �HF 	�� IF AI�$� FIF ���d� �IF �ɝ�� �IF 
�� JF AJ�$� FJF ���d� �JF �ʞ�� �JF �� KF AK�$� FKF ���d� �KF �˟�� �KF �� LF AL�$� FLF ���d� �LF �̠�� �LF �� MF AM�$� FMF ���d� �MF �͡�� �MF �� k� �AF �A��� �AF ��� BF A¢$� FBF ��d� �BF �B��� �BF ��� CF Aã$� FCF ��d� �CF �C��� �CF ��� DF AĤ$� FDF ��d� �DF �D��� �DF ��� EF Ať$� FEF ��d� �EF �E��� �EF ��� FF AƦ$� FFF ��d� �FF �F��� �FF ��� GF Aǧ$� FGF ��d� �GF �G��� �GF ��� HF AȨ$� FHF ��d� �HF �H��� �HF ��� IF Aɩ$� FIF �	�d� �IF �I��� �IF ��� JF Aʪ$� FJF �
�d� �JF �J��� �JF ��� KF A˫$� FKF ��d� �KF �K��� �KF ��� LF A̬$� FLF ��d� �LF �L��� �LF ��� MF Aͭ$� FMF ��d� �MF �M��� �MF ��� k� �AF ����� �AF �� BF AB�$� FBF ���d� �BF �¯�� �BF �� CF AC�$� FCF ���d� �CF �ð�� �CF �� DF AD�$� FDF ���d� �DF �ı�� �DF �� EF AE�$� FEF ���d� �EF �Ų�� �EF �� FF AF�$� FFF ���d� �FF �Ƴ�� �FF �� GF AG�$� FGF ���d� �GF �Ǵ�� �GF �� HF AH�$� FHF ���d� �HF �ȵ�� �HF 	�� IF AI�$� FIF ���d� �IF �ɶ�� �IF 
�� JF AJ�$� FJF ���d� �JF �ʷ�� �JF �� KF AK�$� FKF ���d� �KF �˸�� �KF �� LF AL�$� FLF ���d� �LF �̹�� �LF �� MF AM�$� FMF ���d� �MF �ͺ�� �MF �� k�AF �A��� �AF ��� BF A»$� FBF ��d� �BF �B��� �BF ��� CF Aü$� FCF ��d� �CF �C��� �CF ��� DF AĽ$� FDF ��d� �DF �D��� �DF ��� EF Až$� FEF ��d� �EF �E��� �EF ��� FF Aƿ$� FFF ��d� �FF �F��� �FF ��� GF A��$� FGF ��d� �GF �G��� �GF ��� HF A��$� FHF ��d� �HF �H��� �HF ��� IF A��$� FIF �	�d� �IF �I��� �IF ��� JF A��$� FJF �
�d� �JF �J��� �JF ��� KF A��$� FKF ��d� �KF �K��� �KF ��� LF A��$� FLF ��d� �LF �L��� �LF ��� MF A��$� FMF ��d� �MF �M��� �MF ��� kA�AF ����� �AF �� BF AB�$� FBF ���d� �BF ����� �BF �� CF AC�$� FCF ���d� �CF ����� �CF �� DF AD�$� FDF ���d� �DF ����� �DF �� EF AE�$� FEF ���d� �EF ����� �EF �� FF AF�$� FFF ���d� �FF ����� �FF �� GF AG�$� FGF ���d� �GF ����� �GF �� HF AH�$� FHF ���d� �HF ����� �HF 	�� IF AI�$� FIF ���d� �IF ����� �IF 
�� JF AJ�$� FJF ���d� �JF ����� �JF �� KF AK�$� FKF ���d� �KF ����� �KF �� LF AL�$� FLF ���d� �LF ����� �LF �� MF AM�$� FMF ���d� �MF ����� �MF �� k��AF �A��� �AF ��� BF A��$� FBF ��d� �BF �B��� �BF ��� CF A��$� FCF ��d� �CF �C��� �CF ��� DF A��$� FDF ��d� �DF �D��� �DF ��� EF A��$� FEF ��d� �EF �E��� �EF ��� FF A��$� FFF ��d� �FF �F��� �FF ��� GF A��$� FGF ��d� �GF �G��� �GF ��� HF A��$� FHF ��d� �HF �H��� �HF ��� IF A��$� FIF �	�d� �IF �I��� �IF ��� JF A��$� FJF �
�d� �JF �J��� �JF ��� KF A��$� FKF ��d� �KF �K��� �KF ��� LF A��$� FLF ��d� �LF �L��� �LF ��� MF A��$� FMF ��d� �MF �M��� �MF ��� k��AF ����� �AF �� BF AB�$� FBF ���d� �BF ����� �BF �� CF AC�$� FCF ���d� �CF ����� �CF �� DF AD�$� FDF ���d� �DF ����� �DF �� EF AE�$� FEF ���d� �EF ����� �EF �� FF AF�$� FFF ���d� �FF ����� �FF �� GF AG�$� FGF ���d� �GF ����� �GF �� HF AH�$� FHF ���d� �HF ����� �HF 	�� IF AI�$� FIF ���d� �IF ����� �IF 
�� JF AJ�$� FJF ���d� �JF ����� �JF �� KF AK�$� FKF ���d� �KF ����� �KF �� LF AL�$� FLF ���d� �LF ����� �LF �� MF AM�$� FMF ���d� �MF ����� �MF �� k @A�K ��� �AF ��� J��A� �AF ��� J��AF ���� J����AF ���� J���AF ���� J���AF ���� J�����f �AF �� J��AF ���� J���AF ���� J����AF ���� J����AF ���� J���AF ���� J���AF ���� J�����f �AF �� J��AF ���� J���AF ���� J����AF ���� J����AF ���� J����AF ���� J���AF ���� J���AF ���� J����AF ���� J����AF ���� J����� �AF �� J���� �AF �� J��AF ���� J����AF ���� J���AF ���� J����AF ���� J����AF ���� J���AF ���� J����AF ���� J���AF �A��� J����AF ����� J���A� �AF ��� J���� �AF �� J��A� �AF �� J���� �AF �� J��AF ���� J�ǆAF ���� J��ǆAF ���� J���AF ���� J������ �AF B�� J��� �AF B�� J��AF ����� J�ˆAF �A��� J��ԁ���AF �� J���� �AF B�� J��� �AF ��� J�����AF �� J���� �AF �� J����AF �� J���� �AF �� J��AF ���� J��A��AF �� J��� �AF �� J��A� �AF ��� J�����AF ��� J��AF ���� J��ɆAF �A��� J�ʆAF ����� J���@��K�  ���� �% FBF �B�d �A  J������ ��FBF ���d �A  J�@�K 
�AF �A��� �AF ��� BF A��$� FBF ��d� �BF �B��� �BF ��� CF A��$� FCF ��d� �CF �C��� �CF ��� DF A��$� FDF ��d� �DF �D��� �DF ��� EF A��$� FEF ��d� �EF �E��� �EF ��� FF A��$� FFF ��d� �FF �F��� �FF ��� GF A��$� FGF ��d kA  @A�K��AF ����� �AF ��� BF A�$� FBF �B�d� �BF ����� �BF ��� CF A�$� FCF �C�d kA  @��K �AF ����� �AF �� BF AB�$� FBF ���d� �BF ����� �BF �� CF AC�$� FCF ���d� �CF �C��� �CF �� DF A��$� FDF ���d� �DF ���� �DF ��� EF A��$� FEF �E�d� �EF ���� �EF �� FF A��$� FFF �F�d� �FF ����� �FF ��� GF A��$� FGF ���d� �GF ����� �GF ��� HF AH�$� FHF �H�d� �HF ���� �HF 	�� IF A	 $� FIF ���d� �IF ����� �IF J � JF A
�$� FJF ���d� �JF ����� �JF ��� KF A��$� FKF ���d� �KF �K��� �KF L�� LF A�$� FLF ��d� �LF ���� �LF M � MF A��$� FMF ���d� �MF ����� �MF �� kA �AF �� �� �AF  � BF A�$� FBF ���d� �BF �B��� �BF � � CF A�$� FCF ���d� �CF ��� �CF  � DF A�$� FDF �D�d� �DF ����� �DF �� EF A��$� FEF �d� �EF ��� �EF ��� FF AF$� A����FF G� �A��GF �G�� ���FHF �Hd� ����IF AI$� A����IF J� �A��JF �J��� �JF �� KF A��$� FKF ��d� �KF �K �� �KF ��� LF A�$� FLF �d� �LF ����� �LF ��� MF AM$� FMF �M�d� �MF �M��� �MF N�� k� �AF ���� �AF �� BF A�$� FBF ��d� �BF ��� �BF C�� CF A��$� FCF �C d� �CF �C�� �CF D�� DF A��$� FDF ��d� �DF ���� �DF E�� EF AE�$� FEF ��d� �EF ��� �EF  � FF AF�$� FFF �F�d� �FF �F�� �FF � GF AG�$� A������A�k� @�l @�K  @� A�~ FA d�� �AG���A� ����B� ������� ����  �A��C� ����]Ã䂀�����A��  A �AB� A �AB� A �A ��� �� �� ����f A �A �� ��� ��� �� �� ����f A �A �� ��� ��� ��� �� �� ��� ��� ���� A �Aª A �A ��� �� ��� ��� �� ��� �� ��� ����A �AB� A �A³ A �A�� A �A� A �AB� A �A�� A �A �� ��� �� ��� A �A� A �A �� �����A �A��A �A­ A �A�A �A· A �A ��B�A �A� A �A����� � @���$��A�FB ���d��A  ��A�� �A�� ����B�� � @������$������  *�����A B  A � �B�� ǂ�CF A$� FCF �Cd �B  
����� KB  � � C �eFCF �d� �CF �C� �B  J��AB  A � �B�� ǂ�CF A$� FCF �Cd �B  
������KB  � � C �eFCF �d� �CF �C� �B  J��AB  A � �B�� ����CF A�$� FCF �	d �B  
�������A	��  A �AB� A �AB� ���B� ��B� ��B� ����f AB� �AB� ��B� ���B� ���B� ��B� ��B� ����f AB� �AB� ��B� ���B� ���B� ���B� ��B� ��B� ���B� ���B� ���� AB� �Aª AB� �AB� ���B� ��B� ���B� ���B� ��B� ���B� �� ���� ��B� AB� �A�� A� �AB� AB� �A�� AB� �AB� ��B� ���B� ��B� ��� A �A� A �A �� �����A� �A³ AB� �A� A� �A��AB� �A��A �A­ AB� �A�AB� �A· AB� �AB� ��B�AB� �A� AB� �AB� A �A���	�  ���	��� �A� �AB� �����	�� � @��
�C� ���$������A
� A�

B�A�� ��

��A
B��AB
B�A�
B��A�
B�A
B�AB
B��A�
B�A�
B�A
B��AB
B��A�
B�A�
B�A
B�AB
B��A�
B��A�
B��A
B�AB
B��A�
B�A�
B��A �
��A� �B
��A�
B��AB� ��
��A�� �
��AB
B�A���
��A�B
��A�
B��A� ��
��A¯ �
��AB
B��A� ��
��A��
��AB
B�A�
B�A�
B��A
B�AB
B��A�
B�A�
B��A
B�AB
B��A�
B��A�
B��A
B�AB� �B
��A���
��A
B��AB
B�A ��
��A��
��AB��
��A��
��A¬ �B
��A���
��A
B��AB
B�A�
B��A�
B�A�B
��A���
��AB� �
��AB��
��A�� ��
��A�B
��A�� ��
��Aµ ��
��ABd �
��A�b �B
��A�e ��
��A�� 
��A« �B 
��A� �� 
��AB� �� 
��A�� �!
��AB!��!
��A�!
B�A"
B��AB"
B�A�!
B�A"
B��AB"
B� ���"�AB� � �B� �"A#+B� ��A#,B  ���#,�  ���#,�  ��$,  ��A$,B  ���$,�  ���$,�  ��%,  ��A%�K�  ��%J�A��%�&J���  ��%�����%&��˂  �%��A�%A&�B�  A�%
��A�%�&
��K�  ��%J�A��%�&J���  ��%�����%&��˃  �%��A�%A&�C�  A�%
��A�%�&
��K�  ��%J�A	��%�&J�	+B� ��A&,B  ���&,�  ���&,�  ��',  ��A',B  ���',�  ���',�  ��(,  ��A(,B  ���(,�  ���(,�  ��),  ��A),B  ���),�  ���),�  ��*,  ��A*,B  ���*,�  ���*,�  ��+,	  ��A+,B	  ���+,�	  ���+,�	  ��,,
  ��A,,B
  ���,,�
  ���,,�
  ��-,  ��A-,B  ���-,�  ���-. ��A.. ���.. ���.. ��/   ��A/. ���/. ���/. ��0   ��A0. ���0. ���0. ��1,�  ��A1,  ���1,B  ���1,�  ��2,�  ��A2,  ���2,B  ���2,�  ��3,�  ��A3,  ���3,B  ���3,�  ��4,�  ��A4,  ���4,B  ���4,�  ��5,�  ��A5,  ���5,B  ���5,�  ��6,�  ��A6,  ���6,B  ���6,�  ��7,�  ��A7,  ���7,B  ���7,�  ��8,�  ��A8,  ���8,B  ���8,�  ��9,�  ��A9,  ���9,B  ���9,�  ��:,�  ��A:,  ���:,B  ���:,�  ��;,�  ��A;,  ���;,B  ���;,�  ��<,�  ��A<,  ���<,B  ���<,�  ��=,�  ��A=,  ���=�� 䁀 �=K  @>K� �B>��>�� �>� J��?��>�� C?� J���?��>�� �?� J��@��>�� C@� J���@��>�� �@� J��A��>�� CA� J���A��>�� �A� J��B��>�� CB� J���B��>�� �B� J��C��>�� CC� J���C��>�� �C� J��D��>�� CD� J���D��>�� �D� J��E��>�� CE� J���E��>�� �E� J��F��>�� CF� J���F��>�� �F� J��G��>�� CG� J���G��>�� �G� J��H��>�� CH� J���H��>�� �H� J�@IA�#FB ���BL CI��d���A�IA�#FB ���BL �I��d���AJA�#FB ���BL CJ��d���A�JA�#FB ���BL �J��d���AKA�#FB ���BL CK��d���A�KA�#FB ���BL �K��d���ALA�#FB ���BL CL��d���A�LA�#FB ���BL �L��d���AMA�#FB ���BL CM��d���A�MA�#FB ���BL �M��d���ANA�#FB ���BL CN��d���A�NA�#FB ���BL �N��d���AOA�#FB ���BL CO��d���A�OA�#FB ���BL �O��d���APA�#FB ���BL CP��d���A�PA�#FB ����P�� CI��d���AQA�#FB ����P�� �I��d���ABQA�#FB ����P�� CJ��d���A�QA�#FB ����P�� �J��d���A�QA�#FB ����P�� CK��d���ARA�#FB ����P�� �K��d���ABRA�#FB ����P�� CL��d���A�RA�#FB ����P�� �L��d���A�RA�#FB ����P�� CM��d���ASA�#FB ���BMd���ABSA�SFB �� d� �A�SA�SFB �Td� �ABTA�SFB ��) d� �A�TA�SFB ��* d� �A�TA�#FB ���© d���AUA�#FB ���BUd���A�UA�#FB ����, d���A�UA�#FB ���B� d���AVA�#FB ���BVd���A�VA�#FB ����Vd���AWA�#FB ���BWd���A�WA�#FB ����Wd���AXA�#FB ���BXd���A�XA�#FB ����Xd���AYA�#FB ���BYd���ABIA�d FB \��BI(���YA�d FC GÂ@�Y�AZ��#�� ���a  ����
��'���YABZFB �BIG��@�ZA�ZGB�@�YABZFB ��IG��@[A�ZGB�@�YABZFB �BJG��@B[A�ZGB�@�[A�[@\AB\��\�� ]���A�\K  @]K  @B]A�]@�]A�[@^ABI@B^A�^@�^A�]@_A�[@B_A�]@�_A�[@�_K  @`AB`FB @�`A�`@aA�`@BaA�^@�aA�a@bABb@�bABb@�= $�� A�bFB �c��� �Bc��cA�`_@�  �CC  C� @�cACI_@�  �CC  C� @dA�I_@�  �CC  C� @CdAdFC [�
B�dAdFC b  ��A�dGC��^��  �CC  C� 
BeAdFC 
BCeA�]
B�eA�]@�eAfGC@CfACf��^��A�f��^��A�f_@��ACf�g�� � �� ��ACg�g�� �Cg���� ��ACfFC ��^_�� �A�f�  ��ACI�Cf�� � �CIh��A`FD b   �ADgFD ��^_����ADfFD ��g�Dg�� ��	�gAEfFE G�
�D	J�Ah�Df�� �	��A>FD ��\�� G���Dh�� ��^��  ��D  �� �D ��h�� ��h��	��f��  ��D�g��AiGC��Ci�� ��i���4 @�$� A�iGD� �j����Dj�Ą�j`�	  �CE  C� @
E5 $E� �j A�=FE $@
�` �@
�A�Y�k�� ���A�YGF�Fk��[J��-�� �FI�Ɔ�k��F���Y�FZ�� �����Y���Fk�[���FI�Ɔ � ���kG[ ��� ���k�Z ��)�  ���lA�[
B
El� A�lGE� ��l�  ��m��`��EI��
FI����F �Fm�� �m�@ �F���������j�� ��m�� �@��mm A�mG ���  *���n��[
��En��]
���n@��n��� �  @��o�[
��Eo�[
���o�A�o�p�Fp�� Gp A�p�G#�� ��p�� � +F   ��q�[ ��Eq��  ���o A�q��q�Fp�� Gp Ar�Gr��r�+F  ���r����o As�Fs�Fp�� Gp A�s�� ��s� At�Ht����t	 A� ��C ��t
u+F  ��Eu�[ ���u�u ���o Av�Fv�Fp�� Gp A�v��v�� �w� AHw��I��w�wA	x�Ix��	 ��x��	+F  ���x����n���y�Ņ FyA�o� ��y�yAGpFG �Gp�� �z �AHf�Hz�� �Hf�� �� ��zIz		 A�zFI	 $� A�v��v��	 �	w
{AJ{��{��
��{|AK|��|����|}AL}�L}����}�}A�}�~�F ��AF~��[��A�~��~��AGF��o��
GA��Gp�� �Gp�� �AHN��t� 	�C	  �I{��{�ɉ�{A
|GJ��J|��|�ʊ�|A}GK��K}�K}�ˋ�}A�}GL��L����̀A��F ��F���[���� \�Ɓ����o�
AG���Gp�� Hp A��HN��t	 A	��	  �I{�{

A�{�
|��
�J|�|A�|�}���K}L}A�}��}���L�M�À���+G  ��Ƃ ���  �A�FG �FG�AG�FG �F��A��FG �F�oK��ǃ��Hp AHpFH �H��Hz��  	�� kG  @���NǄA�o� 
��H�AHpFH �Hp�� ���	  AI{��{��	��{
|

AJ|��|��
��|}AK}�K}����}�}A̅�d�� ��v�v Aw��N�G ��A���[��AG������AdFG b   �A�o���ǆ�AHpFH �Hp�� �HfIz		 AIfFI	 $	 �G  ��AG���[��A�� �AG~ FG dG� AǇFG ����d� �G���c�� �  �����_��@ �_@�  ��G  �� 
��ǈ������ �  ��G  �� 
���n��G���� ������m �� ����@ ��G  �� ��A�J  �� �ȉ@ �H  � A��� ��m�ȇ��N�ȇ�ȇ����Êȇʊ���HV�ȇ�H��ȇ����ȇ�Ȋ�������� ������& � ,
  interfaceName$$interfaceName$interface_getIndexinterfaceId$lastResult$$colorReplacesfactionColorsByTeams sendResNotificationEndTime        unselectHotKey       massPlansHotKeycontinueOperationHotkeyaddSelectionHotKeyaddWorkMassHotKey1T       addWorkMassHotKey2f       removeWorkMassHotKeyaddTaskHotKeygameIsEndedinterfaceScale%$interface_@interfaceId_scaleWidgetsstrEventIdleWorkers1	localize<*eventIdleWorkers/0>strEventIdleWorkers2<*eventIdleWorkers/1>
strTimeH0<*timerHour/0>
strTimeH1<*timerHour/1>
strTimeH2<*timerHour/2>
strTimeD0<*timerDay/0>
strTimeD1<*timerDay/1>
strTimeD2<*timerDay/2>
strTimeD3<*timerDay/3>
strTimeL0<*timerLong/0>
strTimeL1<*timerLong/1>
strTimeL2<*timerLong/2>buildButtons       �       �       �      �              S       �      �       U       �      0      Y      Z      buildButtonsLockers      �      �      �      �      �      �      �      �      �      �      �      ^      _      `      buildPlansAbilities              ��������                     D              	              
                            G                                                               J              0       ,       -       .       /       1       2       M                     %                      !       #       $       "       P       (       *       3       4       6       5       C       9       7       :       8       )       +       ;       <       =       >       @       A       B       ?       ]       V       W       X       Y       Z       [       `       _       ^       l       n       \       p       a       d       o       b       c       e       i       k       j       h       g       m       q       r       u       t       s       v       y       w       x       z       workButtonBlocks�       �       �       �       �       �       �       �      workButtonsworkReservePanelsM      N      O      P      Q      R      F      L      workReserveNumbersS      T      U      V      W      X      Y      Z      workUnavailableIcon�       
                                          workReserveProgress�      �      �      �      �      �      �      �      workQueueButtons�       �       �       �       �       workQueueNumbersstorageBoxes�      �                   �      �      specialDamage�      �      �            M      playersListNames�      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      playersListStatus�      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                  	      
                                                                                                      playersComplaintButton�      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                        teamBlocks                                     !      "      #      $      %      &      destroyListWidgets�      �      �      �      �      �      �      transformationButton�      �      �      &      x      transformationNumber�      �      �      %      [      transformationHotKeye      t      u      '      {      culturesAbilities              unitNations	deepCopygetPlayerFaction$session_gameplay_gameplayplayersFactions       player_sizetableinsert � �       �    �� �    �  �    �    (((�    ����    ��?�     ���    �� �    � �     ��     ���    � �      �    CH]�    ��     ��    A@@�    � �    � ��    ?� �    ���    ���      �    :  �    33f�     d�    ?� �    ���    �?�    ��    �?�    � �    � ��    ����    ��    ����    ���    ??��    ���    ����    ���    ?��    ??�    !((�    ��    � ��    ���      �    ��     ��    ����    �� �    �??�    333�    ? ?�    � ��     ���    �  �    ����     ��    ??�    ���     �    ?  �    ���    ����    ?�     ���    ���     �     �    N N�      ��    ����     	fromJson	deepCopyfactionColorsplayersColorsupdatePlayersColorsgetFactionColorgetPlayerColorupdateFactionsColorsgetInterface	getNodesweaponBlock�      �      �      �      @      weaponDamageValue      �      �      �      K      weaponDamageType�      �      �            C      weaponAdvancedInfo�      �      �      �      D      weaponRechargeTime�      �      �      �      H      weaponSpread�      �      �      �      	      �            �            I      weaponDistance�      �      �      �      J      weaponIcon�      �      �            A      weaponUnitTagIcon      weaponTypedDamage�      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                        �                        �                        (      4      .      :      )      5      /      ;      *      9      0      <      T      Z      N      `      U      [      O      a      V      \      P      b      unitsWeaponIcon       hideResearchOnFinalAge               ?       @       E       F       H       I       
unitsWork�       �              �       �       �       �       �       �       &       '       �       �       �       �       �       Q       �       �       �       �       �       �       �       N       �       �       �       �       �       �       {       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �              �       �       8      )      =      >      �             �             .      C      K      b      f      i      t      �      unitsAttackGroundWeaponO       �       �       �       �       �       �       �       �       �       �       �       �       �                                                        !      #      $      *      +      ,      0      5      7      <      E      H      I      J      \      h      }      ~      �      �      �      �      nationNames<*nationName0><*nationName1><*nationName2><*nationName3><*nationName4><*nationName5><*nationName6><*nationName7><*nationName8><*nationName9><*nationName10><*nationName11><*nationName12><*nationName13/0><*nationName13/1><*nationName14><*nationName15><*nationName16><*nationName17><*nationName18/0><*nationName18/1>researchNames<*upgrade0/0><*upgrade1/0><*upgrade2/0><*upgrade3/0><*upgrade4/0><*upgrade5/0><*upgrade6/0><*upgrade7/0><*upgrade8/0><*upgrade9/0><*upgrade10/0><*upgrade11/0><*upgrade12/0><*upgrade13/0><*upgrade14/0><*upgrade15/0><*upgrade16/0><*upgrade17/0><*upgrade18/0><*upgrade19/0><*upgrade20/0><*upgrade21/0><*upgrade22/0><*upgrade23/0><*upgrade24/0><*upgrade25/0><*upgrade26/0><*upgrade27/0><*upgrade28/0><*upgrade29/0><*upgrade30/0><*upgrade31/0><*upgrade32/0><*upgrade33/0><*upgrade34/0><*upgrade35/0><*upgrade36/0><*upgrade37/0><*upgrade38/0><*upgrade39/0><*upgrade40/0><*upgrade41/0><*upgrade42/0><*upgrade43/0><*upgrade44/0><*upgrade45/0><*upgrade46/0><*upgrade47/0><*upgrade48/0><*upgrade49/0><*upgrade50/0><*upgrade51/0><*upgrade52/0><*upgrade53/0><*upgrade54/0><*upgrade55/0><*upgrade56/0><*upgrade57/0><*upgrade58/0><*upgrade59/0><*upgrade60/0><*upgrade61/0><*upgrade62/0><*upgrade63/0><*upgrade64/0><*upgrade65/0><*upgrade66/0><*upgrade67/0><*upgrade68/0><*upgrade69/0><*upgrade70/0><*upgrade71/0><*upgrade72/0><*upgrade73/0><*upgrade74/0><*upgrade75/0><*upgrade76/0><*upgrade77/0><*upgrade78/0><*upgrade79/0><*upgrade80/0><*upgrade81/0><*upgrade82/0><*upgrade83/0><*upgrade84/0><*upgrade85/0><*upgrade86/0><*upgrade87/0><*upgrade88/0><*upgrade89/0><*upgrade90/0><*upgrade91/0><*upgrade92/0><*upgrade93/0><*upgrade94/0><*upgrade95/0><*upgrade96/0><*upgrade97/0><*upgrade98/0><*upgrade99/0><*upgrade100/0><*upgrade101/0><*upgrade102/0><*upgrade103/0><*upgrade104/0><*upgrade105/0><*upgrade106/0><*upgrade107/0><*upgrade108/0><*upgrade109/0><*upgrade110/0><*upgrade111/0><*upgrade112/0><*upgrade113/0><*upgrade114/0><*upgrade115/0><*upgrade116/0><*upgrade117/0><*upgrade118/0><*upgrade119/0><*upgrade120/0><*upgrade121/0><*upgrade122/0><*upgrade123/0><*upgrade124/0><*upgrade125/0><*upgrade126/0><*upgrade127/0><*upgrade128/0><*upgrade129/0><*upgrade130/0><*upgrade131/0><*upgrade132/0><*upgrade133/0><*upgrade134/0><*upgrade135/0><*upgrade136/0><*upgrade137/0><*upgrade138/0><*upgrade139/0><*upgrade140/0><*upgrade141/0><*upgrade142/0><*upgrade143/0><*upgrade144/0><*upgrade145/0><*upgrade146/0><*upgrade147/0><*upgrade148/0><*upgrade149/0><*upgrade150/0><*upgrade151/0><*upgrade152/0><*upgrade153/0><*upgrade154/0><*upgrade155/0><*upgrade156/0><*upgrade157/0><*upgrade158/0><*upgrade159/0><*upgrade160/0><*upgrade161/0><*upgrade162/0><*upgrade163/0><*upgrade164/0><*upgrade165/0><*upgrade166/0><*upgrade167/0><*upgrade168/0><*upgrade169/0><*upgrade170/0><*upgrade171/0><*upgrade172/0><*upgrade173/0><*upgrade174/0><*upgrade175/0><*upgrade176/0><*upgrade177/0><*upgrade178/0><*upgrade179/0><*upgrade180/0><*upgrade181/0><*upgrade182/0><*upgrade183/0><*upgrade184/0><*upgrade185/0><*upgrade186/0><*upgrade187/0><*upgrade188/0><*upgrade189/0><*upgrade190/0><*upgrade191/0><*upgrade192/0><*upgrade193/0><*upgrade194/0><*upgrade195/0><*upgrade196/0><*upgrade197/0><*upgrade198/0><*upgrade199/0>researchTexts<*upgrade0/1><*upgrade1/1><*upgrade2/1><*upgrade3/1><*upgrade4/1><*upgrade5/1><*upgrade6/1><*upgrade7/1><*upgrade8/1><*upgrade9/1><*upgrade10/1><*upgrade11/1><*upgrade12/1><*upgrade13/1><*upgrade14/1><*upgrade15/1><*upgrade16/1><*upgrade17/1><*upgrade18/1><*upgrade19/1><*upgrade20/1><*upgrade21/1><*upgrade22/1><*upgrade23/1><*upgrade24/1><*upgrade25/1><*upgrade26/1><*upgrade27/1><*upgrade28/1><*upgrade29/1><*upgrade30/1><*upgrade31/1><*upgrade32/1><*upgrade33/1><*upgrade34/1><*upgrade35/1><*upgrade36/1><*upgrade37/1><*upgrade38/1><*upgrade39/1><*upgrade40/1><*upgrade41/1><*upgrade42/1><*upgrade43/1><*upgrade44/1><*upgrade45/1><*upgrade46/1><*upgrade47/1><*upgrade48/1><*upgrade49/1><*upgrade50/1><*upgrade51/1><*upgrade52/1><*upgrade53/1><*upgrade54/1><*upgrade55/1><*upgrade56/1><*upgrade57/1><*upgrade58/1><*upgrade59/1><*upgrade60/1><*upgrade61/1><*upgrade62/1><*upgrade63/1><*upgrade64/1><*upgrade65/1><*upgrade66/1><*upgrade67/1><*upgrade68/1><*upgrade69/1><*upgrade70/1><*upgrade71/1><*upgrade72/1><*upgrade73/1><*upgrade74/1><*upgrade75/1><*upgrade76/1><*upgrade77/1><*upgrade78/1><*upgrade79/1><*upgrade80/1><*upgrade81/1><*upgrade82/1><*upgrade83/1><*upgrade84/1><*upgrade85/1><*upgrade86/1><*upgrade87/1><*upgrade88/1><*upgrade89/1><*upgrade90/1><*upgrade91/1><*upgrade92/1><*upgrade93/1><*upgrade94/1><*upgrade95/1><*upgrade96/1><*upgrade97/1><*upgrade98/1><*upgrade99/1><*upgrade100/1><*upgrade101/1><*upgrade102/1><*upgrade103/1><*upgrade104/1><*upgrade105/1><*upgrade106/1><*upgrade107/1><*upgrade108/1><*upgrade109/1><*upgrade110/1><*upgrade111/1><*upgrade112/1><*upgrade113/1><*upgrade114/1><*upgrade115/1><*upgrade116/1><*upgrade117/1><*upgrade118/1><*upgrade119/1><*upgrade120/1><*upgrade121/1><*upgrade122/1><*upgrade123/1><*upgrade124/1><*upgrade125/1><*upgrade126/1><*upgrade127/1><*upgrade128/1><*upgrade129/1><*upgrade130/1><*upgrade131/1><*upgrade132/1><*upgrade133/1><*upgrade134/1><*upgrade135/1><*upgrade136/1><*upgrade137/1><*upgrade138/1><*upgrade139/1><*upgrade140/1><*upgrade141/1><*upgrade142/1><*upgrade143/1><*upgrade144/1><*upgrade145/1><*upgrade146/1><*upgrade147/1><*upgrade148/1><*upgrade149/1><*upgrade150/1><*upgrade151/1><*upgrade152/1><*upgrade153/1><*upgrade154/1><*upgrade155/1><*upgrade156/1><*upgrade157/1><*upgrade158/1><*upgrade159/1><*upgrade160/1><*upgrade161/1><*upgrade162/1><*upgrade163/1><*upgrade164/1><*upgrade165/1><*upgrade166/1><*upgrade167/1><*upgrade168/1><*upgrade169/1><*upgrade170/1><*upgrade171/1><*upgrade172/1><*upgrade173/1><*upgrade174/1><*upgrade175/1><*upgrade176/1><*upgrade177/1><*upgrade178/1><*upgrade179/1><*upgrade180/1><*upgrade181/1><*upgrade182/1><*upgrade183/1><*upgrade184/1><*upgrade185/1><*upgrade186/1><*upgrade187/1><*upgrade188/1><*upgrade189/1><*upgrade190/1><*upgrade191/1><*upgrade192/1><*upgrade193/1><*upgrade194/1><*upgrade195/1><*upgrade196/1><*upgrade197/1><*upgrade198/1><*upgrade199/1>
unitNames<*unitName0><*unitName1><*unitName2><*unitName3><*unitName4><*unitName5><*unitName6><*unitName7><*unitName8><*unitName9><*unitName10><*unitName11><*unitName12><*unitName13><*unitName14><*unitName15><*unitName16><*unitName17><*unitName18><*unitName19><*unitName20><*unitName21><*unitName22><*unitName23><*unitName24><*unitName25><*unitName26><*unitName27><*unitName28><*unitName29><*unitName30><*unitName31><*unitName32><*unitName33><*unitName34><*unitName35><*unitName36><*unitName37><*unitName38><*unitName39><*unitName40><*unitName41><*unitName42><*unitName43><*unitName44><*unitName45><*unitName46><*unitName47><*unitName48><*unitName49><*unitName50><*unitName51><*unitName52><*unitName53><*unitName54><*unitName55><*unitName56><*unitName57><*unitName58><*unitName59><*unitName60><*unitName61><*unitName62><*unitName63><*unitName64><*unitName65><*unitName66><*unitName67><*unitName68><*unitName69><*unitName70><*unitName71><*unitName72><*unitName73><*unitName74><*unitName75><*unitName76><*unitName77><*unitName78><*unitName79><*unitName80><*unitName81><*unitName82><*unitName83><*unitName84><*unitName85><*unitName86><*unitName87><*unitName88><*unitName89><*unitName90><*unitName91><*unitName92><*unitName93><*unitName94><*unitName95><*unitName96><*unitName97><*unitName98><*unitName99><*unitName100><*unitName101><*unitName102><*unitName103><*unitName104><*unitName105><*unitName106><*unitName107><*unitName108><*unitName109><*unitName110><*unitName111><*unitName112><*unitName113><*unitName114><*unitName115><*unitName116><*unitName117><*unitName118><*unitName119><*unitName120><*unitName121><*unitName122><*unitName123><*unitName124><*unitName125><*unitName126><*unitName127><*unitName128><*unitName129><*unitName130><*unitName131><*unitName132><*unitName133><*unitName134><*unitName135><*unitName136><*unitName137><*unitName138><*unitName139><*unitName140><*unitName141><*unitName142><*unitName143><*unitName144><*unitName145><*unitName146><*unitName147><*unitName148><*unitName149><*unitName150><*unitName151><*unitName152><*unitName153><*unitName154><*unitName155><*unitName156><*unitName157><*unitName158><*unitName159><*unitName160><*unitName161><*unitName162><*unitName163><*unitName164><*unitName165><*unitName166><*unitName167><*unitName168><*unitName169><*unitName170><*unitName171><*unitName172><*unitName173><*unitName174><*unitName175><*unitName176><*unitName177><*unitName178><*unitName179><*unitName180><*unitName181><*unitName182><*unitName183><*unitName184><*unitName185><*unitName186><*unitName187><*unitName188><*unitName189><*unitName190><*unitName191><*unitName192><*unitName193><*unitName194><*unitName195><*unitName196><*unitName197><*unitName198><*unitName199><*unitName200><*unitName201><*unitName202><*unitName203><*unitName204><*unitName205><*unitName206><*unitName207><*unitName208><*unitName209><*unitName210><*unitName211><*unitName212><*unitName213><*unitName214><*unitName215><*unitName216><*unitName217><*unitName218><*unitName219><*unitName220><*unitName221><*unitName222><*unitName223><*unitName224><*unitName225><*unitName226><*unitName227><*unitName228><*unitName229><*unitName230><*unitName231><*unitName232><*unitName233><*unitName234><*unitName235><*unitName236><*unitName237><*unitName238><*unitName239><*unitName240><*unitName241><*unitName242><*unitName243><*unitName244><*unitName245><*unitName246><*unitName247><*unitName248><*unitName249><*unitName250><*unitName251><*unitName252><*unitName253><*unitName254><*unitName255><*unitName256><*unitName257><*unitName258><*unitName259><*unitName260><*unitName261><*unitName262><*unitName263><*unitName264><*unitName265><*unitName266><*unitName267><*unitName268><*unitName269><*unitName270><*unitName271><*unitName272><*unitName273><*unitName274><*unitName275><*unitName276><*unitName277><*unitName278><*unitName279><*unitName280><*unitName281><*unitName282><*unitName283><*unitName284><*unitName285><*unitName286><*unitName287><*unitName288><*unitName289><*unitName290><*unitName291><*unitName292><*unitName293><*unitName294><*unitName295><*unitName296><*unitName297><*unitName298><*unitName299><*unitName300><*unitName301><*unitName302><*unitName303><*unitName304><*unitName305><*unitName306><*unitName307><*unitName308><*unitName309><*unitName310><*unitName311><*unitName312><*unitName313><*unitName314><*unitName315><*unitName316><*unitName317><*unitName318><*unitName319><*unitName320><*unitName321><*unitName322><*unitName323><*unitName324><*unitName325><*unitName326><*unitName327><*unitName328><*unitName329><*unitName330><*unitName331><*unitName332><*unitName333><*unitName334><*unitName335><*unitName336><*unitName337><*unitName338><*unitName339><*unitName340><*unitName341><*unitName342><*unitName343><*unitName344><*unitName345><*unitName346><*unitName347><*unitName348><*unitName349><*unitName350><*unitName351><*unitName352><*unitName353><*unitName354><*unitName355><*unitName356><*unitName357><*unitName358><*unitName359><*unitName360><*unitName361><*unitName362><*unitName363><*unitName364><*unitName365><*unitName366><*unitName367><*unitName368><*unitName369><*unitName370><*unitName371><*unitName372><*unitName373><*unitName374><*unitName375><*unitName376><*unitName377><*unitName378><*unitName379><*unitName380><*unitName381><*unitName382><*unitName383><*unitName384><*unitName385><*unitName386><*unitName387><*unitName388><*unitName389><*unitName390><*unitName391><*unitName392><*unitName393><*unitName394><*unitName395><*unitName396><*unitName397><*unitName398><*unitName399>
unitTexts<*unitText0><*unitText1><*unitText2><*unitText3><*unitText4><*unitText5><*unitText6><*unitText7><*unitText8><*unitText9><*unitText10><*unitText11><*unitText12><*unitText13><*unitText14><*unitText15><*unitText16><*unitText17><*unitText18><*unitText19><*unitText20><*unitText21><*unitText22><*unitText23><*unitText24><*unitText25><*unitText26><*unitText27><*unitText28><*unitText29><*unitText30><*unitText31><*unitText32><*unitText33><*unitText34><*unitText35><*unitText36><*unitText37><*unitText38><*unitText39><*unitText40><*unitText41><*unitText42><*unitText43><*unitText44><*unitText45><*unitText46><*unitText47><*unitText48><*unitText49><*unitText50><*unitText51><*unitText52><*unitText53><*unitText54><*unitText55><*unitText56><*unitText57><*unitText58><*unitText59><*unitText60><*unitText61><*unitText62><*unitText63><*unitText64><*unitText65><*unitText66><*unitText67><*unitText68><*unitText69><*unitText70><*unitText71><*unitText72><*unitText73><*unitText74><*unitText75><*unitText76><*unitText77><*unitText78><*unitText79><*unitText80><*unitText81><*unitText82><*unitText83><*unitText84><*unitText85><*unitText86><*unitText87><*unitText88><*unitText89><*unitText90><*unitText91><*unitText92><*unitText93><*unitText94><*unitText95><*unitText96><*unitText97><*unitText98><*unitText99><*unitText100><*unitText101><*unitText102><*unitText103><*unitText104><*unitText105><*unitText106><*unitText107><*unitText108><*unitText109><*unitText110><*unitText111><*unitText112><*unitText113><*unitText114><*unitText115><*unitText116><*unitText117><*unitText118><*unitText119><*unitText120><*unitText121><*unitText122><*unitText123><*unitText124><*unitText125><*unitText126><*unitText127><*unitText128><*unitText129><*unitText130><*unitText131><*unitText132><*unitText133><*unitText134><*unitText135><*unitText136><*unitText137><*unitText138><*unitText139><*unitText140><*unitText141><*unitText142><*unitText143><*unitText144><*unitText145><*unitText146><*unitText147><*unitText148><*unitText149><*unitText150><*unitText151><*unitText152><*unitText153><*unitText154><*unitText155><*unitText156><*unitText157><*unitText158><*unitText159><*unitText160><*unitText161><*unitText162><*unitText163><*unitText164><*unitText165><*unitText166><*unitText167><*unitText168><*unitText169><*unitText170><*unitText171><*unitText172><*unitText173><*unitText174><*unitText175><*unitText176><*unitText177><*unitText178><*unitText179><*unitText180><*unitText181><*unitText182><*unitText183><*unitText184><*unitText185><*unitText186><*unitText187><*unitText188><*unitText189><*unitText190><*unitText191><*unitText192><*unitText193><*unitText194><*unitText195><*unitText196><*unitText197><*unitText198><*unitText199><*unitText200><*unitText201><*unitText202><*unitText203><*unitText204><*unitText205><*unitText206><*unitText207><*unitText208><*unitText209><*unitText210><*unitText211><*unitText212><*unitText213><*unitText214><*unitText215><*unitText216><*unitText217><*unitText218><*unitText219><*unitText220><*unitText221><*unitText222><*unitText223><*unitText224><*unitText225><*unitText226><*unitText227><*unitText228><*unitText229><*unitText230><*unitText231><*unitText232><*unitText233><*unitText234><*unitText235><*unitText236><*unitText237><*unitText238><*unitText239><*unitText240><*unitText241><*unitText242><*unitText243><*unitText244><*unitText245><*unitText246><*unitText247><*unitText248><*unitText249><*unitText250><*unitText251><*unitText252><*unitText253><*unitText254><*unitText255><*unitText256><*unitText257><*unitText258><*unitText259><*unitText260><*unitText261><*unitText262><*unitText263><*unitText264><*unitText265><*unitText266><*unitText267><*unitText268><*unitText269><*unitText270><*unitText271><*unitText272><*unitText273><*unitText274><*unitText275><*unitText276><*unitText277><*unitText278><*unitText279><*unitText280><*unitText281><*unitText282><*unitText283><*unitText284><*unitText285><*unitText286><*unitText287><*unitText288><*unitText289><*unitText290><*unitText291><*unitText292><*unitText293><*unitText294><*unitText295><*unitText296><*unitText297><*unitText298><*unitText299><*unitText300><*unitText301><*unitText302><*unitText303><*unitText304><*unitText305><*unitText306><*unitText307><*unitText308><*unitText309><*unitText310><*unitText311><*unitText312><*unitText313><*unitText314><*unitText315><*unitText316><*unitText317><*unitText318><*unitText319><*unitText320><*unitText321><*unitText322><*unitText323><*unitText324><*unitText325><*unitText326><*unitText327><*unitText328><*unitText329><*unitText330><*unitText331><*unitText332><*unitText333><*unitText334><*unitText335><*unitText336><*unitText337><*unitText338><*unitText339><*unitText340><*unitText341><*unitText342><*unitText343><*unitText344><*unitText345><*unitText346><*unitText347><*unitText348><*unitText349><*unitText350><*unitText351><*unitText352><*unitText353><*unitText354><*unitText355><*unitText356><*unitText357><*unitText358><*unitText359><*unitText360><*unitText361><*unitText362><*unitText363><*unitText364><*unitText365><*unitText366><*unitText367><*unitText368><*unitText369><*unitText370><*unitText371><*unitText372><*unitText373><*unitText374><*unitText375><*unitText376><*unitText377><*unitText378><*unitText379><*unitText380><*unitText381><*unitText382><*unitText383><*unitText384><*unitText385><*unitText386><*unitText387><*unitText388><*unitText389><*unitText390><*unitText391><*unitText392><*unitText393><*unitText394><*unitText395><*unitText396><*unitText397><*unitText398><*unitText399>	envNames<*envName0><*envName1><*envNameTree><*envName36><*envName37><*envName38><*envName39><*envNameMeat><*envName90>      <*envName274><*envName275><*envName276>/      D      G      1      <*envName305><*envName87><*envName88><*envName89>workEnvCreateData#nature.vegetation.grass.live.wheat<*envWorkText90>"nature.vegetation.grass.live.rice<*envWorkText305>	unitTags<*unitTag/0><*unitTag/1><*unitTag/2><*unitTag/3><*unitTag/4><*unitTag/5><*unitTag/6><*unitTag/7><*unitTag/8><*unitTag/9><*unitTag/10><*unitTag/11><*unitTag/12><*unitTag/13><*unitTag/14><*unitTag/15><*unitTag/16><*unitTag/17><*unitTag/18><*unitTag/19><*unitTag/20><*unitTag/21><*unitTag/22><*unitTag/23>	ageNames<*ageNames/0><*ageNames/1><*ageNames/2><*ageNames/3><*ageNames/4><*ageNames/5><*ageNames/6><*ageNames/7>buildPlanText<*buildPlanTownhall><*buildPlanStorage><*buildPlanHouse><*buildPlanForge><*buildPlanBarrackAndRange><*buildPlanTurret><*buildPlanTemple><*buildPlanHorse><*buildPlanDock><*buildPlanBarrack><*buildPlanRange><*buildPlanTurretScout><*buildPlanFarm><*buildPlanRanch><*buildPlanWorkshop><*buildPlanSiegeStatic><*buildPlanElephant><*buildPlanSiege><*buildPlanWall>$<*buildPlanBarrackAndRangeAndHorse><*buildPlanSonic><*buildPlanMine>,<*buildPlanTurret> <*buildPlanBuiltOnWater>*<*buildPlanTurret>. <*buildPlanChosenOne><*buildPlanArtillery><*buildPlanAirfield><*buildPlanAirDefence><*buildPlanRiceFarm><*buildPlanDeliveryStorage><*buildPlanStoneMine>
findImageresearchIconsresearches_listcontent_imagesizeupgrade.png	envIconstempAbilityIconstempAbility0.pngtempAbility1.pngpairsenvunitsWorkIconText<*unitOptionGrowWheat/0><*unitOptionGrowWheat/1>�       <*unitOptionGrowRice/0><*unitOptionGrowRice/1>envResource
unitIcons	unitTypeunithotKeyNamesSpace',-./0123456789;=ABCDEFGHIJK       KL       LMNOPQR       RSTUVWXYZ[\]~Esc      EnterTab
BackspaceInsert      Delete      Right      LeftDown	      UpPage up
Page downHomeEnd      
Caps lock      Scroll lock	Num lock      Print screenPause"      F1F2F3F4F5F6(      F7F8F9F10F11-      F12ShiftCtrlAltresourceIconsF      E      toBool
getHotKeygetWidgetHotKeygetEnvNameoutCostDigitgetNationNamegetUnitNationName#updateMassTransformationWindowInfoworkButtonsStateshowworkId        getUnitWorkIconTextisResearchReadyForStartisResearchCompleteFisResearchCompletehaveRequiredUnithaveRequiredUnitsAnyhaveRequiredUnitsAllhaveRequiredUnitshaveRequiredResearchesAnyhaveRequiredResearchesAllhaveRequiredResearcheshaveRequiredAllshowWorkButtonSpecialshowWorkButtonforEachPlayerFactionshowUnitTypeInfocameraToMinimapgetAgeFactionIndustrialgetUnit	getUnitIgetEnvIgetAgeFactionsetFlagColor
toTimeStrgetRelationgetPlayerNameFontwritePlayerToWidgetwritePlayerToWidget_canShowcanShowUnitattackPriorityLimitZero attackPriorityLimitHighbuttonAttackMovebuttonAttackGroundattackGroundListbuttonUnloadunloadToPositionbuttonStopdanceUnitTypesbuttonGatherLastunitsShowWorkshowingUnitsInTransportgetAttackGroundblockedPathforEachWeaponWforEachWeaponforEachTurretshowEnvSelectionupdateUnitButtonsStateshowOneUnitSelectionshowUnitsSelectionupdateSelectionisEmptyTableupdateMinimapIconssetInterfaceScalegetFactionOfPlayergetPlayerOfFactiongetPlayerTeamunderWaterupdateTeamBlocksstartTeamBlockfinishTeamBlockhideInterfacesgetListOfRequiredUnitsgetListOfRequiredResearchesupdateCostRequirementssearchUnitgetHQisAgeUpgradeswitchPlayerOffprepareDiaggetTimelineValueGathergetTimelineValueEconomygetTimelineValueWargetTimelineValueTotalupdateTimelineTemplateupdateTimelineprepareTimelineswitchMatchResultsTabupdateAttackWarningsshowWorkCostupdateChatColorsisChatBannedgetSendResourcesPercentupdateSendResourcesValueupdateSendResourcesWindowshowResourceSendingWindowshowPlayerWindowshowTooltipsendOnMinimap	onResizeisUnitTypeBought	getNodesplayersListPositionfontsru	localize<*font_ru>br<*font_br>cn<*font_cn>cs<*font_cs>da<*font_da>de<*font_de>en<*font_en>es<*font_es>fr<*font_fr>hi<*font_hi>it<*font_it>ka<*font_ka>kr<*font_kr>pl<*font_pl>tr<*font_tr>nl<*font_nl>sr<*font_sr>hu<*font_hu>tw<*font_tw>hr<*font_hr>unk<*font_unk>$412_widget_text       $413_widget_text       $414_widget_text       $415_widget_text       $459_widget_text       $464_widget_text       $465_widget_text       $485_widget_text       $486_widget_text	       $492_widget_text
       $497_widget_text       $498_widget_text       $1371_widget_text       $1372_widget_text       $1373_widget_text       $181_widget_textworkButtonBlocks$501_widget_text$512_widget_text$513_widget_text$514_widget_text$518_widget_text$519_widget_text$520_widget_text$542_widget_text$215_widget_text$529_widget_text
getHotKey$595_widget_text>       $460_widget_text$1406_widget_text$157_widget_text$951_widget_text�      $120_widget_text$395_widget_text$1007_widget_text�       $1105_widget_text�      $1136_widget_textm      $1135_widget_textn      $234_widget_text�       $214_widget_text�       $902_widget_text�      id@idwidget_textplayersListStatusplayerStatusOn@id_widget_imageplayerStatusOffplayerStatusMe	$version$163_widget_textEarly Access - v$lastResultplayersChatBan
chatToRunticked sessionInitedidlerWorkerNumchoosenUnitTypeId borderMapStateminimapShowEnvsminimapPressedmassUpdateMassshowMinimapIconseditorMode$editorHQx        HQyHQidtimelineTypealllastDamageTimeMe`y������lastDamageTimeAlly$session_gameplaydataStoragestreamModeisModeSingleisModeNetworkisModeReplay$146_visible$1149_visibleuseTimeline$1151_visible$1139_widget_checkedtimelineByTeamssendResourcesDatasrrplayerNamesplayerFonts	fromJsonplayerRankings() $detectLanguageasserttableinsertcontrolledPlayer$session_visualcurrentFactionscene_0teamsCountfaction_size	teamModepairsplayersListNamesvisiblewidgetwidget_image$975_visiblescene_0_factionplayer_sizetimelineTeamstimelineTeamsCountforEachPlayerFaction       timelineTeams$1389_visible$830_visibleidplayer_@id_eliminated$471_visible$230_visible$interface_create/project/Tools/cameraMovecameraMoveinterfaceScalebordersScroll$storage_bordersScroll$interface_cameraMove_active$interface_cameraMove_priority/project/Tools/cinematicCamera
cinematiccbInterfaceHidesessioncbScriptHide$interface_cinematic_priority/project/Tools/scenescene	useFrameuseSignalsbottom$205_sizeYsignalScriptenvSignalTags�       $interface_scene_active$interface_scene_priority��������/project/Tools/settings	settingscbInterfaceinterfaceId	cbScripthealthBarAppDefaulthealthBarAppColored      dumpFileName$system_localFolder
/dump.dat$interface_settings_priorityfaction_@id_abilities_18$11/project/Tools/chatchatbannedtoJsoncolorsplayersColorsI       xscreenLefty
screenTopsxsizeXsysizeYhorizontalAlignverticalAlignsound       $interface_chat_active$interface_chat_priorityF       $1/project/Tools/minimapminimapmoveScriptshowTerritoriestargetNameobjectsMinimaptextureNameminimapEnvs$interface_minimap_active$interface_minimap_priority$1609bigminimapminimapObjectsBigminimapEnvsBig$interface_bigminimap_prioritynationNames
unitNamesunitNations/project/Tools/unitTypessessionUnitTypesdata%$interface_sessionUnitTypes_priority$46"/project/Tools/unitsSelectedGroupunitsSelectedGrouprightDirectionallFactionsAsMy%$interface_unitsSelectedGroup_active'$interface_unitsSelectedGroup_priority       /project/Tools/replayreplay$interface_replay_active$interface_replay_priority	tonumberkickRightsPlayer$378_visible $373_visibleplayersLocalIdfaction_@id_abilitiessize$4unitCanDance-      ]                 b    �   �    !   F @ �   d� �   @� ���   � �ƀ@    D  ���@ @ $� F�@ ��d� �@�  j��� A   F�@ �AA �  � d  �@    ��   �  & �    typetablenext	deepCopysetmetatablegetmetatable         !   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      orig    !   
orig_type   !   copy   !   (for generator)      (for state)      (for control)      	orig_key      orig_value         _ENV �   �         �F@@ ��  ��   � �@��A� �    �f �@��� �  & �    id9$session_gameplay_gameplay_player_@id_controlledFactions        ?              @id@                   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      player       facs      (for index)      (for limit)      (for step)      facId         _ENV       	    @ A@  ��@ �@  h �F�@ �A �AA �A B@���� J�g@�& �    "$session_gameplay_gameplay_player       sizeplayersColors	deepCopyfactionColorsplayersFactions                                               players      (for index)      (for limit)      (for step)      i         _ENV         F @ �@@ G�� f  & �    factionColors                                
factionId          _ENV         F @ �@@ G�� f  & �    playersColors                                	playerId          _ENV   E    ;    @ F@@ ��� ��@ A ���F�A �� �B �A
��  �BB �  �� @�@�@��ǂ��  @ ��� @���B   @  ��� ��� @ ������C ���B���C ���CC���@��ǂ� ��@ ������ �B��CCJ ������D �A� ��D �A� & �    $session_visual_currentFaction$session_visual_factionsize#$session_gameplay_controlledPlayer,$session_gameplay_gameplay_scene_0_relationid9$session_gameplay_gameplay_player_@id_controlledFactions               factionColorsByTeams@idgetRelationfactionColors       @id_minimapColoravalue@id_minimapBorderColor_valueupdatePlayersColorsupdateChatColors         ;        !  "  #  $  %  '  '  '  '  (  )  )  )  )  )  *  +  +  +  ,  ,  .  .  .  .  .  /  /  0  2  2  5  5  5  5  5  6  6  6  6  6  8  9  :  :  ;  ;  =  =  >  >  '  B  B  D  D  E     
myFaction   ;   	factions   ;   factionsSize   ;   player   ;   
relations   ;   facs   ;   (for index)
   6   (for limit)
   6   (for step)
   6   i   5   color   5   rel      minimapColor-   5      _ENVteamsColorsfactionColorsBase G  I        @ &  & �    $interface_@interfaceId            H  H  I         _ENV K  M        @ &  & �    $interface_@interfaceId_nodes            L  L  M         _ENV �  �   
!   
@ ��@@ �@����@ �   � AA �@��@ �   �  �@@ � ���A _�@� ���A �@@���@ �  AB A� ��A ��  � A �@��@ ��A �  & �    find$lastResult logCan't find image for ''id@idinterface.interfaceName".content.image: No image with id= (name=)         !   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     images    !   name    !      _ENV O  W       F @ �   d� @�  ��@   �C@  C � f  F @ �   d� �� @� A @ �C � f  F@A �   d� _�� @ ���   ��@  � � �  C   f  & �    typenumber        stringtrue	tonumber              P  P  P  P  P  P  P  P  P  P  Q  Q  Q  Q  Q  R  R  R  R  S  S  S  T  T  T  T  T  T  T  V  V  W     v        n         _ENV Y  e        �F@@ d�� G�� ��� � � AA � A� � �� h��N�A@�G� � �B CA Cg��& & � 
   idgetInterfacehotKeys_list_@id_keyssize	$0_valuehotKeyNames              
@id_value +             Z  [  [  [  \  ]  ^  ^  _  _  _  _  `  `  a  b  b  b  b  b  _  d  e  
   	hotKeyId       keys      sz      key      result      (for index)      (for limit)      (for step)      i      key         _ENV g  o      @ ��@@ �@� ���  �   ��@@ � A   �  �   & �    id@id_hotKey 
getHotKey            h  i  i  i  j  j  j  l  m  m  m  m  o     nodes       	widgetId       key         _ENV q  x   	   � @ �@ @@� �ǀ@ �    ��  & �    	envNames @envType_createTag         	   r  r  s  s  t  t  t  v  x     	envTypes    	   envType    	   nm   	      _ENV z  �      `���  ��A  �� 
����� �A�����! �@ ��AA� �! @ ���A�  ���A�& �    visible        widgettexttextColor_value����    �� �    �  �               {  {  {  {  {  |  }  }  ~  ~      �  �  �  �  �  �     	showNode       
digitNode       	initCost       	fullCost       hasRes       divider       w           �  �      � @ �  !  @ ��@  �  � @ ̀@ �� �  ����b   � �ǀ@�  � ���@�    ��  & �    nationNames---                          �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     id       firstPeriod       result	         _ENV �  �      � @ �@@ �� �@@ ���  �  � A   @� � ��   & �    unitNations        getNationName            �  �  �  �  �  �  �  �  �  �  �  �  �     unitTypeId       firstPeriod       	nationId         _ENV �     "�   � �  �A@ �@ "  ���@  A  �& � �@ FBA \�  �� �
�A� ��& � BA F�@ B@GB� ��F�B � ����B ����BC � � 
����BC A� $� 
 �D BDG�Db  � �F�D  �� �
�A� ��& � FE ��D G����BE  A  ��B  �� �B G�E ����@���BF���ǂF_ � ���F   @��B���F D �B ��F E �B �BE   �B ��G ��J���� ��� A  �& � @��GBG �  �& � ��������G�BE H_ B  �C  � �B �BH����F�H �@G��
@�FCI �@G��
@�F�I � ��d��
@�`��  �CC  C� 
@�
���F�H ��G��
@�FCI ��G��
@��F�I ����d��
@�`��  �CC  C� 
@��
��G�SC�
@��A� ��L�    �GM�� ��L�    ��M΃� �� �
�͚��N
 ��  �
���DN  ���
�M�O GDO��O$��
 ��  �
�A���G��D�ǄP����	�P	��	�PG��E
G�P	E
GQ��M��
�Q	M��
�EQ ��������Q��G�����R GR G�R ��	χ�	  AH �F��R �R GS � 
χ
 �AH �F��R GS G�S ��
χ�
  AH �F�& � O          $session_gameplay_gameplaymassUpdateMassmassUpdateId massUpdate$328_visible        liveConstructed$lastResultunderTransformation$548_widget_text	localize<*upgradeUnit/1><*upgradeUnit/0>workButtonsState	       showcurrentSelectionUnitTypecurrentSelectionUnitTypesassertworkIdidunitType_@idwork_@id_abilityability_@id_typelog$currentSelectionUnderTransformation	work_@idabilityability_@idtype
data_unit$573_widget_text
unitNames$756_widget_middle_set_normal
unitIcons$594_widget_textgetUnitNationName$80_visible$80_widget_text$578_widget_text$711_widget_middle_set_normal$709_widget_text$125_visible$125_widget_text$547_widget_text	makeTime�              	supplyOnsupply_cost$349_visible$536_widget_text
       requirements_unit_size$127_visible$228_widget_textgetListOfRequiredUnitsrequirements_unitrequirements_unitsAll
costOrder
costStartcostProcess$0$1$2$session_visual_currentFactionscene_0_faction_@idtreasury_resourcesoutCostDigit$350$530$351$457$352$383         �   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                            	  
                                                        !   nodes    �   
myFaction    �   statistics    �   firstPeriod    �   unitTypeId   �   workId   �   num   �   	gameplay   �   data       liveConstructed       underTransformation       state'   U   sel3   U   	fromUnit=   U   	fromUnitW   �   work\   �   abilityb   �   nextUnitIdj   �   	nextUnitl   �   supply1�   �   supply2�   �   supply�   �   
costOrder�   �   
costStart�   �   costProcess�   �   i0�   �   i1�   �   i2�   �   	sFaction�   �   
resources�   �   r0�   �   r1�   �   r2�   �      _ENV   #   	   � @ �  @@@ ��   �  �@ �  & �    unitsWorkIconText          	         !  !  !  !  "  "  #     unitTypeId    	   workId    	   workIconText   	      _ENV %  ,      � @ !@ @ �� � �  @��ǀ@ �@ G�bA  � �GA�` �  �CA  C� f & �    sizeid@id8$session_gameplay_gameplay_researches_list_@id_quantity
inProcess	quantity            &  '  '  '  '  (  )  *  +  +  +  +  +  +  +  +  +  ,     researchesState       researchId       size      researchState      quantityLimit         _ENV .  3      � @ !@ @ ��   �  @����@ ��@`� �  ��@  � � �  & �    sizeid@id	quantity                    /  /  /  /  /  0  1  2  2  2  2  2  2  3     researchesState       researchId       researchState         _ENV 5  :   	   � @  ��ǀ@�@ @��� %�&  & �    #$session_gameplay_gameplay_factionid@id_researchStateisResearchCompleteF         	   6  7  8  9  9  9  9  9  :     faction    	   	research    	   	factions   	   researchesState   	      _ENV <  C      � @ A@ G�@ J����A !�� ��A � �a@  ��A  �� � & �    typeminmaxliveConstructed$lastResult            =  >  ?  @  A  B  B  B  B  B  B  B  B  B  C     requirement       statistics       noMax       ru      min      max      live         _ENV E  L      � @ �@    AA  �@��A@����@ A @� a���  ��B  �� � �  @ ��� � � ��   �  & �    size       idhaveRequiredUnit@id                   F  G  G  G  G  H  H  I  I  I  I  I  I  I  I  I  I  I  I  G  K  K  L     requirements       statistics       sz      (for index)      (for limit)      (for step)      i         _ENV N  U      � @ �@    AA  �@��A@����@ A @� a���  ��B  �� � �A  @ ��  � � �� � �  & �    size       idhaveRequiredUnit@id                   O  P  P  P  P  Q  Q  R  R  R  R  R  R  R  R  R  R  R  R  P  T  T  U     requirements       statistics       sz      (for index)      (for limit)      (for step)      i         _ENV W  ]      b   @�� @    @ � ��    ��@@    @ � ��   & �    haveRequiredUnitsAllhaveRequiredUnitsAny            X  X  Y  Y  Y  Y  Y  Y  [  [  [  [  [  ]     requirements       all       statistics          _ENV _  h      � @ @@@ �� � �  ��    A�  ��΁@����A BA @� ���$��"  @ �� & ����   �  & �    size               id@idisResearchCompleteF            `  a  a  a  a  b  b  b  b  c  c  d  e  e  e  e  e  e  e  e  b  g  g  h     requirements       researchState       sz      (for index)      (for limit)      (for step)      i	      o         _ENV j  r      � @ �@    AA  ���A@����@ A @� ���$��"B  @ �  & ���� � �  & �    size       id@idisResearchCompleteF            k  l  l  l  l  m  m  n  o  o  o  o  o  o  o  o  l  q  q  r     requirements       researchState       sz      (for index)      (for limit)      (for step)      i      o         _ENV t  z      b   @�� @    @ � ��    ��@@    @ � ��   & �    haveRequiredResearchesAllhaveRequiredResearchesAny            u  u  v  v  v  v  v  v  x  x  x  x  x  z     requirements       all       researchState          _ENV |  ~      � @ A@ G�@ � � �    ���@ A GAA �� � �  & �    haveRequiredResearches	researchresearchesAllhaveRequiredUnitsunit	unitsAll            }  }  }  }  }  }  }  }  }  }  }  }  }  ~     requirements       statistics       researchState          _ENV �  �      @ 
�� �@ A  ���@ 
AA�
�A�FB GA�@��
���F�B GA�@��G�B J� �J� �& �    specialAbilitiesidworkButtonBlocks@idvisible	disabled workReservePanels@id_visibleworkButtons@id_widget_middle_setnormal            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     nodes       	buttonId       	unitType       icon       n      set         _ENV �    
 �   �  �� � G@ @ -� ��G�@�������A�CA��` ��  �D  � FB Gā@��FD@ _@���
 �"  � �FC Gā@��
���G����C ��E�G�� �� ��D �GE�� � #�� �# 	  � �	F�E GŁ
@��FE@ _@�
@�G�E "  @�����"  @��EFǅ���J��JǍ  �JEǍC� �� �G�A �GH@��� 	 
FFH ��G ��H���FFH ��G ��Hǅ����H@�G�H@�� 	FI ��� ��G d��b  �
�� 	�   �FFI ��G G��_@�� �`@�  ��B  �� G�� [�F�I ��G ��HG�������� J��GH@����  �� 	 FFH ��G ��H���FFH ��G ��Hǅ�@�GFJ@�� 
�� ��
 ��
 "  � ���
@ ��B  �� �  �	�F�J GƁ@��G�E JǍ�K ���FK @B  �G  � �F ���Ǘ�L �Ɓ����FL ʆ��ƅ�JƂ�M � ��G@ _@B@ ��

 �GM @�� $��_@B� �G�H�F�G�H�F��K�� ��  kC�f & � 6   
work_sizeid	work_@idabilityability_@idrequirementsreserveLimit        workReservePanels @id_visibleworkReserveNumberworkReserveNumbers@workReserveNumber_widget_textenabledhaveRequiredResearches	researchresearchesAllresearchStatehaveRequiredUnitsunit	unitsAllworkReserveProgress@idwidget_currentd       reserveTimevisible typeworkObject
data_unit
unitIcons       data_researchisResearchReadyForStarthideResearchOnFinalAge"researchesUnavailable_@workObjectresearchIcons       data_id      workButtonBlocksworkButtonsStateassertworkIdshowworkButtons@id_widget_middle_setnormal	disabledworkUnavailableIcongetUnitWorkIconText         �   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                              nodes    �   
myFaction    �   statistics    �   reserve    �   reserveProgress    �   unitTypeId    �   	unitType    �   	buttonId    �   workId    �   	finalAge    �   show   �   	disabled   �   	continue   �   work   �   ability   �   requirements   �   hasReserve   �   	enabledE   �   	enabledR$   �   	enabledU)   �   enabledSum.   �   node5   B   
availableC   �   normalIconD   �   disabledIconD   �   abilityTypeE   �   he   k   iconq   s   nodeButton�   �   state�   �   set�   �   	iconText�   �      _ENV 	     	   � @ `@@   ��@  � � �@   ���@ � @  A  �A  � �@ �@ � A� �����B�  � ���   �A ���& � 	   assert@       id9$session_gameplay_gameplay_player_@id_controlledFactions         ?              @id            
  
  
  
  
  
                                               player       func       facs      (for index)      (for limit)      (for step)      faction         _ENV   2    #]   @ @@   �& � �@ $�� F�@ � � @A  �& � ��� � �� B _@@� ��@B�� _ �  �& � � C @ � ��@����ǀC� ���C D @�  �CA  C� $A A�"  � �
�D�A�
 �  �
�E���"  � �
�D���
 ��  �
�E���"  � �
�D���
 ��  �
�E���"  @��` ��  �CA  C� 
@��  ����F�H �	 d� �AI��H �	 � ]��
@�  �
�Ő�
 ����
 �� AA �A �A B +A K �A �A B AB kA ���_ K@ �
AÆ@��A��AB @��B (��C� ��KG�K
A�GLJA�'���AC�K���AL��ǁL��@A  ��A ��L ���BM �MGBCOB�R��$� FBM G���K�����d� �BM ��M�BL�҂��� �BM ǂ��L��� �M M�C�̓,   �N GDN � $D�
@�N G�N ��$D�
��N GDO � $D�
��N G�O ��$D�  P� �� DC�P�A� D
 ��
 �N GDQ � $D�K�P�A� D
 �
@��N GR ��$D�DL�P�A� D
 ��
��N G�R � $D��L�P�A� D
 �
���N G�S ��$D�D�DI
 ��
 �N GDT � $D��DI
 �
@��N GU ��$D�D�DI
 ��
��N G�U � $D���DI
 �
���N G�V ��$D�DCGD�DGK��O��DGDL�D�O��DG�L���O��D�SDI� ӄP�D�	]Ą
@��A� ��B _�W	���D  �  �AE � 
�E hE�NFX@�G����	���F g�G��E ��
F ����F����F��AG @��G (G�H� ��Y@�	� dH '���������Y �Z ʄڴEM �M
O�ME����L O��
$� ����[	\
���\	G��	E
\
���E�A� �E (� �] � �
�ݺ'��& � w   currentSelectionUnitType 	getNodes-$session_visual_scene_0_selection_units_listsize        id$0_id,$session_gameplay_gameplay_scene_0_unit_@idinstanceId$0_instanceshownUnitTypeInfocurrentSelectionUnitTypes       typeModified0$session_gameplay_gameplay_unitTypeModified_@idassertmovementOn$1072_visible$1053_widget_textmovement_moveSpeed transportingOn$241_visible$246_widget_texttransporting_volumetransportOn$675_visible$653_widget_texttransport_volumeairplaneOnairplane_fuel$1405_visible$1404_widget_text	localize<*timerSec/0>�      <*timerSec/1>$1009_visibleopenFows_1$1029_visiblehiddenInFows_1armor_type       armor_data@idprobabilityobject_tickness              interfaceScale�       mathfloor$6_localLeft	setSizeX$6$56_localLeft$56$98_localLeft$98$99_localLeft$99       $261_widget_textd       %$261_localLeft$261$362_widget_text$362_localLeft$362$363_widget_text$363_localLeft$363$364_widget_text$364_localLeft$364$388_widget_text$388_localLeft$388$387_widget_text$387_localLeft$387$366_widget_text$366_localLeft$366$365_widget_text$365_localLeft$365$1391_widget_text.
                      weapon_size       idweapon_@idturret_sizeturret_@id_weapon@id$114$193visiblesizeYx       �       
localLeftscreenLeft
       	localTop
screenTop       weaponBlock@id_visible          k  r      ! � @ �
���@ �
���
@ �& �            visible sizeX           l  l  m  m  o  p  r     node       size            �  �       @ @ ��@  �   @ � ���@ �   � � �  �@A ��@ �  �   & �     0       �       x 	tostring            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     damage       attacksPerAttack          _ENV �     �   E   � � �  ��   �& � E   M@� I   F � �   G�� H@ �� ��G@A ��� ��A B � �A� � ��� E  AH ��GC��$��� ��  FA� \�  �  �& � A� E  AA� �A  �� B  ���H@��BD_�D��_��@ � �@ �_�C �MA�� !�� ��BC�H �� ��C�H ��� C� ��H �C� C� ����H ��@ ��$��� �������� �  ��H��`@�  ��A  �� ����A�� B  ����B� �  ���B�B@H���@ǁ������ �  ��H��� ����� �  ��H���� �A� ��ƁH�D@ ��ɑ��  ��D@ ��ɑ  �ʁ��B� F�� �  G��H@�F�I�C ��B� ��
 �� J�� �@@ ��B� ��
 �� J��@�@E� ��B� � �� J���BK Ƃ�   ��H����K SCLP���B�������L � E  CC@H ���@ ��@ǁ��� ��� E  CCEH ��L �LAC C� ���� E  CH ��M �C� �GN S���@��@�S�K�C �N ���]Ã�@��& � :   weaponBlock       	widgetId@widgetId_visibledamagedamagesattacksPerAttackattacksPerActiondamagesCountweaponDamageValue@widgetId_widget_text$0weaponTypedDamage               id@id                      @widgetId_widget_set_normalweaponUnitTagIcon       	unitTags       specialDamage@id_visible weaponAdvancedInfoweaponIconunitsWeaponIconshownUnitTypeInfo@widgetId_widget_setnormal      areaweaponDamageType@widgetId_widgettext	localize<*damageArea/0><*damageArea/1><*damageArea/2>rechargePeriodweaponRechargeTime�      .d       
       spreadweaponSpread%weaponDistancedistanceMindistanceMax -           �   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                             
  
  
  
                                 weapon    �   damage   �   damages   �   attacksCount   �   wtd'   �   n(   �   (for index)+   P   (for limit)+   P   (for step)+   P   j,   O   dmg.   O   typedDamage;   O   (for index)\   e   (for limit)\   e   (for step)\   e   j]   d   typedDamagea   d   wiq   �   setr   �   area~   �   widget�   �   rechargePeriod�   �   spread�   �   distMin�   �      	weaponId_ENVnodesgetDamageStr]                                            !  !  !  !  !  #  #  $  %  %  %  %  %  %  '  '  '  (  )  )  )  +  .  .  .  /  0  0  0  2  5  5  5  6  7  7  7  9  <  <  <  =  >  >  >  >  >  ?  ?  @  @  @  @  @  @  @  @  @  A  C  F  F  G  G  L  L  L  L  L  L  M  M  M  M  M  M  O  O  O  P  P  R  S  T  T  T  T  U  U  V  W  W  X  X  T  \  \  \  \  \  \  \  ]  ]  ]  _  _  a  a  a  a  a  a  b  b  b  b  b  b  c  c  c  c  c  c  d  d  d  d  d  d  f  g  h  i  r  k  t  t  t  t  u  v  v  v  v  w  x  x  x  x  y  z  z  z  z  |  |  }  }  ~  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                                            !  "  "  "      $  '  (  )  *  *  *  *  *  *  *  *  +  +  +  ,  ,  ,  ,  ,  .  .  .  .  /  /  /  0  .  2  4   nodes   ]  selectionList   ]  gUnit   ]  	unitType   ]  fuel?   O   sz[   ]  	ticknessa   ]  armorg   t   armorsh   t   (for index)k   t   (for limit)k   t   (for step)k   t   il   s   ao   s   szs{   ]  armorBarSize�   ]  gsz0�   ]  gsz1�   ]  gsz2�   ]  gsz3�   ]  left0�   ]  left1�   ]  left2�   ]  left3�   ]  av  ]  	weaponId  ]  getDamageStr  @  showWeapon  @  weaponsNumber  @  (for index)"  *  (for limit)"  *  (for step)"  *  i#  )  weapon&  )  turretsNumber+  @  (for index).  ?  (for limit).  ?  (for step).  ?  i/  >  weapons2  >  weaponsNumber3  >  (for index)6  >  (for limit)6  >  (for step)6  >  i7  =  weapon:  =  parentA  ]  widgetB  ]  (for index)V  \  (for limit)V  \  (for step)V  \  iW  [     _ENV 4  <      � @ 䀀 A@ � �G���A�A��� �������A�� �� @ ��+B  ��& � 
   	getNodes'$session_visual_scene_0_landscape_sizeid@idxsizeX       ysizeY+$session_visual_scene_0_cameraShowPosition            5  5  6  7  8  9  9  9  9  9  :  :  :  :  ;  ;  ;  ;  ;  <     x       y       minimapWidget       nodes      sz      n      lx
      ly         _ENV >  V   �   � @ �   A  ����    ��  ��  �  �@ �  � @ �    ����    ��  �@ �  �@ �  � @ �   � ����    ��  ��  � �@ �  � @ �    ����    ��  �@ � �@ �  � @ �   A ����    ��  ��  � �@ �  � @ �   � ����    ��  �@ � �@ �  � @ �    ����    ��  ��  A �@ �  � @ �   � ����    ��  �@ A �@ �  � @ �   � ����    ��  ��   �@ �  � @ �   A ����    ��  �@  �@ �  � @ �   � ����    ��  ��  � �@ �  � @ �    ����    ��  �@ � �@ �  � @ �   A ����    ��  ��  � �@ �  � @ �   � ����    ��  �@ � �@ �  � @ �    ����    ��  ��  A �@ �  � @ �   � ����    ��  �@ A �@ �  � @ �   � ����    ��  ��   �@ �  � @ �   A ����    ��  �@  �@ �  � @ �   � ����    ��  ��  � �@ �  � @ �    ����    ��  �@ � �@ �  � @ �   A ����    ��  ��  � �@ �  � @ �   � ����    ��  �@ � �@ �  �  � 	  � �@ �  & � %   isResearchCompleteF]                     ;              r       	       @       s       
       D       t              C       v              ?       y              A       }              >       ~              F       �              I       �              H       �              =                       �   ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  @  @  @  @  @  @  @  @  @  @  @  A  A  A  A  A  A  A  A  A  A  A  B  B  B  B  B  B  B  B  B  B  B  C  C  C  C  C  C  C  C  C  C  C  D  D  D  D  D  D  D  D  D  D  D  E  E  E  E  E  E  E  E  E  E  E  F  F  F  F  F  F  F  F  F  F  F  G  G  G  G  G  G  G  G  G  G  G  H  H  H  H  H  H  H  H  H  H  H  I  I  I  I  I  I  I  I  I  I  I  J  J  J  J  J  J  J  J  J  J  J  K  K  K  K  K  K  K  K  K  K  K  L  L  L  L  L  L  L  L  L  L  L  M  M  M  M  M  M  M  M  M  M  M  N  N  N  N  N  N  N  N  N  N  N  O  O  O  O  O  O  O  O  O  O  O  P  P  P  P  P  P  P  P  P  P  P  Q  Q  Q  Q  Q  Q  Q  Q  Q  Q  Q  R  R  R  R  R  R  R  R  R  R  R  S  S  S  S  S  S  S  S  S  S  S  T  T  T  T  T  T  T  T  T  T  T  U  U  U  U  U  V     researchesState    �   default    �      _ENV X  ]      @ ��@@ _�@��_��� ���_� @ �  & �  & �    id@id instanceId            Y  Z  [  [  [  [  [  [  [  [  [  \  ]     units       unitId       instanceId       target         _ENV _  d      � � � ��@@ _�@� ���@� _ �@ ��   �  �  & �    id@id instanceId	instance            `  `  a  b  b  b  b  b  b  b  b  c  d     units       instancedId       target         _ENV f  k      � � � ��@@ _�@� ���@� _ �@ ��   �  �  & �    id@id instanceId	instance            g  g  h  i  i  i  i  i  i  i  i  j  k     envs       instancedId       target         _ENV m  �   �   F @  ����� ��@   A 䀀�   ����@   AA 䀀�@   ��  A A� �@ �  ��@   A� 䀀�   ����@   A 䀀�@   ��   AA �@ �  ƀB   AA � ��   ��@   A� 䀀�   ����@   A 䀀�@   ��   A� �@ �  ƀB   A� � ��   �  � A� �@ �  ��@   AA 䀀�   ����@   A� 䀀�@   ��  A A �@ �  ��@   AA 䀀�   ����@   A� 䀀�@   ��   A� �@ �  ƀB   A� � ��   ��@   A� 䀀�   ����@   A 䀀�@   ��   AA �@ �  ƀB   AA � ��   �  � A �@ �  �  A AA �@ �  & �    #$session_gameplay_gameplay_factionid@id_researchStateisResearchCompleteF                                          getAgeFactionIndustrial       	                                                    �   n  o  p  r  r  r  r  r  r  s  s  s  s  s  s  s  s  s  s  s  t  t  t  t  t  t  u  u  u  u  u  u  u  u  u  u  u  v  v  v  v  v  x  x  x  x  x  x  y  y  y  y  y  y  y  y  y  y  y  z  z  z  z  z  |  |  |  |  |              �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     faction    �   	factions   �   researchesState   �      _ENV �  �      
@ �
@��
@ �& �    normalColor_valuehoveredColor_valuepressedColor_value           �  �  �  �     set       color            �  �   5     @ @�S@@ �@@ ƀ@ ���A AA ��A �� B @� � �  �    @B ��S @ � @ �@@�@@ �@ �@F�B �A ��B � FC �� �BC ]���� �  �%�&  S@B �@B � @ƀ@ ����C AA ��C �� D @� � �  �   & �          <       stringformat
strTimeH0%u
strTimeH1%02d
strTimeH2�Q     
strTimeD0
strTimeD1
strTimeD2
strTimeD3
strTimeL0
strTimeL1
strTimeL2         5   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     value    5   min      sec      hour   %   min   %   sec   %   day&   5   hour(   5      _ENV �  �      @ ��@@ � ���& & �    id@id
@id_value            �  �  �  �  �  �     
relations       fromFaction       
toFaction       f         _ENV �  �      F @ @� @�K  ��  ��@ � �k@ f  F @ �@A G�� @� @��  ��  �@ A�@ �  �  � � �A MAA A�@ �  & �    playerNames Nonamefontsen       playerFonts            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     player       name         _ENV �  �      @ @  $� G�@J@��GAJ@��_@A  �J� �_@�  �J���& �    getPlayerNameFonttext       	fontName        textColor_valuestrokeColor_value            �  �  �  �  �  �  �  �  �  �  �  �  �  �     player       widget       
textColor       strokeColor       plnf         _ENV �  �   
   � @ �   �� �@@    @� ��@��@�@�& �    getPlayerColorwritePlayerToWidget                       
   �  �  �  �  �  �  �  �  �  �     player    
   widget    
   col   
      _ENV �  �      @ "A  @ �� & �@� � ��+A�
 ���@ & & �    '$session_visual_scene_0_hideInFogOfWar	checkFow$lastResult            �  �  �  �  �  �  �  �  �  �  �  �  �  �     scene       x       y       
myFaction          _ENV �  �   
   @ "A  @ �� & A@ G�@ ����� $�  A@ �C� f K ��� ���  �GBkA 
@��FAB f & � 
   '$session_visual_scene_0_hideInFogOfWargetRelation	relationfaction       	checkFowposition_xposition_yhiddenInFows_value$lastResult            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     scene       unit       	unitType       
myFaction       rel
         _ENV �  �   %   � @ �  _@@ ��@@ ���  �  ��@� �AA� ��  ǀ� ���@@ ��  & �"  ��A��BG�B_�� �@� ��C!���@ ���  � �  & & �    unitsAttackGroundWeapon                d              weaponsize$0_enabled$0damagearearadiusP�               %   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     unitTypeId    %   	unitType    %   ag   %   weapons   %   damage   "   area   "      _ENV �  �   )   K��� �  �@ �B  kA�
@�F�@ @�F�@ G�@�@ �C  f F�@ G�_��@ �C� f F�A ��@ �Bd� ��A Ɓ@ �A��� �A�� O�M��`��  ��B  �� � & �    	calcPathj       res$a_lastResult       34	tonumber               ���            )   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  
   
landscape    )   x1    )   y1    )   x2    )   y2    )   xx   )   yy   )   dx   )   dy    )   d#   )      _ENV �        � @ @@   �A  � �@ � @ @�   �A  � �@ ǀ@ �  @���  (���� �BA GB� � �  ��B�'��& �    assert size       id@id            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �             �    
   weapons       weaponTypes       func       weaponsNum      (for index)      (for limit)      (for step)      i      weapon      weaponType         _ENV      
   � @ � FA@ ���   dA l  ��@ �   � @��A & �    weaponforEachWeaponWforEachTurret         
        � @ � � A@ @ ���� $A & �    weaponforEachWeaponW                               turret       turretType       weapons      weaponTypes         _ENVfunc                                  gUnit       	unitType       func       weapons      weaponTypes      funcT         _ENV         � @ @�  �& � ��G� ��  � �  ���������B��B�  @ ��$C����& �    turret size       id@id                                                       gUnit       	unitType       func       turrets      turretsNum      turretTypes      (for index)	      (for limit)	      (for step)	      i
      turret      turretType         _ENV !  R    E    @ $�� F@@ ��@ ��@@A�@A�
 
 
 B��B G��A� $��_@A��G�C��C�� BD @����  �$��"  @	��D �E F�D B
�ŊFF ��DƂD d��
@��FBF ��D G��_@�@�
�E��G �B���
�����G ���� �  H  �� �H
���  �
 B�_@A� �
�E�
 �� �
 B�� �
   �
 & � $   	getNodes$session_visual$session_gameplay_gameplayscene_0currentSelectionUnitType currentSelectionUnitFaction$22_visible $423_visible$679_visiblegetEnvIenvscene_0_selection_envposition_xposition_ycurrentFactioncanShowenvTypetype	envIcons$19_visible$330_widget_textgetEnvNameenvResource$36_visible$247_widget_set_normalresourceIcons       health        �      $248_widget_text$327_visible$327_widget_middle_set_normal         E   "  "  #  $  %  '  (  *  +  ,  .  .  .  .  /  /  0  1  2  3  3  3  3  3  3  3  3  4  4  5  5  5  7  9  9  9  9  9  ;  ;  ;  <  <  =  >  >  >  >  ?  @  @  @  @  @  A  A  A  C  F  F  G  H  H  J  K  M  N  P  R     nodes   E   	vSession   E   	gameplay   E   scene   E   env   E   gx   B   gy   B   myFactionId   B   icon    @   	resource)   @   h1   8      _ENV T  m   	W   "   � ��"A    �& � A�G��`@��� �G�`@��  �CA  C� �AA �A  � ��   ������b  @���� �@@ �   � ��B �  ������B �A  � ��@  ��A  �� ���_�@@ ��C ʁ�A� `���  ��A  �� �C "B    � � ��C "B  � �#�  �   ��D "B   �B� ` ��  �B  �  ���  ��@��D � "  @ �E 
BBE "B    ���  ��& �    controllablemovementOnweapon_size        turret_sizebuttonAttackMoveattackPriorityLimitattackPriorityLimitZeroattackPriorityLimitHighgetAttackGroundbuttonAttackGroundattackGroundListtransportingUnits_sizebuttonUnloadunloadToPositionbuttonStop
task_sizedanceDurationunitCanDancedanceUnitTypesbuttonGatherLasthasLastGather         W   U  U  U  U  U  U  W  X  X  X  X  X  X  X  X  Y  Y  Y  Y  Y  Y  Y  Z  Z  [  [  [  \  \  ^  b  b  b  b  c  c  c  c  c  c  c  c  d  d  d  d  f  f  f  f  f  g  g  g  g  g  h  h  h  h  h  h  h  i  i  i  i  i  i  i  i  i  k  k  k  k  k  k  k  k  k  l  l  l  l  l  m     isMyFaction    W   gUnit    W   unitTypeId    W   	unitType    W   movable   W   battleUnit   W   ag"   W   transporting3   W      _ENV o  �	    #�   @ $�� F@@ ��� ��@ �GAA��A ��  ���  �B�_ B@��C`@�� �ǁC��� �
@D�@D������D����� �D _�� �BE @ �B  � G�E@�G��BF  �  ��B  �� �B "B  ����F �   @�������B  � �
@D�@D������F��E_ G@�_@G��_�G@�_�G��HGCH�� @��@��� ��A� ������H_ �	  ���H�C� @��� ��B  �@D�I @ � �  �$C��I  
 ���I "  @ �
 ʓ ʔ����D  ���H�"  � �CE "   ��D   �@��J 
ʕGK�CK ǃK �F�D �� ��K �D � _ ���L @���̈́H�Ą Ǆ�	$D �H@ �
 ʘ���C �
 J�� �
Cĕ  �
@ęM K � �� kC 
C�CM M�HCF�M ��HG��
@� B@ �
@N� �F�N ��D d� G����N � ��_�H  �D  � ���
��GO`@��  ��C  �� 
���
@���O ���� �  P  �� ���
 ʠ�P "  @�PA ���
 ��@ �P
 ���Q�
 ��
@ģ� FR \��� (� �R �
 �
@Ĥ'��C@C��   �@ĥ@D�@Ħ@D�@ħ@D�@D�@D�"  ���
 ʨ
@D��TPUS�U�� ]��
@��
 � ~�"  ��DV  � ��V _ W@�
 J��W G�WM��D
 ��DVP
 �  �
@D�D��B  �CD  C� 
@�_�B@�O�QS��� ]��
@��A� �DY � 	�� h��R�U
ME�OE��EY ���a �
  ��E  �� 
���g��GC!@� q�"  �p�F�I bD  @K�G�Y�D� ���@J����DZ	�F	_�B
� �_�H
@ ��Z
��G�Z	b  @ �
 J�  �
 ʶG��	@�GE�	@�@E��\
@�
 ʹG��	@�GE�	@�@C��C
��G�	��A �� �
���_ B A��E�	
 J��[ �F\ ��E ��F^ ��F��HG��
@��FF^ ��Dd� G����^ ��^  ��F���O��Q��O��
��� ǆE��
�F 
�����_  �_���PG  S�QP���F�
��@ ��P
�����EG��
���F�
��Ɔ_  ������AG  ����! �
 �� 2���A! G
 ���0�@C
 �G��	@��G�a_ �
 /�
 JćE�
��ć��
���E�
��������^ ƅE ͅ���
��ņE^ ��D �� ��Hƅ^ c @ �E�
��� )��Y
 �F�A ����	d��_ �
 '�
 Jć��
���E�
���^ ���
ͅ���
��ņE^ ���
�� ��Hƅ^ c @ �E����
υ���
���@!��c
@�F�V _ �
��G�	��c �d �
���_ B@�
 ����[���E\����F�����Fe F�d F
 ��O�QG��F
 �
 ��F�	G���� �F�� �F���������� ��������G��AH  �����U�
 �˧�@��g
 �F�A ����	d��_ �
@�
 �χ��
���E�
���^ ���
ͅ���
�ІE^ ���
�� ��Hƅ^ Fh @ �E����h
@�G�h��A �� �
���_ B@�
 J���[���E\���^ �F�H��
������i
 �G�	��A �� �
���_ B@�
 ����[���E\����E����^ G�FM��F
 �F^ G�D$� �HF�^ �Fj � dF�G�OO�����S��
@�G�� @���#�Gk�����ֆDk  ���  �
 �׆Dk `��  ��D  �� 
�؆Dk  ������D��  ���� ���P
ӄ

 ʣ��	A� E

 ��
��� A�# �� (���� �F�FFk !@�@�FR Gƅ@�
 ʤG�m �������m �M �A ��ǆ�k����k����G� ���F�n bG    �G�@��G�F_ B� ���HJ��� �������o�߆^ Ƈo ͇���J����������p�߆Gp Ƈo ͇���J��� �������o�߆^ Ƈo ͇���J���� ���p��J��އq�Gq �ǅ��Ǉq `��  �H  � ��� ��@�ʇ��� �FFq Gƅ@�
@Ĥ'���' FEk �� (���� �� ��FFF  B  ��F  �� dF F�n bF    �Go@��'��& � �   	getNodes$session_visualscene_0_selection_units_list_0$session_gameplay_gameplayscene_0unit	getUnitIcurrentSelectionUnitType currentSelectionUnitFactioncurrentSelectionNum        state       	presence       $484_visible unitsShowWorkfactioncurrentFactionisModeReplayidtypeModifiedunitTypeModified_@idassertcanShowUnittypeK      L      O      P      attachedAirplanesize       @id_idupdateUnitButtonsState$22_visiblebuttonUnload$679_visibleshowingUnitsInTransport$988visiblewidgetgetRelation	relationgetPlayerOfFactionwritePlayerToWidget$713_visible$290_visible$988_visiblecurrentSelectionUnitTypesunitNations$24_widget_text
unitNames$252_widget_textgetAgeFactiongetNationNamekillsCounter$1001_visible$1003_widget_texthealth�      $71_visibleshowFullHealth$25_widget_text / $71_widget_currentd       $168_visibleworkQueueButtons@id_visibledanceUnitTypesbuttonGatherLastbuttonStopbuttonAttackGroundbuttonAttackMoveattackPriorityLimitZeroattackPriorityLimitHigh$423_visible$35_visiblebuildingProgress  �     $389_widget_text
        %$390_widget_currentbag_amount�      unitTypeId_-      $39_widget_set_normalresourceIconsbag_resource$86_widget_textstorageMultiplier$34_visible$33_widget_text       storageBoxes       task$0data       strict$739_visible$546_visibletaskPositionXposition_xtaskPositionYposition_y       $1119_visibletargetweapon$735_visible$750_widget_middle_set_normal
unitIconsgetFactionColorsetFlagColor$753_widget_set$754_widget_currentunit_averageDamage$lastResult'      $748_widget_text.unit_hitChance$1399_widget_text%planIdplanfaction_buildPlan_@planId$738_visiblerulebuild_@rule_unit$762_widget_middle_set_normal$776_widget_set$764_widget_current       getEnvIenv$736_visible
envTypeIdenvType_@envTypeId$755_widget_middle_set_normal	envIcons$774_widget_current$784_widget_text---targetTags_valuegather@id_envTags_value@id_perTick              $737_visible$758_widget_middle_set_normal$775_widget_set       targetAerodrome$1326_visible$1381_widget_middle_set_normal	       $740_visible$768_widget_middle_set_normal$772_widget_set$771_widget_current
work_sizework
queueSizequeue_size$58_visible$59_visiblequeue_0_time	progress$168_widget_text$64_widget_current
queue_@id@id_widget_middle_setgetUnitWorkIconText	work_@idabilityability_@idfinalizedWorkfinalnormalworkObject
data_unitdata_researchresearchIconsdata_id      amountworkQueueNumbers@idwidget_textqueue_@id_work         �  p  p  q  r  s  t  u  v  v  v  v  w  x  y  {  {  {  {  {  {  {  {  |  }  }      �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �   	   	   	   	   	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	   	   	  !	  "	  "	  "	  "	  #	  #	  $	  %	  &	  &	  '	  '	  (	  (	  )	  *	  *	  *	  *	  *	  +	  +	  +	  +	  ,	  ,	  ,	  ,	  -	  -	  -	  -	  -	  /	  /	  /	  /	  /	  0	  1	  1	  2	  2	  2	  2	  2	  2	  2	  4	  4	  7	  7	  7	  7	  7	  7	  8	  9	  9	  :	  :	  :	  :	  :	  :	  :	  <	  <	  <	  <	  >	  ?	  ?	  @	  @	  A	  B	  B	  C	  D	  D	  E	  E	  F	  F	  G	  G	  H	  H	  H	  H	  H	  I	  I	  I	  I	  J	  J	  J	  J	  K	  L	  M	  M	  N	  N	  N	  N	  O	  O	  P	  Q	  Q	  R	  R	  S	  S	  S	  S	  S	  T	  T	  T	  T	  U	  U	  U	  U	  V	  V	  V	  V	  W	  X	  X	  X	  X	  X	  Y	  Z	  Z	  Z	  Z	  [	  [	  \	  ]	  ]	  ^	  ^	  _	  _	  `	  a	  a	  a	  a	  b	  b	  b	  b	  b	  d	  e	  f	  g	  g	  g	  g	  h	  h	  i	  j	  j	  j	  k	  k	  l	  l	  l	  l	  l	  l	  g	  o	  p	  p	  q	  q	  q	  q	  r	  r	  s	  t	  t	  u	  u	  v	  v	  v	  v	  v	  w	  w	  w	  w	  x	  x	  x	  x	  y	  z	  z	  {	  |	  |	  |	  |	  }	  }	  ~	  	  	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  ]   nodes   �  	vSession   �  selectionUnit   �  	gameplay   �  scene   �  units   �  gUnit   �  myFactionId   �  isMyFaction#   �  	unitType&   �  unitTypeId:   �  unitTypeModifiedId;   �  atD   W   atsE   W   sumF   W   (for index)K   R   (for limit)K   R   (for step)K   R   iL   Q   nr   �   wt   �   rely   �   pl|   �   nation�   �  
actualEra�   �   killsCounter�   �  
curHealth�   �  
maxHealth�   �  (for index)�   �   (for limit)�   �   (for step)�   �   i�   �   buildingProgress�   �   storage  �  (for index)  !  (for limit)  !  (for step)  !  j     g     tasks*  W  task.  W  data/  W  	taskType0  W  	targetIdL  �  unitP  �  	weaponIdS  �  	unitType[  �  colord  �  dmgs  �  chance�  �  plan�  �  color�  �  unit�  �  color�  �  envId�    env�    envType�    targetTags�    gather�    (for index)�    (for limit)�    (for step)�    i�    tags�    val�    unit    color    	targetId#  3  unit'  3  	targetId7  W  unit;  W  	unitTypeE  W  colorN  W  worksState[  �  	workTimek  �  workProgressl  �  (for index)z  �  (for limit)z  �  (for step)z  �  i{  �  
workState~  �  set�  �  	iconText�  �  work�  �  ability�  �  abilityType�  �  amount�  �  n�  �  (for index)�  �  (for limit)�  �  (for step)�  �  i�  �  work�  �     _ENVteamsColors �	  *
    e    @ $�� 
���
���F A �@A ǀA�A C� �  @B��� � G� �� (���� ���� F�C ��� d��_@�����!��������_�D �������B _@�� ��B � 	�����D���GD�@��G�E��E �B _ �	� ��F @ ��D  ��  �@����D��DF �  �C  ��F �	@B	��ƄF  @��� +E �� ���D	���	�Ą�'����@�@@@ $�� 
�@����b  ��@@�G @ $� � ��FB @��@ �)�  �B����& �     	getNodes$71_visible $679_visible-$session_visual_scene_0_selection_units_list$session_gameplay_gameplayscene_0_unit$session_visual_currentFactionfaction                sizeid@id	getUnitIstate       	presence       typetypeModifiedunitTypeModified_@idupdateUnitButtonsStateisModeReplaycurrentSelectionUnitTypecurrentSelectionUnitTypescurrentSelectionUnitFaction$484_visibleunitsShowWorkpairsshowingUnitsInTransport         e   �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  	
  	
  	
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  �	  
  
  
  
  
  
  
  
  
  
  
   
  !
  !
  !
  !
  "
  #
  #
  #
  !
  !
  )
  *
     nodes   e   
unitsList   e   	gameplay   e   units   e   myFactionId   e   notFramedAny	   e   currentSelectionButtonsTypes
   e   unitsCount   e   (for index)   M   (for limit)   M   (for step)   M   i   L   selectionUnit   L   gUnit   L   fac!   L   unitTypeId)   L   unitTypeModifiedId*   L   	unitType.   L   a@   L   (for generator)\   c   (for state)\   c   (for control)\   c   k]   a   v]   a      _ENV ,
  q   +�  F @ d�� �������@�����   � �����@�����   � �����@��ÆJ���J�@��   ���� �ˀ  ʀ��ʀC��  
���
�C�K�  J���J�C���  ������C�ˁ  ʁ��ʁC��  
���
�C�K�  J���J�C���  ������C�˂  ʂ��ʂC��@�� ��@E ǀE_��� �� F �@� ������ƀF ��GGJ���J�@�J���J�@�J���J�@���H�I���   ���� ��œ�E����@�J�ʔ�J��ʌ��� �K $B� @ �BK $B� �I _�E����K F�K _�� �F�K ��I ��I ����J_��@ �FL dB� F�I ��I G����L ��������J���_�������`���  ��B  �� J�����J�����`���  ��B  �� J��J���J�@�J���J�@����J@���N�O  �@ 䂀_����C�! �����_ M �C� ���A� �� �  Q @�� ��$D  @�� �J�J������J ��GD���  �AD ��R�E	  ��D  �R������E�  �	@ �@�	� 
 @�� �Ǆ� ʄʧ���
���DT_��	�� ��� �E�J�ʜ  �� �J�J�FU GE�
��U �����d� J@��  �J�@�FU GE�
��U ������d� J@�EV_�E
^��  ��^C�GE�J�J� @�� �J�J��U �EUƅU �Ņ��E��� J���  �J�@��U �EUƅU �Ņ����� J��^���BW ƂW �� ��J��W � @ �B�ƂW CX_ �� �ƂX @ ��B  �� �  �^�C "  �]���_�E ]�GYb   �FCY _��@�F�K ���U �C��Y Z� U DUFDZ O�$� A� �C�J����Z ��J ����C[ M� D[ G�[$� G��N��D��\	Ƅ\  �@�� �  � �  ��Ƅ\  �@�� ��  	� �  @ �J�ʇ  �J�J�G�\��	�C D AD �D �D E AE �E �E F AF �F �F G AG �G �G H AH �H �H I �C ��	D AD �D �D E AE �E �E F AF �F �F G AG �G �G H AH �H �H I AI �C D F�I ��I G��G��_ �  �CD  C� ��
 ���
 �����
���E]�O  �@ 䅀_����F�! � ���_ M@�b   ���GI @��  ��@�F�F�I @����"  � �FC �J ���J�
 @���
 (���� �^FG^ �E  ��G  �� dG G�^ @����G������������ǆ�� �@ ���ʃ�'���D��C �  @/��DI �D   ��DC _ 	  ��D  �� ����  ƄW ���D�E[ F�_ $� �E
  �� FEI b  @�A�
 �  ��
 h� �F�` G�@��J���g�� '�Fa ��I ��I ����JG��
��
 �  �
 �E��F^ ƆD �F���  ��F  �� �F ��` �F��J���_��
@
��F�
_�E����
  A�
 ��Ǉ�a @� ��	�  ��		M��GI���I ��I ��	��J�	  
�@
��
 
$��G�Jb  � ��� G�[b  ���F�@�Ɔ` �F����J���ƆD �F�ʆ��@���a ��  �	@  �G�G��I F�I H�J@ ����� 	 
����D    ���J����I ��I ����J�a@��E �b �I �  ���J�  j��J���Eb  � A�
 ��! Ɔb ����E��� ��I ��I ����J�b@��E �b �I �  ���J�  j��J���Eb  � A�
 ��" Ɔb ���E��� ��I ��I ����J c@��E �b �I �  ���J�  j��J���Eb  � A�
 �# Ɔb ���E��� J����@^ �I _�E@��I F�I A�E  �A  � �@ ��@ �@    �� A J� ���@ �   @ �� A � �J���� A �   @ ���@ � �J� �� A �     ���@ J����@@ J� ��@B J����@e �B � � �J� ���B J� ��@A J�����A J� �& � �   	getNodesbuttonAttackMove attackPriorityLimitZeroattackPriorityLimitHighbuttonAttackGroundattackGroundListbuttonUnloadunloadToPositionbuttonStopdanceUnitTypesbuttonGatherLastunitsShowWork$currentSelectionUnderTransformation        $885_visible$866_visiblespecialAbilitiesworkButtonsStateshowworkId$session_visualscene_0_selection_env showEnvSelection%$interface_unitsSelectedGroup_active$session_gameplay_gameplayscene_0unit$19_visible$22_visible$423_visible$679_visible$713_visible$290_visiblescene_0_selection_units_listsizefinalizedWorkcurrentSelectionUnitTypescurrentSelectionUnitTypecurrentSelectionUnitFaction$484_visible       showOneUnitSelectionshowUnitsSelection-$session_gameplay_gameplay_scene_0_landscapeshownUnitTypeInfoshowUnitTypeInfo$114_widget_middle_set_normal
unitIcons$466_visible       $466_widget_text$535_visible$1378_visible$199_visible$1385_visible$1000_visible$0	getUnitIstate       	presenceidtypeModifiedunitTypeModified_@id�      forEachWeapon        $117_widget_current�      dieTimefuelairplane_fuel ��    time	bornTime$1378visiblewidget_currentweapon_0_charges$323_visible$323_sizeXmathfloorinterfaceScale       $312_sizeXweapon_1_charges$999_visible$999_sizeX$998_sizeXgetFactionColorfactionsetFlagColor$385_widget_setcurrentFactionisModeReplay+unitTypeModified_@currentSelectionUnitTypetags_5HQidfindFreePositionHQx       HQyj       $a_lastResult1	tonumber       size_x'      size_yblockedPath
work_size       @idtaskunderTransformation	work_@idassertreserveLimitwork_reserve_@idamountfaction_@id0$session_gameplay_gameplay_dataStorage_finalAged       	       nodeButtonIdworkButtonBlocks@nodeButtonId_visible
unitsWork@id_visibleshowWorkButton`      pairsshowWorkButtonSpecialtempAbilityIconsh      i      $68_visible$1276_visible$901_visible$1277_visible$1278_visible$945_visible$119_visible$201_visibleisEmptyTable$183_visible$456_visible$206_visible         �
  �
   
   � @ !���@�ǀ�   !� @ �� � �   & �    rechargeTime        rechargePeriod       
   �
  �
  �
  �
  �
  �
  �
  �
  �
  �
     weapon    
   weaponType    
   rechargeTime   
   rechargePeriod   	      rechMaxrechTm�  -
  -
  .
  /
  0
  1
  2
  2
  3
  4
  5
  6
  6
  7
  8
  9
  :
  ;
  <
  <
  >
  >
  ?
  ?
  ?
  @
  @
  @
  A
  A
  A
  B
  B
  B
  C
  C
  C
  D
  D
  D
  E
  E
  E
  F
  F
  F
  G
  G
  H
  H
  J
  L
  L
  L
  N
  N
  O
  O
  S
  T
  U
  W
  X
  Y
  Z
  [
  \
  ^
  _
  `
  a
  a
  c
  c
  d
  e
  f
  f
  h
  i
  j
  l
  l
  m
  m
  m
  o
  o
  s
  s
  s
  u
  w
  w
  w
  w
  w
  w
  w
  w
  w
  w
  x
  x
  {
  {
  {
  |
  |
  |
  |
  |
  }
  }
  ~
  ~
  ~
  ~
  ~
  ~
  
  
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
                                                              	  	  	  	  
  
  
  
        �
                                                                         "  "  "  "  "  "  #  #  #  #  $  $  $  $  $  $  $  $  %  %  %  &  '  '  (  )  )  *  *  *  *  +  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  -  -  -  .  /  /  /  *  1  3  3  3  4  5  5  5  6  8  8  8  8  8  8  8  8  8  8  8  8  8  8  8  9  9  9  #  =  =  =  =  =  =  >  ?  ?  ?  ?  @  ?  ?  B  B  C  C  C  C  C  C  C  D  G  G  G  G  G  G  H  I  I  I  I  J  I  I  L  L  M  M  M  M  M  M  M  N  Q  Q  Q  Q  Q  Q  R  S  S  S  S  T  S  S  V  V  W  W  W  W  W  W  W  X  ]  d  d  d  d  d  d  d  d  d  d  d  d  f  f  f  f  f  g  g  g  g  g  g  h  h  h  h  h  h  i  i  i  i  i  k  k  l  l  m  m  m  m  m  n  n  o  o  p  p  q  [   statistics    �  nodes   �  	vSession3   �  	gameplay;   �  scene<   �  units=   �  selectionListD   �  selectionSizeE   �  
landscape\   �  currentSelectionTypeCountk   �  selectionUnit�   �   gUnit�   �   	unitType�   �   rechTm�   �   rechMax�   �   checkWeapon�   �   dieTime�   �   	lifeTime�   �   
lifeLimit�   �   lf�   �   lim�   �   n�   �   chargesMax0�   �   charges�   �   chargesMax1�   �   charges�   �   color�   �  isMyFaction  �  	unitType  �  
landscape  E  res#  E  x)  E  y,  E  sx.  E  sy0  E  worksF  �  	reserves^  �  reserveProgressv  �  	selCountw  �  checkNoTask  �  (for index)�  �  (for limit)�  �  (for step)�  �  i�  �  selectionUnit�  �  gUnit�  �  tasks�  �  (for index)�  �  (for limit)�  �  (for step)�  �  j�  �  work�  �  res�  �  showAny�  �  
myFaction�  �  	finalAge�  �  (for index)�  �  (for limit)�  �  (for step)�  �  i�  �  
worksData�  �  (for index)�  9  (for limit)�  9  (for step)�  9  i�  8  	workData�  %  (for index)    (for limit)    (for step)    j    w    showDisabled    show5  8  sum@  Q  (for generator)C  G  (for state)C  G  (for control)C  G  unitTypeModifiedIdD  E  
typeCountD  E  sumX  i  (for generator)[  _  (for state)[  _  (for control)[  _  unitTypeModifiedId\  ]  
typeCount\  ]  sump  �  (for generator)s  w  (for state)s  w  (for control)s  w  unitTypeModifiedIdt  u  
typeCountt  u     _ENV s  u   	   F @ �   d� _@�   �C@  C � f  & �    next          	   t  t  t  t  t  t  t  t  u     tbl    	      _ENV w  �    `    @ G@@ ��@ ��@AAA ��A � �A h� �F�A G��@��g��K  @�FB � �A d��� ��  �A J���AC �C  �& � ��C �A  AB ���ǂ���B� �� ��D GE�C�ǃ��� �FGD�@�GF� ��  �D ʀ���C �DG Ǆ�	�A K� ��G �EA	�� ��G H	� kE  �D���G EA	� ���D���H����D����I�b  @���	H
��J  @ ��Ȕ���D��@�b  � ���	�J
����Ɣ��& � +   $session_gameplay_gameplayscene_0$session_visualscene_0_minimap_iconscurrentFaction       showMinimapIconsremoveisResearchComplete\       findAllUnits�               $lastResult$a_lastResultid	unit_@idtypeModifiedunitTypeModified_@idtags_9faction	positionxcoordinateToVisual_@idycreate        �      tableinsert	tonumber       @idcolor_value����    position_xposition_yscale       wwWinFaction
billboard333333�?         `   x  y  z  {  |  ~  ~  ~  ~  ~        ~  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     	gameplay   `   scene   `   	vSession   `   icons   `   currentFaction   `   (for index)	      (for limit)	      (for step)	      i
      canSeeTownHalls   `   units   `   (for index)!   _   (for limit)!   _   (for step)!   _   i"   ^   unit%   ^   	unitType(   ^   wonder)   ^   faction*   ^   	position+   ^   x.   ^   y1   ^   iid7   ^   iconH   ^      _ENV �  �        ��@@ �@� ��@ �@� & �    interfaceScaleupdateTeamBlocks	onResize            �  �  �  �  �  �     widgetsScale       fontsScale          _ENV �  �        �F@@ ��  ��   � �@��A� �    �f �@��� �  & �    id9$session_gameplay_gameplay_player_@id_controlledFactions        ?              @id��������            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     player       facs      (for index)      (for limit)      (for step)      i         _ENV �  �   	   F @ �@� ��  �@A�  �����A�   ���"    �� ����   �  & �    "$session_gameplay_gameplay_playersize               id@id_controlledFactions@id            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     faction       plr      plrs      (for index)      (for limit)      (for step)      i      player         _ENV �  �      F@@ �   d� @ �F�@ f  & �    idgetFactionOfPlayer4$session_gameplay_gameplay_scene_0_faction_@id_team            �  �  �  �  �  �  �     player          _ENV �  �      ` @   �C@  C � f  & �    ��                �  �  �  �  �  �     z            �  3    !�    @ $�� K@� J���J���J�@���A J���� B �@B �� J�����B k@� ��B � CACA� ��C ���AD  A� ���� hB�l  ��D ΃D ��C�^��g�a��  �CB  C� b  @ �
@E�  �
@E��� ��  �B��CF � ���� 	@�	 ���  �  bB  � �GE� ��� !��
� ��� GE� ��
� ��� G�� ME�
��
\ 	`@�  �CE  C� ��  ��  	A� ��b  ��ǆ� �� ��G  � @ 
��	`��  ��G  �� _��  �H  � �F ��Dǆ	��	��G� �DJ ��GG GG� 
G�G� ! �@��G @� � 
� $G �� �� G�D��  ���� �DJ ���� ! �  �& � GG G�� MG�
G��� ! � ��G @� � 
� $G �� G� �D��  �E�ƅG  � @ 
� �E ��  *D���& �    	getNodeslist1        list2blockId
blockAddY$1184_localTopblockSizeColumn$1143_screenLeft$1184_screenLeft
blockNode$session_gameplay_gameplayplayer_sizescene_0_faction       $session_visual_currentFactionid	@id_team       forEachPlayerFaction$991_visible$1245_visible@       ��������pairs        startTeamBlockplayersListPositionfinishTeamBlock         �  �        �F@� �@ �@ �� � � ��@� ���  ���@ � A�@ ��@�& �    id	@id_team tableinsert            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     facId       team         _ENV
sFactionsteamsplId�   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                        	  
  
  
                                                                                                                 !  #  #  #  $  $  $  $  %  %  %  %  &  &  &  '  '  '  '  '  (  )  )  *    /  /  /  /  /        3  !   nodes   �   teamsInitData   �   	gameplay   �   players   �   
sFactions   �   namesPerColumn   �   currentFaction   �   currentTeam   �   teams   �   (for index)   !   (for limit)   !   (for step)   !   plId       func      
oneColumn%   �   (for index)-   �   (for limit)-   �   (for step)-   �   	teamSize.   �   (for generator)1   �   (for state)1   �   (for control)1   �   teamId2   �   list2   �   	bestList6   �   blockStartPos7   �   teamedJ   �   
blockSizeK   �   (for index)N   �   (for limit)N   �   (for step)N   �   jO   �   plc   �      _ENV 5  M   F   F@ d�� �A@ ��@
����A �A@ ��������
����AA ��AB ƁB ��a��   ��A  �� �A ��B �A �������AA �BFC GB��� ���C ���Dd� B���"  � ��AA ʁĈ@ ��AA ��Ĉ�AA EFC GB��BE d� B���AA �E�E���   ���AA BA �EF���@ ��AA BA �BF���& �    	getNodesblockId       idteamBlocks
blockNode@idvisibleassertplayersListNames
localLeftmathfloor       blockSizeColumn       widget_color_value�� P    �  P    	localTop
blockAddYsizeX       	                F   6  6  7  7  7  8  8  8  8  9  9  :  :  <  <  <  <  <  <  <  <  =  =  =  >  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  @  @  A  A  A  C  C  E  E  E  E  E  E  E  E  F  F  F  F  G  G  H  H  H  H  H  I  I  J  J  J  J  J  M     teamsInitData    F   	startPos    F   	bestList    F   connectColumns    F   myTeam    F   nodes   F   n   F      _ENV O  X   !   � @ @�  �& � ƀ@ 䀀 A M�� NA�A ����G�A�BM���AB ��B��B �� M���@ ��AN���C `@��  ��A  �� �A �@ �A�
@@�& �    
blockNode 	getNodesidplayersListNames       @id	localTopsizeYmathfloor
blockAddYassert                 !   P  P  P  P  Q  Q  R  R  R  R  R  S  T  T  T  T  T  T  T  T  T  T  T  U  U  U  U  U  U  V  V  W  X     teamsInitData    !   	startPos    !   
blockSize    !   nodes   !   n   !   sy   !      _ENV Z  s   
8   F @ d�� �   J���"    ��   � ���  �  A � ���A _��@�@���B _@B@�ǁB�  ����B_ �����B_@� ���B_��@���C��D �A��@ @��A��@�@���@ _@B@��@ ƀ@ � �A �� ���@ �A����D����@B�� E �@� & �    	getNodes$60_visiblehiddenInterfaces        d              interfaceIdid$interface_@id activenamescene
cinematiccameraMove tableinsert$interface_@id_active	onResize         8   [  [  \  \  ]  ]  ^  ^  _  _  _  _  `  `  `  a  b  c  c  c  c  c  c  c  c  c  c  c  c  c  c  d  e  e  e  e  e  _  h  j  j  j  k  k  k  k  k  l  l  l  m  k  p  r  r  s     hide    8   nodes   8   (for index)   &   (for limit)   &   (for step)   &   i   %   itf   %   (for index).   4   (for limit).   4   (for step).   4   i/   3      _ENV u  �   &   �   b     ��@  ��  �@ A � � h�NA@��G�A ��� �����B�  � � �A� � �� �� �F�B ��G���@ ��� � �A � ݀gA��  & �    /+size       id@idmin        type 
unitNames x         &   v  w  w  w  x  y  z  z  z  z  {  {  |  }  ~  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  z  �  �     requirements    &   all    &   
delimiter   &   s   &   sz   &   (for index)	   $   (for limit)	   $   (for step)	   $   i
   #   requirementUnit   #   num   #   	unitType   #      _ENV �  �      �   b     ��@  ��  �@ A � � h��NA@��G�A   � �����   A� �@���B �����g���  & � 	   /+size       id@id_id researchNames            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  
   requirements       all       
delimiter      s      sz      (for index)	      (for limit)	      (for step)	      i
      requirementResearch         _ENV �  �   (   F @ d�� �@@ `� �  ��@  � � ��@ `� �  ��@  � � �@  @ ��   @�J@A��   ��J@A�B GAB ��B $��J ��  �J�B��   ��J@A��C G�C �D $��J ��� �J�B�  �J�B�& �    	getNodes
unit_size        research_size$18_visible$467_visible$32_widget_textgetListOfRequiredUnitsunit	unitsAll $543_visible$453_widget_setTextgetListOfRequiredResearches	researchresearchesAll         (   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     requirements    (   nodes   (   hasRequiredUnit   (   hasRequiredResearch   (      _ENV �  �   	   � �A  AA  ��  ��   �@�
� ���@ �  & �    searchUnit         ʚ;    $lastResult            �  �  �  �  �  �  �  �  �  �  �     scene       faction       tags          _ENV �  �      � @ �    � AA  �  �   & �    searchUnit                    �  �  �  �  �  �  �     scene       faction          _ENV �  �   1   !  �� �!@@ @ �C � f  !  �� �!�@ @ �C � f   A @ �C � f  ! ��� �!�A @ �C � f  �A @ �C � f  !  �@ �a@B @�_�B ��_�B @�_ C ��_@C @�_�C � �_�C @ � D @ �C � f  C   f  & �           	                     ;       =       I       ]       r       t       v       y       }       ~       �       �       �               1   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     upgrade    1        �  �      F @ \ � ! �   �& � F@@ d�� � @ ̀@ �� �@  �& � �@A ǀ�� �ǀ� B � ��& � 	   playersListPosition	getNodes        idplayersListStatus@idwidget_imageplayerStatusOff            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     player       nodes      pos
      n         _ENV �  �   	%   F @ �@@ �  `� �  ��@  � � d@ F @ `  �  ��@  � � d@ F�@ d�� G � �  �@@ � �   �@ J������ ��     A�  ����A �@� ǁ��@ ��������& � 
   assert	timeline       getInterfacecontent_diagram_0resizecolorsgetPlayerColorid
@id_value         %   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     strips    %   diag   %   colors   %   (for index)   $   (for limit)   $   (for step)   $   strip   #   color    #      _ENV �  �   	   G @ �@@ ��@M�� ��@ � AM�� f  & �                        �?                      	   �  �  �  �  �  �  �  �  �     gather    	        �  �        FA@ � d�    �@ ��A  � @� ��A@ ���� ����& & �            getTimelineValueGather            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     workers       workersSum       gather       
gatherSum       sum      g         _ENV �  �           �@ �RA  A � �� �R� OA�A& & �                  �?           �  �  �  �  �  �  �  �  �  �  �  �     army       armySum       killed       
killedSum       sum           �  �  
    �@ �   � @ ������B@   @�� ��䂀��  �� ��B������ & �    getTimelineValueWargetTimelineValueEconomy              �?            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     army       armySum       killed       
killedSum       
territory       territorySum       workers       workersSum       gather       
gatherSum       sum         _ENV �  A   !  F @ �@@ �  `� �  ��@  � � d@ F�@ d�� G � �@A �   �!���A ��A �@ ��  �@@ � ��  � ��A@ �A�� A � � �A � � +C��A�BB F�B $��A�  � ��  h��F�B G��d� �DC �D	��@	Ǆ��@�
��	���Ǆ��C�
��	�������C�
��	������D�
��	����D�E��@
GEDG��
G��
E
���D�E��C
GEDG��
G��
E
���D�E��C
GEDG��
G��
E
���g��)�  �B��� ��� A �BB ƂB ��	�� �  \ ��  (��B C
G�$� FEC G�
M��
�  ǅ@�E��CFG�CGF��D�F�FD�F���G�������H����̓�'D�@�@ a��  �CD  C� $D 
��M����  *C��@�@��@E ƀA   �@ ��  A@  A�  ����A@ ǁ��A � �  K�� �  kC�+B�A�  � ��  h��FCC G�M����@ǃ��C���
����Cǃ��C���
����C����C���
����D���C���
���CD�CDǃ�D�D�@������CD�CDǃ�D�D�C������CD�CD���D�D�C���Ã�g��N�@@�G�� ��  � �  ����CC �C��@�  ���G��G�������	��Ǆ�	E��
G�@��C��CDGFD䃀�� �!��@ �J��  �JB��������@ ��� � B�& �    assert	timeline       getInterfacecontent_diagram_0_stripstimelineByTeamsprepareDiagtimelineTeamsCount        pairstimelineTeamsmathfloorplayersFactions                            id@id
@id_value'$session_gameplay_gameplay_player_sizeupdateDiagram           �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                                                                                            �  �  �                                                                                                      �            !  !  !  !  !  "  "  $  $  $  $  $  $  $  $  $  $  $  %  %  %  %  &  &  &  '  '  '  '  '  (  (  (  (  (  )  )  )  )  )  *  *  *  *  *  +  +  +  +  +  +  +  +  ,  ,  ,  ,  ,  ,  ,  ,  -  -  -  -  -  -  -  -  %  0  0  1  3  3  3  3  4  4  4  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  6  6  7  7  8  8  :  3  !  @  @  @  A  4   func      strips     (for index)   �   (for limit)   �   (for step)   �   tm   �   slice   �   sum#   �   (for generator)&   a   (for state)&   a   (for control)&   a   teamId'   _   	teamData'   _   (for index)*   _   (for limit)*   _   (for step)*   _   plNum+   ^   plId/   ^   facId2   ^   stripd   �   teamCountere   �   (for generator)h   �   (for state)h   �   (for control)h   �   teamIdi   �   	teamDatai   �   vj   �   (for index)m   �   (for limit)m   �   (for step)m   �   plNumn   �   plIdr   �   facIdu   �   playersCount�     (for index)�     (for limit)�     (for step)�     tm�     slice�     sum�     (for index)�   �   (for limit)�   �   (for step)�   �   plId�   �   facId�   �   strip�     (for index)�     (for limit)�     (for step)�     plId�     facId�     v�        _ENV C  �    l    @ _@@ � � @     �@   �& � �@ $�� 
@A�
@A�
@��
@A�
@��
@A�
@��
@A�
@��
@A�
@��D   � D @D� ��   @  
�D� �� D �D� ��@  @  
�D�@�� D  E� ���  @  
�ă��� D @E� ���  @  
�D���� D �E� ��  @  
�Ą 
�� D �E� ��@ @  
�D�@�� D  F� ��� @  
�ą��� D @F� ��� @  
�D���� D �F� ��  @  
�Ć �� D �F� ��@ @  
�D�@�� D  G� ��� @  
�ć�@G @�   ��@  � � �@ ��G � � �@ & �    	timeline        	getNodes$1249_disabled $1250_disabled$1251_disabled$1252_disabled$1248_disabled$1247_disabled$1244_disabled$1243_disabled$1241_disabled$1240_disabled$1242_disabledtimelineTypeallwararmykilled
territoryeconomyworkersgathergather_foodgather_materialsgather_metalassertupdateTimelineTemplate         T  V  
    �@ �   �@� � �  �@�� �  ����  & �    getTimelineValueTotal            U  U  U  U  U  U  U  U  U  U  U  U  U  V  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5          _ENV Y  [  
    �@ �   �@� � ���  & �    getTimelineValueWar            Z  Z  Z  Z  Z  Z  Z  [  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5          _ENV ^  `  
 
   &  & �                _  `  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5            c  e  
 
   f  & �                d  e  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5            h  j  
 
   �  & �                i  j  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5            m  o  
    �@ ��  @ �����  & �    getTimelineValueEconomy            n  n  n  n  n  n  n  o  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5          _ENV r  t  
 
   �  & �                s  t  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5            w  y  
    �@ � � �  & �    getTimelineValueGather            x  x  x  x  y  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5          _ENV |  ~  
    �@� & �                      }  }  ~  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5            �  �  
    �@� & �                      �  �  �  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5            �  �  
    �@� & �                      �  �  �  
   v1       v2       v3       v4       v5       s1       s2       s3       s4       s5           l   D  D  D  D  D  D  D  D  E  E  F  G  H  I  J  K  L  M  N  O  P  R  S  S  S  V  V  W  W  X  X  X  [  [  \  \  ]  ]  ]  `  `  a  a  b  b  b  e  e  f  f  g  g  g  j  j  k  k  l  l  l  o  o  p  p  q  q  q  t  t  u  u  v  v  v  y  y  z  z  {  {  {  ~  ~      �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     nodes
   l   func   l      _ENV �  �    "   @@��@ F A �@A d� @��F�@ ��   �& � F�A d�� ��@ �  � BƀB �B� J���ƀB AC�B� J� �ƀB �C�B� J� �ƀB   � J� �& �    /$session_gameplay_gameplay_scripts_scripts_run       '$session_gameplay_gameplay_dataStorage	timeline	fromJsonpointsTimeline 	getNodes       $1265_widget_text
toTimeStr       $1266_widget_text       $1267_widget_text       $1268_widget_text         "   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     storage   "   nodes   "   	gameTime   "      _ENV �  �      F @ d�� @@ � �J�@�J@A�J�@�����A �     �� B J� �J�@�J@A��@B �@� ��B �@� & �    	getNodesmap$1139_visible $1150_visible$1161_visible	teamModeisModeReplayprepareTimelineupdateTimeline            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     tab       nodes         _ENV �  �    S    @ F@@ ��@ ��� ��� A GAA��A ���� �AB ��ǁ��� A �B��B h� �G�C ����� ����_ � �DD"  ���� G��D�+D  ������@C�� ���@���� G��D�+D  �gB�F�D NB`@�  �CB  C� ��E ��`@F  ��B  �� b  ��ǂF�B   ��  AC �B 
����@��  ��ǂG�B   �� � AC �B 
������& �     $session_visual$session_gameplay_gameplay	getNodesscene_0factionsizeid#$session_gameplay_controlledPlayerplayer_@id_controlledFactionscurrentFactionrelation_@idtime               faction_@idlastDamageTimelastDamageFrom@idlastDamageTimeMeattackedPositionMelastDamagePosition_xlastDamagePosition_y
@id_valuelastDamageTimeAllyattackedPositionAllyX      $949_visiblesound_playSound�       �Q���?$1093_visible               S   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     	vSession   S   	gameplay   S   nodes   S   scene   S   	factions   S   factionsSize   S   facs
   S   myRelations   S   time   S   (for index)   0   (for limit)   0   (for step)   0   i   /   fact   /   lastDamageTime   /   lastDamageFrom   /   newVisibleAttackMe6   S   newVisibleAttackAlly<   S      _ENV �  L   *�   @ �A@ G�@@�G�@ �A �AA @ ���ǁA�AGB�BB ǂ��B ��B ��� �BC�ǂC �����CD�DA� ������� �CD�D��EGCE
CC����� �CF����F
������� �CG����F
�����G ����G �HDHG�������H��	��I��	E�GEIE
G��ME	�����	�E���
��G��F�ƆI �IGJ� 	��
  A� �F�ƆI GJG�J��	�  �A� �F�ƆI �JGK� 
��  A� �F��F� ��K�������H�G��H��G�L���  @��H�ƈI �MG�M�	 �	  
 A� �H�  ���K��HN ͈�G���N ͈����O �H ��   ������Ǉ����O����K�FP ���G��FHP ������FO �� d�  �@��� �����K�HN M��GG�N M���GO A $�   ���G���ǇQ �Q G�H@R� �G��� � �F�R ��NG����PFO � d�  �_@R@ �G�P�GS�BC�����B�����& � R   id	work_@idabilityability_@idgetUnitWorkIconTextunitTypeId
costOrder
costStartcostProcessupdateCostRequirementsrequirements	getNodes$221_visiblereserveTime        $219_widget_text	makeTime�       / $50	@@widgetvisible
localLeftscreenLeftsizeX
       	localTop
screenTopsizeY$session_visual_currentFaction$session_gameplay_gameplayscene_0_faction_@idfaction_@idtreasury_resources$0$1$2outCostDigit$123$52$124$53$126$97type$112_visible 
data_unitsupply_limitMaximizedsupply_sumunitType_@id	supplyOnsupply_cost$128$130$128_visible
unitNames       
unitTexts	localize<*workTraining>data_researchresearchesUnavailable_@idresearchNamesresearchTexts<*workResearch>       <*workTransformation>data_idcreateEnvs_@idworkEnvCreateDatatag 	envNames<*workEnvsCreate>       $72_visible$72_widget_text$213_widget_setText$94_widget_text         �   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                         
  
  
  
  
  
  
  
                                                                                             !  !  !  "  "  "  "  "  $  $  %  &  '  (  *  +  +  +  ,  ,  ,  -  -  -  -  -  .  .  /  0  1  1  1  2  2  2  3  3  3  3  3  5  5  6  7  7  7  8  8  9  :  :  <  <  <  =  ?  ?  ?  ?  C  C  D  E  H  I  J  K  L  (   	unitType    �   workId    �   x    �   y    �   work   �   ability   �   	iconText	   �   
costOrder
   �   
costStart   �   costProcess   �   nodes   �   reserveTime   �   widget    �   parent!   �   	gameplay1   �   	sFaction2   �   	gFaction3   �   
resources4   �   i07   �   i1:   �   i2=   �   c0?   �   c1A   �   c2C   �   r0D   �   r1E   �   r2F   �   abilityType_   �   abilityName`   �   name`   �   text`   �   objectd   �   limitg   �   workUnitTypei   �   supm   u   object�   �   unavailable�   �   object�   �   ec�   �   data�   �      _ENV N  Q        @ "@    �& �   A�  ��  � A AA �  +@   ��& �    $interface_chat_scripts_ready$interface_chat_scripts_run
       colorstoJsonplayersColors            O  O  O  O  P  P  P  P  P  P  P  P  Q         _ENV S  X      F@@ �   d� @ �F�@ b   @ �C � f  F�@ G �  � @ �C   f  F�@ G � f  & �    idgetFactionOfPlayer4$session_gameplay_gameplay_faction_@id_abilities_18playersChatBan             T  T  T  T  U  U  U  U  U  V  V  V  V  V  V  W  W  W  X     player          _ENV Z  ^   	   � @ �@@� � �� π ������ �& & �    mathabs
              d                	   [  [  [  [  \  \  ]  ]  ^     fromEra    	   toEra    	   d   	   p   	      _ENV `  p   	-   � @ ��� � �A  A�  ��  �@��A �A �� +A�K��� � B kA���B ������C`@� @ � @   �@  ��B ������@ ���B ������@����B �����D �A��D � �D� ���& �    	getNodes�      �      �      �      �      �      �      �      �      id       @id_widget_max        @id_widget_text_text@id_widget_currentmathfloorsendResourcesPercentd                -   a  a  b  b  b  b  b  c  c  c  c  c  d  d  d  d  d  f  f  f  g  h  h  h  h  h  j  j  j  k  l  l  l  m  n  n  n  o  o  o  o  o  o  o  p     res    -   value    -   nodes   -   	sendText   -   recieveText   -   sliders   -   mx   -      _ENV r  �    
A    @ $�� F@@ ��@ ��@� � �@��� ƀ@ ����� AA� �@ �@G�� RA�$� FB �AB d� G���B ��B �� ��B�AC  �@ 䁀��`���  ��A  �� 
��
� �`���  ��A  �� 
���
� �` ��  ��A  �� 
���
 ��C ���
�����E � GF �A���E � GBF �A���E � G�F �A�& �    	getNodesX$session_gameplay_gameplay_scene_0_faction_@sendResourcesFromFaction_treasury_resourcesmathfloor$0�      $1$2getAgeFactionsendResourcesFromFaction       sendResourcesToFactionsendResourcesPercentgetSendResourcesPercent$1594_visible        $1441_widget_max$1593_visible$1446_widget_max$1591_visible$1452_widget_max$1445_widget_textd       updateSendResourcesValue$1441_widget_current$1446_widget_current       $1452_widget_current         A   s  s  u  v  v  v  v  v  w  w  w  w  w  x  x  x  x  x  z  z  z  z  {  {  {  {  |  |  |  |  |  ~  ~  ~  ~  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     nodes   A   
resources   A   r0   A   r1   A   r2   A   myEra   A   
targetEra   A      _ENV �  �   &   F @ d�� ��@ ���� A �   �� ����@A ƀA A@ F�@ �� �A� ��@@ ��@ � @ �J@B�& � J�B�J@J@B�J@J@B�J ćJ�ĈJ�ĉJ D�J�ĊJ�D�J ċJ�D�J�Č��F �@� & �    	getNodessendResourcesFromFaction$session_visual_currentFactionsendResourcesToFactiongetFactionOfPlayergetRelation,$session_gameplay_gameplay_scene_0_relation       $1451_visible $1579_disabled$1274_visible$74_visible$1275_visible$1441_widget_current        $1449_widget_text_text0$1456_widget_text_text$1446_widget_current$1450_widget_text_text$1457_widget_text_text$1452_widget_current$1455_widget_text_text$1458_widget_text_textupdateSendResourcesWindow         &   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     player    &   nodes   &      _ENV �  �      F @ d�� J���J ��J ��  ���A ƀA � �@�J�J Å��C �   �� J�����C �   �@ & �    	getNodes$873_visible$1484_visible $871_visiblecomplaintPlayerwritePlayerToWidget$973_widget$874_widget_value        $868_widget_text_text$1410_widget_checkedisChatBannedshowResourceSendingWindow            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     player       nodes         _ENV �  �   
i   F@ d��  ��������ʁ ��A� G��BB����BG��BB���JAC�JAC�JAÇJAC�JAÈJAC�JAÉJAC�JAÊJAC�JAËJAC�JAÌJAC�JAÍ � @ �JAG�����  �JAG��A� �������  �JAǇ�A� ��� � �  �JAG��A� ���@�@�  �JAǍ�A� ����	��� @ �JAǈ���� @ �JAǉ�� � @ �JAG���@� @ �JAǊ���� @ �JAG����� @ �JAǋ�� � @ �JAG���@� @ �JAǌ���� @ �JAG�� ���   �JAG�& � ,   	getNodesid@id$1279visible
localLeftscreenLeftsizeX       	localTop
screenTopsizeY$654_visible $1415_visible$1409_visible$1412_visible$556_visible$1239_visible$141_visible$898_visible$1280_visible$1281_visible$1282_visible$1284_visible$1286_visible$1323_visible$1324_visibledanceformationTightformationSparse
gatesopengatesclosegatherLasttargetsmarttargetclosesttargetbothattackgroundstopmoveattackunloadabilityBombabilityTorpedo         i   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     parentWidgetId    i   name    i   show    i   x    i   y    i   nodes   i   parent   i   widget   i      _ENV �  �   =   � @ @��ƀ@ 䀀 ���AA �AG�A�B �A������O��$�  �AA �AGC�AC ǁ���O��$�  ���C GD�AD"    ���� A� ���   A �A �� �B A �D �� � �A�
��@���� A� ���   A �A �� �B A �D �A�
��& �    2$session_gameplay_gameplay_scene_0_landscape_sizeid	getNodes@idxgmathfloorx$$xsizeX       ygy$$ysizeY$session_visualcoordinateToVisual_@xgcoordinateToVisual_@ygscript_scripts_run       
direction        attack         =   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     attack    =   minimapWidget    =   sz   =   n   =   	vSession   =   x   =   y   =      _ENV   
        @ $�� A@  ��@ �     �G�@ � A �   @�� ��� � @� �@����& �    	getNodes        $60_visible$205_sizeY$interface_scene_scripts_ready$interface_scene_scripts_run       bottom                                            
     nodes      b         _ENV         F @ �@@ G�� �� @ �� � �  ��@ �@ �@@ �� � �  � A ����A ���G�Af & �    unitNations        culturesAbilities$session_visual_currentFactionid1$session_gameplay_gameplay_faction_@id_abilities@id                                                       unitTypeId       	nationId      ab	      currentFaction      
abilities         _ENV �  �        �F@� M�� ��@ �@  A@���@ � �  �@� ��� @��@A ��A��@ �@� �@�& �    id	@id_team       timelineTeams tableinsert            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     facId       team         _ENV
sFactionsplId-                             	   
                                                                                                                                          !   !   !   !   "   "   "   "   #   #   #   #   %   %   %   %   %   %   %   %   %   %   %   %   %   %   %   %   %   %   &   &   &   &   &   &   &   &   &   &   &   &   &   &   &   &   &   &   '   '   (   (   (   (   (   (   (   (   (   (   (   (   (   (   (   (   (   )   )   )   )   )   )   )   )   )   )   )   )   )   )   )   )   )   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   +   +   +   +   +   +   +   +   +   +   +   +   +   +   +   +   +   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   /   /   /   /   /   /   /   /   /   /   /   /   /   /   /   /   /   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   2   2   2   2   2   2   2   2   2   2   2   2   2   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3   3   3   3   3   3   4   4   4   4   4   4   4   4   4   4   4   4   4   4   4   4   4   5   5   5   5   5   5   5   5   5   5   5   5   5   5   5   5   5   6   6   6   6   6   6   6   6   6   6   6   6   6   6   6   6   6   7   7   7   7   7   7   7   7   7   7   7   7   7   7   7   7   7   8   8   8   8   8   8   8   8   8   8   8   8   8   8   8   8   8   9   9   9   9   9   9   9   9   9   9   9   9   9   9   9   9   :   :   ;   ;   ;   ;   ;   ;   ;   ;   ;   ;   ;   ;   <   <   <   <   <   <   <   <   <   <   <   <   =   =   =   =   =   =   =   =   =   =   =   =   >   >   >   >   >   >   >   >   >   >   >   >   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   @   @   @   @   @   @   @   @   @   @   @   @   A   A   A   A   A   A   A   A   B   B   B   B   B   B   B   B   C   C   C   C   C   C   C   C   C   D   D   D   D   D   D   D   D   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   E   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   F   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   G   H   H   H   H   H   H   H   H   H   H   H   H   H   H   H   H   H   H   H   H   I   I   I   I   I   I   I   I   I   I   I   K   K   K   K   K   K   K   K   K   L   L   L   L   L   L   L   L   L   M   M   M   M   M   M   M   M   M   O   O   O   O   O   O   O   O   O   O   O   O   O   O   O   O   Q   Q   R   R   R   R   R   R   R   R   R   R   S   S   S   S   S   S   S   S   S   S   T   T   T   T   T   T   T   T   T   T   U   U   U   U   U   U   U   U   U   U   V   V   V   V   V   V   V   V   V   V   V   W   W   W   W   W   W   W   W   W   W   X   X   X   X   X   X   X   X   X   X   Y   Y   Y   Y   Y   Y   Y   Y   Y   Y   Z   Z   Z   Z   Z   Z   Z   Z   Z   Z   [   [   [   [   [   [   [   [   [   [   [   \   \   \   \   \   \   \   \   \   \   ]   ]   ]   ]   ]   ]   ]   ]   ]   ]   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   _   _   _   _   _   _   _   _   _   _   `   `   `   `   `   `   `   `   `   `   `   a   a   a   a   a   a   a   a   a   a   b   b   b   b   b   b   b   b   b   b   c   c   c   c   c   c   c   c   c   c   d   d   d   d   d   d   d   d   d   d   e   e   e   e   e   e   e   e   e   e   e   f   f   f   f   f   f   f   f   f   f   g   g   g   g   g   g   g   g   g   g   h   h   h   h   h   h   h   h   h   h   i   i   i   i   i   i   i   i   i   i   j   j   j   j   j   j   j   j   j   j   j   k   k   k   k   k   k   k   k   k   k   l   l   l   l   l   l   l   l   l   l   m   m   m   m   m   m   m   m   m   m   n   n   n   n   n   n   n   n   n   n   o   o   o   o   o   o   o   o   o   o   o   p   p   p   p   p   p   p   p   p   p   q   q   q   q   q   q   q   q   q   q   r   r   r   r   r   r   r   r   r   r   s   s   s   s   s   s   s   s   s   s   t   t   t   t   t   t   t   t   t   t   t   u   u   u   u   u   u   u   u   u   u   v   v   v   v   v   v   v   v   v   v   w   w   w   w   w   w   w   w   w   w   x   x   x   x   x   x   x   x   x   y   y   y   y   y   y   y   y   y   z   z   z   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                                                     �     	  	  	  	  	  	                                  E    G  I  G  K  M  K  O  O  O  O  O  O  O  O  O  P  P  P  P  P  P  P  P  P  Q  Q  Q  Q  Q  Q  Q  Q  Q  R  R  R  R  R  R  R  R  R  S  S  S  S  S  S  S  S  S  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  T  U  U  U  U  U  U  U  U  U  V  V  V  V  V  V  V  V  V  W  W  W  W  W  W  W  W  W  W  W  X  X  Y  Z  [  [  [  [  [  [  \  \  \  \  \  \  ]  ]  ]  ]  ]  ^  ^  _  `  `  `  `  `  `  a  a  a  a  a  a  b  b  b  b  b  c  c  d  e  e  e  e  e  e  f  f  f  f  f  f  g  g  g  g  g  h  h  i  j  j  j  j  j  j  k  k  k  k  k  k  l  l  l  l  l  m  m  n  o  o  o  o  o  o  p  p  p  p  p  p  q  q  q  q  q  r  s  s  u  u  w  w  w  w  w  x  z  z  |  |  }  }  ~  ~      �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                                                                                                                                                                                                                                                                                                                                                                                                       	  	  	  	  	  	  	  	  	  
  
  
  
  
  
  
  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  "  "  "  "  "  "  "  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  '  '  '  '  '  '  '  '  '  (  (  (  (  (  (  (  )  )  )  )  )  )  )  )  )  )  *  *  *  *  *  *  *  *  *  *  *  *  +  +  +  +  +  +  +  +  +  +  +  +  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  /  /  /  /  /  /  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  2  2  2  2  2  2  2  2  3  3  3  3  3  3  3  3  4  4  4  4  4  4  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  6  6  6  6  6  6  6  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  9  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  >  >  >  >  >  >  >  >  >  >  >  >  >  >  >  >  >  >  >  >  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  @  @  @  @  @  @  @  @  @  @  @  @  @  @  @  @  @  @  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  B  B  B  B  B  B  B  C  C  C  C  C  C  C  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  F  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  I  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  L  M  M  M  M  M  M  M  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  P  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  S  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  V  W  W  W  W  W  W  X  X  X  X  X  X  X  X  X  X  X  X  X  X  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  [  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  ]  ]  ]  ]  ]  ]  ]  ]  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  a  a  a  a  a  a  a  a  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  g  h  j  j  l  l  l  l  l  l  m  m  m  m  m  n  n  n  n  n  o  o  o  o  o  o  p  p  p  p  p  p  q  q  q  q  q  q  r  r  r  r  r  s  s  s  s  s  t  t  t  t  t  t  u  u  v  v  v  v  v  v  w  w  w  w  w  w  x  x  x  x  x  x  y  y  y  y  y  z  z  z  z  z  z  {  {  {  {  {  {  |  |  |  |  |  |  }  }  }  }  }  }  ~  ~  ~  ~  ~  ~              �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  !  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  "  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  $  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  (  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  /  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  5  5  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  8  8  8  8  8  8  8  8  8  8  8  8  8  8  8  8  8  8  8  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  ;  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  <  >  >  ?  ?  ?  @  @  @  A  A  A  B  B  B  C  C  C  D  D  D  E  E  E  F  F  F  G  G  G  H  H  H  I  I  I  J  J  J  K  K  K  L  L  L  M  M  M  N  N  N  O  O  O  P  P  P  Q  Q  Q  R  R  R  S  S  S  T  T  T  U  U  U  V  V  V  W  W  W  X  X  X  Y  Y  Y  Z  Z  Z  [  [  [  \  \  \  ]  ]  ]  ^  ^  ^  _  _  _  `  `  `  a  a  a  b  b  b  c  c  c  d  d  d  e  e  e  f  f  f  g  g  g  h  h  h  i  i  i  j  j  j  k  k  k  l  l  l  m  m  m  n  n  n  o  o  o  p  p  p  p  q  q  q  r  r  r  s  s  s  t  t  t  u  u  u  v  v  v  w  w  w  x  x  x  y  y  y  z  z  z  {  {  {  |  |  |  }  }  }  ~  ~  ~        �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                        	  	  
  
                                                                                                                !  !  "  "  #  #  $  $  %  %  %  &  &  &  '  '  (  (  )  )  )  *  *  *  +  +  +  ,  ,  ,  -  -  -  .  .  .  /  /  0  0  1  1  2  2  3  3  3  4  4  4  5  5  5  6  6  6  7  7  7  8  8  8  9  9  9  :  :  :  ;  ;  ;  <  <  <  =  =  =  >  >  >  ?  ?  ?  @  @  @  A  A  A  B  B  B  C  C  C  D  D  E  E  F  F  G  G  H  H  I  I  J  L  L  L  L  L  L  L  L  L  O  W  O  Y  e  Y  g  o  g  q  x  q  z  �  z  �  �  �  �  �  �  �    �                                                                                                                        #    %  ,  %  .  3  .  5  :  5  <  C  <  E  L  E  N  U  N  W  ]  W  _  h  _  j  r  j  t  z  t  |  ~  |  �  �  �  �    �  	    	    2    4  <  4  >  V  >  X  ]  X  _  d  _  f  k  f  m  �  m  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �    �              !  R  !  T  m  T  o  �	  o  �	  *
  �	  ,
  q  ,
  s  u  s  w  �  w  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  3  �  5  M  5  O  X  O  Z  s  Z  u  �  u  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  A  �  C  �  C  �  �  �  �  �  �  �  �  �  �  L  �  N  Q  N  S  X  S  Z  ^  Z  `  p  `  r  �  r  �  �  �  �  �  �  �  �  �  �  �  �    
                                                        !  !  !  !  !  !  "  "  "  "  "  "  #  #  #  #  #  #  $  $  $  $  $  $  %  %  %  %  %  %  &  &  &  &  &  &  '  '  '  '  '  '  (  (  (  (  (  (  )  )  )  )  )  )  *  *  *  *  *  *  +  +  +  +  +  +  ,  ,  ,  ,  ,  ,  -  -  -  -  -  -  .  .  .  .  .  .  /  /  /  /  /  /  0  0  0  0  0  0  1  1  1  1  1  1  2  2  2  2  2  2  3  3  3  3  3  3  4  6  6  6  6  6  6  6  6  6  7  7  7  7  7  7  7  7  7  8  8  8  8  8  8  8  8  8  9  9  9  9  9  9  9  9  9  :  :  :  :  :  :  :  :  :  ;  ;  ;  ;  ;  ;  ;  ;  ;  <  <  <  <  <  <  <  <  <  =  =  =  =  =  =  =  =  =  >  >  >  >  >  >  >  >  >  ?  ?  ?  ?  ?  ?  ?  ?  ?  @  @  @  @  @  @  @  @  @  A  A  A  A  A  A  A  A  A  B  B  B  B  B  B  B  B  B  C  C  C  C  C  C  C  C  C  D  D  D  D  D  D  D  D  D  F  F  F  F  F  F  F  F  F  F  G  G  G  G  G  G  G  G  G  G  H  H  H  H  H  H  H  H  H  H  I  I  I  I  I  I  I  I  I  I  J  J  J  J  J  J  J  J  J  J  K  K  K  K  K  K  K  K  K  K  L  L  L  L  L  L  L  L  L  L  M  M  M  M  M  M  M  M  M  M  N  N  N  N  N  N  N  N  N  N  P  P  P  P  P  P  P  Q  Q  Q  Q  Q  Q  R  R  R  R  R  R  S  S  S  S  S  S  T  T  T  T  T  T  U  U  U  U  U  U  U  V  V  V  V  V  V  V  W  W  W  W  W  W  W  X  X  X  X  X  X  X  Y  Y  Y  Y  Y  Y  Y  Z  Z  Z  Z  Z  Z  Z  [  [  [  [  [  [  [  \  \  \  \  \  \  \  ]  ]  ]  ]  ]  ]  ]  ^  ^  ^  ^  ^  ^  ^  _  _  _  _  _  _  _  a  a  a  a  a  a  b  b  b  b  b  c  c  d  d  d  d  d  d  d  d  d  a  g  g  g  g  g  g  h  h  h  h  i  i  i  i  i  i  j  j  j  j  k  k  k  k  k  k  l  l  l  l  n  n  n  o  o  o  o  o  o  q  q  q  r  r  r  t  t  t  u  u  u  v  v  v  w  w  w  x  x  x  y  y  y  z  z  z  {  {  {  |  |  |  }  }  }  }  ~  ~  ~        �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                                                    
  
                                                                                                                                                                                                                                                        !  !  #  #  $  $  %  &  '  (  )  *  *  +  +  ,  ,  -  -  .  /  /  0  1  1  R   colorReplaces   -  	gameplayu  -  (for index)|  �  (for limit)|  �  (for step)|  �  i}  �  teamsColors�  -  factionColorsBase�  -  colors�  �  (for index)�  �  (for limit)�  �  (for step)�  �  i�  �  rs$  -  images$  -  (for index)#$  1$  (for limit)#$  1$  (for step)#$  1$  i$$  0$  (for generator)�$  �$  (for state)�$  �$  (for control)�$  �$  envId�$  �$  data�$  �$  ut�%  -  (for index)�%  �%  (for limit)�%  �%  (for step)�%  �%  i�%  �%  nodes(  -  (for index)�)  *  (for limit)�)  *  (for step)�)  *  i�)   *  node�)   *  nodesb*  -  gSesd*  -  storagef*  -  streamModeh*  -  pns�*  -  (for index)�*  �*  (for limit)�*  �*  (for step)�*  �*  i�*  �*  font�*  �*  controlledPlayer�*  -  	vSession�*  -  currentFaction�*  -  currentPlayer�*  -  scene�*  -  teams+  -  factionsCount+  -  (for generator)+  >+  (for state)+  >+  (for control)+  >+  pl+  <+  pos+  <+  n+  <+  n,+  <+  
sFactionsC+  -  playersE+  -  (for index)N+  X+  (for limit)N+  X+  (for step)N+  X+  plIdO+  W+  funcP+  V+  (for generator)]+  f+  (for state)]+  f+  (for control)]+  f+  _^+  d+  _^+  d+  eliminatedp+  -  chatBanned�+  -  n�+  -  n,  -  nA,  -  datav,  -  n�,  -  kickRightsPlayer�,  -  
abilities�,  -  workersDance�,  -  pikemanAgroDance-  -     _ENV