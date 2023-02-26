interfaceName = _ENV["$$interfaceName"]
_ENV["$interface_getIndex"] = interfaceName
interfaceId = _ENV["$lastResult"]
local colorReplaces = _ENV["$$colorReplaces"]
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
interfaceScale = _ENV["$interface_@interfaceId_scaleWidgets"]
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
buildButtons = {
  2,
  148,
  149,
  400,
  151,
  13,
  83,
  401,
  150,
  84,
  85,
  403,
  1328,
  1369,
  1370
}
buildButtonsLockers = {
  531,
  645,
  646,
  647,
  651,
  687,
  688,
  689,
  690,
  691,
  692,
  693,
  1374,
  1375,
  1376
}
buildPlansAbilities = {
  {
    6,
    2,
    1,
    -1,
    4,
    -1,
    -1,
    -1,
    -1,
    3,
    -1,
    -1,
    5,
    -1,
    -1
  },
  {
    68,
    8,
    9,
    23,
    10,
    -1,
    11,
    -1,
    13,
    22,
    -1,
    -1,
    12,
    -1,
    -1
  },
  {
    71,
    15,
    16,
    30,
    17,
    19,
    18,
    -1,
    20,
    -1,
    -1,
    -1,
    21,
    -1,
    -1
  },
  {
    74,
    26,
    28,
    48,
    44,
    -1,
    -1,
    45,
    46,
    47,
    -1,
    -1,
    49,
    50,
    -1
  },
  {
    77,
    27,
    29,
    37,
    31,
    -1,
    32,
    33,
    35,
    36,
    -1,
    -1,
    34,
    -1,
    -1
  },
  {
    80,
    40,
    42,
    51,
    52,
    54,
    53,
    67,
    57,
    55,
    -1,
    58,
    56,
    -1,
    -1
  },
  {
    83,
    41,
    43,
    59,
    60,
    61,
    62,
    -1,
    64,
    65,
    -1,
    66,
    63,
    -1,
    -1
  },
  {
    93,
    86,
    87,
    88,
    89,
    90,
    91,
    96,
    95,
    94,
    108,
    110,
    92,
    -1,
    112
  },
  {
    93,
    97,
    87,
    88,
    89,
    90,
    91,
    96,
    95,
    94,
    108,
    -1,
    92,
    100,
    111
  },
  {
    93,
    98,
    87,
    88,
    89,
    90,
    91,
    96,
    95,
    94,
    108,
    55,
    92,
    -1,
    111
  },
  {
    93,
    99,
    87,
    88,
    89,
    90,
    91,
    96,
    95,
    94,
    108,
    110,
    92,
    101,
    112
  },
  {
    93,
    105,
    87,
    88,
    89,
    107,
    91,
    96,
    95,
    106,
    108,
    104,
    92,
    103,
    102
  },
  {
    93,
    109,
    87,
    88,
    89,
    90,
    91,
    96,
    95,
    94,
    108,
    110,
    92,
    -1,
    112
  },
  {
    93,
    113,
    87,
    88,
    89,
    90,
    91,
    96,
    95,
    94,
    108,
    -1,
    92,
    -1,
    112
  },
  {
    93,
    114,
    87,
    117,
    89,
    116,
    -1,
    115,
    95,
    94,
    -1,
    110,
    92,
    -1,
    111
  },
  {
    93,
    118,
    87,
    88,
    89,
    90,
    91,
    96,
    95,
    94,
    108,
    -1,
    92,
    -1,
    111
  },
  {
    121,
    119,
    87,
    88,
    89,
    90,
    91,
    96,
    95,
    94,
    108,
    110,
    92,
    120,
    112
  },
  {
    93,
    122,
    87,
    88,
    89,
    90,
    91,
    96,
    95,
    94,
    108,
    -1,
    92,
    -1,
    111
  }
}
workButtonBlocks = {
  153,
  156,
  159,
  162,
  165,
  45,
  223,
  249,
  384
}
workButtons = {
  153,
  156,
  159,
  162,
  165,
  45,
  223,
  249,
  61
}
workReservePanels = {
  333,
  334,
  335,
  336,
  337,
  338,
  326,
  332,
  nil
}
workReserveNumbers = {
  339,
  340,
  341,
  342,
  343,
  344,
  345,
  346,
  nil
}
workUnavailableIcon = {
  251,
  266,
  267,
  268,
  269,
  270,
  271,
  272,
  nil
}
workReserveProgress = {
  953,
  954,
  955,
  956,
  957,
  958,
  959,
  960,
  nil
}
workQueueButtons = {
  169,
  240,
  173,
  172,
  171
}
workQueueNumbers = {
  26,
  28,
  29,
  66,
  67
}
storageBoxes = {
  411,
  238,
  258,
  259,
  409,
  410
}
specialDamage = {
  416,
  420,
  508,
  541,
  589
}
playersListNames = {
  1219,
  1220,
  1221,
  1222,
  1223,
  1224,
  1225,
  1226,
  1227,
  1228,
  1229,
  1230,
  1231,
  1232,
  1233,
  1234,
  1235,
  1236,
  1237,
  1238,
  1185,
  1186,
  1187,
  1188,
  1189,
  1190,
  1191,
  1192,
  1193,
  1194,
  1195,
  1196,
  1197,
  1198,
  1199,
  1200,
  1201,
  1202,
  1203,
  1204
}
playersListStatus = {
  1183,
  1182,
  1181,
  1180,
  1179,
  1178,
  1177,
  1176,
  1175,
  1174,
  1173,
  1172,
  1171,
  1170,
  1169,
  1168,
  1167,
  1166,
  1165,
  1164,
  1287,
  1288,
  1289,
  1290,
  1291,
  1292,
  1293,
  1294,
  1295,
  1296,
  1297,
  1298,
  1299,
  1300,
  1301,
  1302,
  1303,
  1304,
  1305,
  1306
}
playersComplaintButton = {
  1518,
  1519,
  1520,
  1521,
  1522,
  1523,
  1524,
  1525,
  1526,
  1527,
  1528,
  1529,
  1530,
  1531,
  1532,
  1533,
  1534,
  1535,
  1536,
  1537,
  1538,
  1539,
  1540,
  1541,
  1542,
  1543,
  1544,
  1545,
  1546,
  1547,
  1548,
  1549,
  1550,
  1551,
  1552,
  1553,
  1554,
  1555,
  1556,
  1557
}
teamBlocks = {
  1307,
  1308,
  1309,
  1310,
  1311,
  1312,
  1313,
  1314,
  1315,
  1316,
  1317,
  1318,
  16,
  27,
  30,
  31
}
destroyListWidgets = {
  1153,
  1154,
  1155,
  1156,
  1157,
  1158,
  681
}
transformationButton = {
  648,
  649,
  650,
  294,
  376
}
transformationNumber = {
  660,
  661,
  662,
  293,
  347
}
transformationHotKey = {
  613,
  628,
  629,
  295,
  379
}
culturesAbilities = {
  [9] = 5,
  [10] = 6,
  [11] = 7,
  [12] = 8,
  [13] = 9,
  [14] = 10,
  [15] = 11,
  [16] = 12,
  [17] = 13,
  [18] = 14
}
unitNations = {
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  0,
  0,
  0,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  0,
  2,
  2,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  2,
  2,
  2,
  3,
  3,
  3,
  3,
  3,
  3,
  0,
  3,
  3,
  3,
  3,
  2,
  4,
  5,
  0,
  2,
  4,
  5,
  4,
  5,
  4,
  5,
  0,
  0,
  3,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  2,
  5,
  2,
  5,
  5,
  2,
  2,
  2,
  6,
  7,
  6,
  7,
  6,
  7,
  6,
  7,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  2,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  0,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  2,
  2,
  7,
  6,
  6,
  6,
  6,
  6,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  8,
  8,
  8,
  8,
  8,
  2,
  2,
  2,
  2,
  3,
  3,
  3,
  3,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  2,
  3,
  1,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  2,
  3,
  4,
  4,
  4,
  4,
  4,
  5,
  5,
  5,
  5,
  5,
  6,
  6,
  6,
  6,
  6,
  7,
  7,
  7,
  7,
  7,
  5,
  8,
  6,
  8,
  4,
  5,
  6,
  7,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  6,
  8,
  nil,
  8,
  8,
  9,
  9,
  9,
  8,
  9,
  9,
  9,
  9,
  9,
  9,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  11,
  11,
  11,
  nil,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  8,
  8,
  8,
  12,
  12,
  12,
  12,
  8,
  13,
  13,
  13,
  8,
  13,
  13,
  13,
  13,
  13,
  13,
  0,
  13,
  13,
  8,
  8,
  1,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  12,
  9,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  nil,
  14,
  14,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  15,
  9,
  12,
  nil,
  16,
  16,
  16,
  16,
  16,
  16,
  8,
  8,
  16,
  16,
  16,
  16,
  8,
  3,
  17,
  17,
  17,
  17,
  17,
  17,
  17,
  17,
  17,
  17,
  17,
  nil,
  nil,
  18,
  18,
  18,
  18,
  18,
  18,
  18,
  18,
  18,
  18,
  18,
  nil,
  1,
  1,
  nil
}
function deepCopy(orig)
  local orig_type = type(orig)
  local copy
  if orig_type == "table" then
    copy = {}
    for orig_key, orig_value in next, orig, nil do
      copy[deepCopy(orig_key)] = deepCopy(orig_value)
    end
    setmetatable(copy, deepCopy(getmetatable(orig)))
  else
    copy = orig
  end
  return copy
end
function getPlayerFaction(player)
  id = player
  local facs = _ENV["$session_gameplay_gameplay_player_@id_controlledFactions"]
  for facId = 0, 63 do
    id = facId
    if facs["@id"] then
      return facId
    end
  end
  return 64
end
local gameplay = _ENV["$session_gameplay_gameplay"]
playersFactions = {}
for i = 1, gameplay.player_size do
  table.insert(playersFactions, getPlayerFaction(i - 1))
end
local teamsColors = {
  {4278255360, 4278190080},
  {4278255615, 4278190080},
  {4278190335, 4278190080}
}
local factionColorsBase = {
  {4286545791, 4280821800},
  {4292532954, 4280821800},
  {4278190335, 4278190080},
  {4282384319, 4280821800},
  {4294950656, 4280821800},
  {4278239231, 4280821800},
  {4286513343, 4280821800},
  {4294901887, 4280821800},
  {4290772736, 4278190080},
  {4278255615, 4278190080},
  {4286513407, 4280821800},
  {4286513152, 4284303427},
  {4286562175, 4280821800},
  {4294934272, 4282400833},
  {4278222847, 4280821800},
  {4290707647, 4278190080},
  {4278239039, 4280821800},
  {4286562239, 4280821800},
  {4286562303, 4280821800},
  {4278190207, 4278190138},
  {4284887859, 4284744192},
  {4278255423, 4278190080},
  {4286578687, 4278190080},
  {4286529535, 4280821800},
  {4294934399, 4280821800},
  {4282367871, 4280821800},
  {4278222783, 4280821800},
  {4294902015, 4280821800},
  {4294950847, 4280821800},
  {4286578559, 4280821800},
  {4290772991, 4280821800},
  {4290740223, 4280821800},
  {4290723647, 4280821800},
  {4286578655, 4280821800},
  {4290756607, 4280821800},
  {4294934527, 4280821800},
  {4290740031, 4282400833},
  {4282351423, 4280821793},
  {4286545919, 4280821800},
  {4294901951, 4282400833},
  {4294950783, 4280821800},
  {4278222592, 4278190080},
  {4286545855, 4280821800},
  {4290707583, 4278190080},
  {4294967231, 4280821800},
  {4278239167, 4280821800},
  {4282335167, 4281545523},
  {4282318911, 4286644353},
  {4290756352, 4280821800},
  {4278190271, 4280821793},
  {4294950911, 4280821800},
  {4286562048, 4280821800},
  {4282335103, 4280821800},
  {4290756479, 4280821800},
  {4278222719, 4282400833},
  {4278190143, 4278190207},
  {4290740159, 4280821800},
  {4290772927, 4280821800},
  {4286529407, 4281545523},
  {4294967040, 4280821800},
  {4290772863, 4280821800},
  {4286545664, 4282400833},
  {4286513279, 4283301966},
  {4289921024, 4282400833},
  {4290756543, 4280821800}
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
  local players = _ENV["$session_gameplay_gameplay_player"]
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
  local myFaction = _ENV["$session_visual_currentFaction"]
  local factions = _ENV["$session_visual_faction"]
  local factionsSize = factions.size
  local player = _ENV["$session_gameplay_controlledPlayer"]
  local relations = _ENV["$session_gameplay_gameplay_scene_0_relation"]
  id = player
  local facs = _ENV["$session_gameplay_gameplay_player_@id_controlledFactions"]
  for i = 0, factionsSize - 1 do
    local color
    if factionColorsByTeams and 1 < i then
      id = i
      if facs["@id"] then
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
    local minimapColor = factions["@id_minimapColor"]
    if i == 0 then
      minimapColor.a = 0
    else
      minimapColor.value = color[1]
      factions["@id_minimapBorderColor_value"] = color[2]
    end
  end
  updatePlayersColors()
  updateChatColors()
end
function getInterface()
  return _ENV["$interface_@interfaceId"]
end
function getNodes()
  return _ENV["$interface_@interfaceId_nodes"]
end
weaponBlock = {
  427,
  468,
  470,
  495,
  576
}
weaponDamageValue = {
  260,
  448,
  475,
  499,
  587
}
weaponDamageType = {
  428,
  418,
  503,
  539,
  579
}
weaponAdvancedInfo = {
  429,
  449,
  476,
  500,
  580
}
weaponRechargeTime = {
  431,
  450,
  480,
  504,
  584
}
weaponSpread = {
  {730, 435},
  {733, 451},
  {777, 481},
  {785, 505},
  {788, 585}
}
weaponDistance = {
  434,
  452,
  482,
  506,
  586
}
weaponIcon = {
  436,
  417,
  502,
  538,
  577
}
weaponUnitTagIcon = {
  286,
  286,
  286,
  286,
  286,
  286,
  286
}
weaponTypedDamage = {
  {
    {
      439,
      469,
      437,
      438
    },
    {
      440,
      441,
      442,
      443
    },
    {
      444,
      445,
      446,
      447
    }
  },
  {
    {
      461,
      478,
      493,
      487
    },
    {
      462,
      479,
      494,
      488
    },
    {
      463,
      483,
      496,
      489
    }
  },
  {
    {
      509,
      515,
      526,
      532
    },
    {
      510,
      516,
      527,
      533
    },
    {
      511,
      517,
      528,
      534
    }
  },
  {
    {
      552,
      564,
      558,
      570
    },
    {
      553,
      565,
      559,
      571
    },
    {
      554,
      569,
      560,
      572
    }
  },
  {
    {
      596,
      602,
      590,
      608
    },
    {
      597,
      603,
      591,
      609
    },
    {
      598,
      604,
      592,
      610
    }
  }
}
unitsWeaponIcon = {
  [1] = {286}
}
hideResearchOnFinalAge = {
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
  [0] = {
    {0},
    {2},
    [5] = {1}
  },
  [2] = {
    [1] = {2},
    [2] = {3},
    [9] = {0, 1}
  },
  [3] = {
    [9] = {0, 1}
  },
  [4] = {
    [9] = {0, 1}
  },
  [5] = {
    {0},
    {7, 1},
    {2},
    [5] = {3},
    [7] = {6},
    [9] = {4, 5}
  },
  [9] = {
    {0},
    {1},
    {2},
    [9] = {3}
  },
  [10] = {
    [5] = {3},
    [6] = {4},
    [7] = {0},
    [8] = {1, 2}
  },
  [200] = {
    {0},
    [5] = {1}
  },
  [1] = {
    [9] = {0, 1}
  },
  [6] = {
    [9] = {0, 1}
  },
  [7] = {
    [9] = {0, 1}
  },
  [8] = {
    [9] = {0, 1}
  },
  [11] = {
    {0},
    [5] = {4},
    [6] = {5, 7},
    [7] = {2},
    [8] = {
      1,
      3,
      6
    }
  },
  [209] = {
    {0},
    [5] = {1},
    [6] = {2}
  },
  [16] = {
    [9] = {0, 1}
  },
  [17] = {
    {2},
    {3},
    [9] = {0, 1}
  },
  [18] = {
    {0},
    {1},
    {2},
    {9, 3},
    {7},
    {8},
    [7] = {11},
    [8] = {10, 4},
    [9] = {5, 6}
  },
  [19] = {
    {0},
    {4},
    [5] = {3},
    [9] = {1, 2}
  },
  [20] = {
    [9] = {0, 1}
  },
  [21] = {
    {0},
    {1},
    [5] = {4},
    [9] = {2, 3}
  },
  [50] = {
    {2},
    {6},
    {3},
    {4},
    {5},
    [9] = {0, 1}
  },
  [54] = {
    {0},
    [5] = {3},
    [9] = {1, 2}
  },
  [12] = {
    [9] = {0, 1}
  },
  [22] = {
    [9] = {0, 1}
  },
  [23] = {
    [9] = {0}
  },
  [24] = {
    [9] = {0, 1}
  },
  [26] = {
    [9] = {0, 1}
  },
  [27] = {
    [9] = {0, 1}
  },
  [185] = {
    [9] = {0, 1}
  },
  [182] = {
    {2},
    [9] = {0, 1}
  },
  [183] = {
    [9] = {0, 1}
  },
  [184] = {
    {0},
    [9] = {1, 2}
  },
  [198] = {
    {0},
    [9] = {1, 2}
  },
  [28] = {
    {0},
    [5] = {4},
    [6] = {5, 7},
    [7] = {2},
    [8] = {
      1,
      3,
      6
    }
  },
  [210] = {
    {0},
    [5] = {1},
    [6] = {2}
  },
  [29] = {
    [9] = {0, 1}
  },
  [30] = {
    [1] = {2},
    [2] = {3},
    [9] = {0, 1}
  },
  [32] = {
    {0},
    {1},
    {7},
    nil,
    {4},
    {6},
    nil,
    {5},
    {2, 3}
  },
  [33] = {
    [1] = {4, 0},
    [2] = {5, 1},
    [7] = {6},
    [8] = {7},
    [9] = {2, 3}
  },
  [34] = {
    {0},
    [2] = {6, 1},
    [5] = {4},
    [6] = {5},
    [8] = {7},
    [9] = {2, 3}
  },
  [47] = {
    [9] = {0, 1}
  },
  [63] = {
    {0},
    [9] = {1, 2}
  },
  [35] = {
    {0},
    {1},
    [5] = {4},
    [9] = {2, 3}
  },
  [31] = {
    [9] = {0, 1}
  },
  [36] = {
    [9] = {0, 1}
  },
  [37] = {
    [9] = {0, 1}
  },
  [38] = {
    [9] = {0, 1}
  },
  [39] = {
    [9] = {0, 1}
  },
  [40] = {
    [9] = {0, 1}
  },
  [41] = {
    [9] = {0, 1}
  },
  [42] = {
    [9] = {0, 1}
  },
  [43] = {
    [9] = {0}
  },
  [48] = {
    [9] = {0, 1}
  },
  [49] = {
    [9] = {0, 1}
  },
  [186] = {
    {2},
    [9] = {0, 1}
  },
  [187] = {
    [9] = {0, 1}
  },
  [189] = {
    [9] = {0, 1}
  },
  [188] = {
    {0},
    [9] = {1, 2}
  },
  [199] = {
    {0},
    [9] = {1, 2}
  },
  [81] = {
    [9] = {0}
  },
  [51] = {
    {0},
    {8},
    {7},
    {6},
    {2, 4},
    {
      3,
      12,
      11,
      13
    },
    {9},
    {
      1,
      5,
      10
    }
  },
  [235] = {
    {0},
    [5] = {2, 4},
    [6] = {3}
  },
  [57] = {
    [9] = {
      0,
      1,
      2,
      3,
      4
    }
  },
  [55] = {
    [9] = {0}
  },
  [59] = {
    {1},
    {2},
    nil,
    {3},
    [9] = {0}
  },
  [99] = {
    [1] = {1},
    [9] = {0}
  },
  [95] = {
    {0},
    [9] = {1}
  },
  [91] = {
    {0},
    [4] = {4},
    [6] = {1},
    [7] = {2},
    [8] = {3},
    [9] = {5}
  },
  [92] = {
    {0},
    {1},
    {2},
    [5] = {4},
    [7] = {5},
    [9] = {3, 6}
  },
  [93] = {
    {0},
    {1},
    {6, 2},
    {3},
    {7},
    [7] = {4},
    [8] = {5},
    [9] = {8}
  },
  [94] = {
    {3, 2},
    {4, 5},
    {6, 7},
    {0},
    {1},
    {11},
    [7] = {10},
    [8] = {9},
    [9] = {8, 12}
  },
  [96] = {
    {0},
    {1},
    [4] = {3},
    [8] = {2},
    [9] = {4}
  },
  [97] = {
    {0},
    {1},
    {3},
    [8] = {2},
    [9] = {4}
  },
  [98] = {
    {0},
    {4},
    [4] = {2},
    [8] = {1},
    [9] = {3, 5}
  },
  [109] = {
    {0},
    {2},
    {1},
    {3},
    [9] = {4}
  },
  [110] = {
    {0},
    {1},
    {2},
    {3},
    [9] = {4}
  },
  [111] = {
    {0},
    {5},
    {1},
    {2},
    {3},
    [9] = {4, 6}
  },
  [147] = {
    [9] = {0}
  },
  [148] = {
    [9] = {0}
  },
  [150] = {
    [9] = {0}
  },
  [151] = {
    [9] = {0}
  },
  [152] = {
    [9] = {0}
  },
  [107] = {
    [9] = {0}
  },
  [52] = {
    {0},
    nil,
    {6},
    {8},
    {2, 4},
    {
      3,
      12,
      11,
      13
    },
    {9},
    {
      1,
      5,
      10
    }
  },
  [236] = {
    {0},
    [5] = {2, 4},
    [6] = {3}
  },
  [58] = {
    {0},
    [9] = {
      1,
      2,
      3,
      4,
      5
    }
  },
  [56] = {
    [9] = {0}
  },
  [60] = {
    {1},
    {2},
    nil,
    {3},
    [9] = {0}
  },
  [67] = {
    [1] = {1},
    [9] = {0}
  },
  [69] = {
    {2, 1},
    {3, 4},
    {5, 6},
    {0},
    [6] = {10},
    [7] = {9},
    [8] = {8},
    [9] = {7, 11}
  },
  [70] = {
    {0},
    [9] = {1}
  },
  [64] = {
    {5, 0},
    {1},
    {2},
    {3},
    {4},
    {6},
    {7},
    [9] = {8}
  },
  [65] = {
    {0},
    {1},
    {2},
    {3},
    {4},
    {5},
    {6},
    [9] = {7, 8}
  },
  [66] = {
    {0},
    {1},
    {2},
    [7] = {4},
    [9] = {3, 5}
  },
  [68] = {
    {0},
    {1},
    {6, 2},
    {3},
    {7},
    [7] = {4},
    [8] = {5},
    [9] = {8}
  },
  [154] = {
    [9] = {0, 1}
  },
  [155] = {
    [9] = {0, 1}
  },
  [160] = {
    [9] = {0}
  },
  [78] = {
    [9] = {
      0,
      1,
      2
    }
  },
  [157] = {
    [9] = {0, 1}
  },
  [158] = {
    [9] = {
      0,
      1,
      2
    }
  },
  [159] = {
    [9] = {
      0,
      1,
      2
    }
  },
  [83] = {
    {0},
    nil,
    nil,
    {7},
    {2, 4},
    {
      3,
      12,
      11,
      13
    },
    {8},
    {
      1,
      5,
      10
    }
  },
  [237] = {
    {0},
    [5] = {2, 4},
    [6] = {3}
  },
  [85] = {
    [9] = {
      0,
      1,
      2
    }
  },
  [89] = {
    [9] = {0}
  },
  [87] = {
    [4] = {1},
    [9] = {0}
  },
  [117] = {
    [1] = {1},
    [2] = {2},
    [9] = {0}
  },
  [112] = {
    {0},
    [9] = {1}
  },
  [113] = {
    {0},
    {1},
    [5] = {4},
    [8] = {3},
    [9] = {2}
  },
  [114] = {
    {1},
    {0},
    [6] = {3},
    [9] = {2, 4}
  },
  [115] = {
    {0},
    {1},
    [5] = {6},
    [6] = {3},
    [7] = {4},
    [8] = {5},
    [9] = {2}
  },
  [116] = {
    {0},
    {1},
    {7, 2},
    {8},
    {4},
    {5},
    {6},
    {9},
    [9] = {3}
  },
  [122] = {
    [9] = {0}
  },
  [168] = {
    {0},
    [5] = {2},
    [9] = {1}
  },
  [165] = {
    [9] = {0}
  },
  [166] = {
    [9] = {0, 1}
  },
  [167] = {
    [9] = {0}
  },
  [121] = {
    {0},
    [9] = {1}
  },
  [123] = {
    [9] = {0}
  },
  [118] = {
    {0},
    {1},
    {2},
    [5] = {4},
    [9] = {3}
  },
  [249] = {
    [9] = {0, 1}
  },
  [84] = {
    {0},
    nil,
    {9},
    {7},
    {2, 4},
    {
      3,
      12,
      11,
      13
    },
    {6},
    {
      1,
      5,
      10
    }
  },
  [238] = {
    {0},
    [5] = {2, 4},
    [6] = {3}
  },
  [86] = {
    [9] = {
      0,
      1,
      2,
      3
    }
  },
  [90] = {
    [9] = {0, 1}
  },
  [88] = {
    [4] = {1},
    [9] = {0}
  },
  [143] = {
    [1] = {1},
    [9] = {0}
  },
  [139] = {
    {0},
    [9] = {1, 2}
  },
  [140] = {
    {0},
    {1},
    {2},
    [5] = {5},
    [6] = {6},
    [8] = {4},
    [9] = {3}
  },
  [141] = {
    {0},
    {7, 1},
    {2},
    {3},
    [5] = {9},
    [6] = {6},
    [7] = {5},
    [8] = {8},
    [9] = {4}
  },
  [142] = {
    {0},
    {1},
    {2},
    {3},
    [8] = {5},
    [9] = {4, 6}
  },
  [171] = {
    [9] = {0}
  },
  [174] = {
    [9] = {1, 0}
  },
  [175] = {
    [9] = {0, 1}
  },
  [134] = {
    [9] = {0, 1}
  },
  [135] = {
    [9] = {0, 1}
  },
  [173] = {
    [9] = {0}
  },
  [144] = {
    {0},
    {1},
    {2},
    {3},
    [9] = {4}
  },
  [169] = {
    [9] = {0, 1}
  },
  [190] = {
    {0},
    [5] = {
      1,
      3,
      4
    },
    [6] = {
      2,
      8,
      6,
      9
    },
    [8] = {7, 5}
  },
  [239] = {
    {0, 7},
    [5] = {
      1,
      3,
      4,
      6
    },
    [6] = {
      2,
      8,
      5,
      9,
      10
    }
  },
  [194] = {
    {0},
    {2},
    [5] = {1},
    [8] = {3}
  },
  [195] = {
    {
      0,
      9,
      12,
      14
    },
    {1, 10},
    {4, 7},
    {
      15,
      17,
      2
    },
    {
      11,
      13,
      16
    },
    {3},
    {5},
    {6, 8}
  },
  [196] = {
    {5},
    {
      0,
      34,
      39
    },
    {
      12,
      24,
      2,
      14,
      18,
      36
    },
    {
      11,
      21,
      1,
      25,
      8,
      27,
      31,
      33
    },
    {
      15,
      19,
      20,
      33,
      38
    },
    {
      6,
      23,
      30
    },
    {
      4,
      10,
      16,
      26,
      41,
      37
    },
    {
      7,
      3,
      9,
      13,
      17,
      22,
      29,
      28,
      32,
      35,
      40
    }
  },
  [234] = {
    {0},
    {1, 4},
    {2},
    {5},
    {3}
  },
  [247] = {
    {0, 9},
    {1},
    {2, 3},
    {
      4,
      11,
      5
    },
    {6},
    {10, 13},
    {12},
    {
      8,
      7,
      14
    }
  },
  [312] = {
    {
      2,
      0,
      4,
      5
    },
    {3, 1},
    nil,
    nil,
    {6}
  },
  [297] = {
    {0, 14},
    {1, 6},
    {2},
    {3},
    {
      9,
      10,
      12
    },
    {13},
    {
      5,
      8,
      11
    },
    {4, 7}
  },
  [317] = {
    [9] = {0}
  },
  [318] = {
    [9] = {0}
  },
  [254] = {
    {0},
    [5] = {
      1,
      3,
      4
    },
    [6] = {
      2,
      8,
      6,
      9
    },
    [8] = {7, 5}
  },
  [264] = {
    {0},
    [5] = {
      1,
      3,
      4,
      8
    },
    [6] = {
      2,
      9,
      6,
      10
    },
    [8] = {7, 5}
  },
  [271] = {
    {0},
    [5] = {
      1,
      3,
      4
    },
    [6] = {
      2,
      8,
      6,
      9
    },
    [8] = {7, 5}
  },
  [253] = {
    [9] = {0}
  },
  [282] = {
    {0},
    [5] = {
      1,
      3,
      4
    },
    [6] = {
      2,
      8,
      6,
      9
    },
    [8] = {7, 5}
  },
  [302] = {
    {0},
    [5] = {
      1,
      3,
      4
    },
    [6] = {
      2,
      8,
      6,
      9,
      10
    },
    [8] = {7, 5}
  },
  [323] = {
    {0},
    [5] = {
      1,
      3,
      4
    },
    [6] = {
      2,
      8,
      6,
      9
    },
    [8] = {7, 5}
  },
  [326] = {
    [9] = {0}
  },
  [331] = {
    {0},
    {2},
    [9] = {1}
  },
  [337] = {
    {0},
    [5] = {
      1,
      3,
      4,
      8
    },
    [6] = {
      2,
      9,
      6,
      10
    },
    [8] = {7, 5}
  },
  [340] = {
    {7},
    {2, 8},
    {0, 9},
    {1},
    {6},
    {3, 10},
    {4, 11},
    {5}
  },
  [354] = {
    nil,
    {0}
  },
  [358] = {
    {0},
    [5] = {
      1,
      3,
      4
    },
    [6] = {
      2,
      8,
      6,
      9
    },
    [8] = {7, 5}
  },
  [361] = {
    nil,
    {0}
  },
  [372] = {
    {0},
    [5] = {
      1,
      3,
      4
    },
    [6] = {
      2,
      8,
      6,
      9
    },
    [8] = {7, 5}
  },
  [385] = {
    {0},
    [5] = {
      1,
      3,
      4
    },
    [6] = {
      2,
      8,
      6,
      9
    },
    [8] = {7, 5}
  }
}
unitsAttackGroundWeapon = {
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
  [395] = {1, 1}
}
nationNames = {
  localize("<*nationName0>"),
  localize("<*nationName1>"),
  localize("<*nationName2>"),
  localize("<*nationName3>"),
  localize("<*nationName4>"),
  localize("<*nationName5>"),
  localize("<*nationName6>"),
  localize("<*nationName7>"),
  localize("<*nationName8>"),
  localize("<*nationName9>"),
  localize("<*nationName10>"),
  localize("<*nationName11>"),
  localize("<*nationName12>"),
  {
    localize("<*nationName13/0>"),
    localize("<*nationName13/1>")
  },
  localize("<*nationName14>"),
  localize("<*nationName15>"),
  localize("<*nationName16>"),
  localize("<*nationName17>"),
  {
    localize("<*nationName18/0>"),
    localize("<*nationName18/1>")
  }
}
researchNames = {
  localize("<*upgrade0/0>"),
  localize("<*upgrade1/0>"),
  localize("<*upgrade2/0>"),
  localize("<*upgrade3/0>"),
  localize("<*upgrade4/0>"),
  localize("<*upgrade5/0>"),
  localize("<*upgrade6/0>"),
  localize("<*upgrade7/0>"),
  localize("<*upgrade8/0>"),
  localize("<*upgrade9/0>"),
  localize("<*upgrade10/0>"),
  localize("<*upgrade11/0>"),
  localize("<*upgrade12/0>"),
  localize("<*upgrade13/0>"),
  localize("<*upgrade14/0>"),
  localize("<*upgrade15/0>"),
  localize("<*upgrade16/0>"),
  localize("<*upgrade17/0>"),
  localize("<*upgrade18/0>"),
  localize("<*upgrade19/0>"),
  localize("<*upgrade20/0>"),
  localize("<*upgrade21/0>"),
  localize("<*upgrade22/0>"),
  localize("<*upgrade23/0>"),
  localize("<*upgrade24/0>"),
  localize("<*upgrade25/0>"),
  localize("<*upgrade26/0>"),
  localize("<*upgrade27/0>"),
  localize("<*upgrade28/0>"),
  localize("<*upgrade29/0>"),
  localize("<*upgrade30/0>"),
  localize("<*upgrade31/0>"),
  localize("<*upgrade32/0>"),
  localize("<*upgrade33/0>"),
  localize("<*upgrade34/0>"),
  localize("<*upgrade35/0>"),
  localize("<*upgrade36/0>"),
  localize("<*upgrade37/0>"),
  localize("<*upgrade38/0>"),
  localize("<*upgrade39/0>"),
  localize("<*upgrade40/0>"),
  localize("<*upgrade41/0>"),
  localize("<*upgrade42/0>"),
  localize("<*upgrade43/0>"),
  localize("<*upgrade44/0>"),
  localize("<*upgrade45/0>"),
  localize("<*upgrade46/0>"),
  localize("<*upgrade47/0>"),
  localize("<*upgrade48/0>"),
  localize("<*upgrade49/0>"),
  localize("<*upgrade50/0>"),
  localize("<*upgrade51/0>"),
  localize("<*upgrade52/0>"),
  localize("<*upgrade53/0>"),
  localize("<*upgrade54/0>"),
  localize("<*upgrade55/0>"),
  localize("<*upgrade56/0>"),
  localize("<*upgrade57/0>"),
  localize("<*upgrade58/0>"),
  localize("<*upgrade59/0>"),
  localize("<*upgrade60/0>"),
  localize("<*upgrade61/0>"),
  localize("<*upgrade62/0>"),
  localize("<*upgrade63/0>"),
  localize("<*upgrade64/0>"),
  localize("<*upgrade65/0>"),
  localize("<*upgrade66/0>"),
  localize("<*upgrade67/0>"),
  localize("<*upgrade68/0>"),
  localize("<*upgrade69/0>"),
  localize("<*upgrade70/0>"),
  localize("<*upgrade71/0>"),
  localize("<*upgrade72/0>"),
  localize("<*upgrade73/0>"),
  localize("<*upgrade74/0>"),
  localize("<*upgrade75/0>"),
  localize("<*upgrade76/0>"),
  localize("<*upgrade77/0>"),
  localize("<*upgrade78/0>"),
  localize("<*upgrade79/0>"),
  localize("<*upgrade80/0>"),
  localize("<*upgrade81/0>"),
  localize("<*upgrade82/0>"),
  localize("<*upgrade83/0>"),
  localize("<*upgrade84/0>"),
  localize("<*upgrade85/0>"),
  localize("<*upgrade86/0>"),
  localize("<*upgrade87/0>"),
  localize("<*upgrade88/0>"),
  localize("<*upgrade89/0>"),
  localize("<*upgrade90/0>"),
  localize("<*upgrade91/0>"),
  localize("<*upgrade92/0>"),
  localize("<*upgrade93/0>"),
  localize("<*upgrade94/0>"),
  localize("<*upgrade95/0>"),
  localize("<*upgrade96/0>"),
  localize("<*upgrade97/0>"),
  localize("<*upgrade98/0>"),
  localize("<*upgrade99/0>"),
  localize("<*upgrade100/0>"),
  localize("<*upgrade101/0>"),
  localize("<*upgrade102/0>"),
  localize("<*upgrade103/0>"),
  localize("<*upgrade104/0>"),
  localize("<*upgrade105/0>"),
  localize("<*upgrade106/0>"),
  localize("<*upgrade107/0>"),
  localize("<*upgrade108/0>"),
  localize("<*upgrade109/0>"),
  localize("<*upgrade110/0>"),
  localize("<*upgrade111/0>"),
  localize("<*upgrade112/0>"),
  localize("<*upgrade113/0>"),
  localize("<*upgrade114/0>"),
  localize("<*upgrade115/0>"),
  localize("<*upgrade116/0>"),
  localize("<*upgrade117/0>"),
  localize("<*upgrade118/0>"),
  localize("<*upgrade119/0>"),
  localize("<*upgrade120/0>"),
  localize("<*upgrade121/0>"),
  localize("<*upgrade122/0>"),
  localize("<*upgrade123/0>"),
  localize("<*upgrade124/0>"),
  localize("<*upgrade125/0>"),
  localize("<*upgrade126/0>"),
  localize("<*upgrade127/0>"),
  localize("<*upgrade128/0>"),
  localize("<*upgrade129/0>"),
  localize("<*upgrade130/0>"),
  localize("<*upgrade131/0>"),
  localize("<*upgrade132/0>"),
  localize("<*upgrade133/0>"),
  localize("<*upgrade134/0>"),
  localize("<*upgrade135/0>"),
  localize("<*upgrade136/0>"),
  localize("<*upgrade137/0>"),
  localize("<*upgrade138/0>"),
  localize("<*upgrade139/0>"),
  localize("<*upgrade140/0>"),
  localize("<*upgrade141/0>"),
  localize("<*upgrade142/0>"),
  localize("<*upgrade143/0>"),
  localize("<*upgrade144/0>"),
  localize("<*upgrade145/0>"),
  localize("<*upgrade146/0>"),
  localize("<*upgrade147/0>"),
  localize("<*upgrade148/0>"),
  localize("<*upgrade149/0>"),
  localize("<*upgrade150/0>"),
  localize("<*upgrade151/0>"),
  localize("<*upgrade152/0>"),
  localize("<*upgrade153/0>"),
  localize("<*upgrade154/0>"),
  localize("<*upgrade155/0>"),
  localize("<*upgrade156/0>"),
  localize("<*upgrade157/0>"),
  localize("<*upgrade158/0>"),
  localize("<*upgrade159/0>"),
  localize("<*upgrade160/0>"),
  localize("<*upgrade161/0>"),
  localize("<*upgrade162/0>"),
  localize("<*upgrade163/0>"),
  localize("<*upgrade164/0>"),
  localize("<*upgrade165/0>"),
  localize("<*upgrade166/0>"),
  localize("<*upgrade167/0>"),
  localize("<*upgrade168/0>"),
  localize("<*upgrade169/0>"),
  localize("<*upgrade170/0>"),
  localize("<*upgrade171/0>"),
  localize("<*upgrade172/0>"),
  localize("<*upgrade173/0>"),
  localize("<*upgrade174/0>"),
  localize("<*upgrade175/0>"),
  localize("<*upgrade176/0>"),
  localize("<*upgrade177/0>"),
  localize("<*upgrade178/0>"),
  localize("<*upgrade179/0>"),
  localize("<*upgrade180/0>"),
  localize("<*upgrade181/0>"),
  localize("<*upgrade182/0>"),
  localize("<*upgrade183/0>"),
  localize("<*upgrade184/0>"),
  localize("<*upgrade185/0>"),
  localize("<*upgrade186/0>"),
  localize("<*upgrade187/0>"),
  localize("<*upgrade188/0>"),
  localize("<*upgrade189/0>"),
  localize("<*upgrade190/0>"),
  localize("<*upgrade191/0>"),
  localize("<*upgrade192/0>"),
  localize("<*upgrade193/0>"),
  localize("<*upgrade194/0>"),
  localize("<*upgrade195/0>"),
  localize("<*upgrade196/0>"),
  localize("<*upgrade197/0>"),
  localize("<*upgrade198/0>"),
  localize("<*upgrade199/0>")
}
researchTexts = {
  localize("<*upgrade0/1>"),
  localize("<*upgrade1/1>"),
  localize("<*upgrade2/1>"),
  localize("<*upgrade3/1>"),
  localize("<*upgrade4/1>"),
  localize("<*upgrade5/1>"),
  localize("<*upgrade6/1>"),
  localize("<*upgrade7/1>"),
  localize("<*upgrade8/1>"),
  localize("<*upgrade9/1>"),
  localize("<*upgrade10/1>"),
  localize("<*upgrade11/1>"),
  localize("<*upgrade12/1>"),
  localize("<*upgrade13/1>"),
  localize("<*upgrade14/1>"),
  localize("<*upgrade15/1>"),
  localize("<*upgrade16/1>"),
  localize("<*upgrade17/1>"),
  localize("<*upgrade18/1>"),
  localize("<*upgrade19/1>"),
  localize("<*upgrade20/1>"),
  localize("<*upgrade21/1>"),
  localize("<*upgrade22/1>"),
  localize("<*upgrade23/1>"),
  localize("<*upgrade24/1>"),
  localize("<*upgrade25/1>"),
  localize("<*upgrade26/1>"),
  localize("<*upgrade27/1>"),
  localize("<*upgrade28/1>"),
  localize("<*upgrade29/1>"),
  localize("<*upgrade30/1>"),
  localize("<*upgrade31/1>"),
  localize("<*upgrade32/1>"),
  localize("<*upgrade33/1>"),
  localize("<*upgrade34/1>"),
  localize("<*upgrade35/1>"),
  localize("<*upgrade36/1>"),
  localize("<*upgrade37/1>"),
  localize("<*upgrade38/1>"),
  localize("<*upgrade39/1>"),
  localize("<*upgrade40/1>"),
  localize("<*upgrade41/1>"),
  localize("<*upgrade42/1>"),
  localize("<*upgrade43/1>"),
  localize("<*upgrade44/1>"),
  localize("<*upgrade45/1>"),
  localize("<*upgrade46/1>"),
  localize("<*upgrade47/1>"),
  localize("<*upgrade48/1>"),
  localize("<*upgrade49/1>"),
  localize("<*upgrade50/1>"),
  localize("<*upgrade51/1>"),
  localize("<*upgrade52/1>"),
  localize("<*upgrade53/1>"),
  localize("<*upgrade54/1>"),
  localize("<*upgrade55/1>"),
  localize("<*upgrade56/1>"),
  localize("<*upgrade57/1>"),
  localize("<*upgrade58/1>"),
  localize("<*upgrade59/1>"),
  localize("<*upgrade60/1>"),
  localize("<*upgrade61/1>"),
  localize("<*upgrade62/1>"),
  localize("<*upgrade63/1>"),
  localize("<*upgrade64/1>"),
  localize("<*upgrade65/1>"),
  localize("<*upgrade66/1>"),
  localize("<*upgrade67/1>"),
  localize("<*upgrade68/1>"),
  localize("<*upgrade69/1>"),
  localize("<*upgrade70/1>"),
  localize("<*upgrade71/1>"),
  localize("<*upgrade72/1>"),
  localize("<*upgrade73/1>"),
  localize("<*upgrade74/1>"),
  localize("<*upgrade75/1>"),
  localize("<*upgrade76/1>"),
  localize("<*upgrade77/1>"),
  localize("<*upgrade78/1>"),
  localize("<*upgrade79/1>"),
  localize("<*upgrade80/1>"),
  localize("<*upgrade81/1>"),
  localize("<*upgrade82/1>"),
  localize("<*upgrade83/1>"),
  localize("<*upgrade84/1>"),
  localize("<*upgrade85/1>"),
  localize("<*upgrade86/1>"),
  localize("<*upgrade87/1>"),
  localize("<*upgrade88/1>"),
  localize("<*upgrade89/1>"),
  localize("<*upgrade90/1>"),
  localize("<*upgrade91/1>"),
  localize("<*upgrade92/1>"),
  localize("<*upgrade93/1>"),
  localize("<*upgrade94/1>"),
  localize("<*upgrade95/1>"),
  localize("<*upgrade96/1>"),
  localize("<*upgrade97/1>"),
  localize("<*upgrade98/1>"),
  localize("<*upgrade99/1>"),
  localize("<*upgrade100/1>"),
  localize("<*upgrade101/1>"),
  localize("<*upgrade102/1>"),
  localize("<*upgrade103/1>"),
  localize("<*upgrade104/1>"),
  localize("<*upgrade105/1>"),
  localize("<*upgrade106/1>"),
  localize("<*upgrade107/1>"),
  localize("<*upgrade108/1>"),
  localize("<*upgrade109/1>"),
  localize("<*upgrade110/1>"),
  localize("<*upgrade111/1>"),
  localize("<*upgrade112/1>"),
  localize("<*upgrade113/1>"),
  localize("<*upgrade114/1>"),
  localize("<*upgrade115/1>"),
  localize("<*upgrade116/1>"),
  localize("<*upgrade117/1>"),
  localize("<*upgrade118/1>"),
  localize("<*upgrade119/1>"),
  localize("<*upgrade120/1>"),
  localize("<*upgrade121/1>"),
  localize("<*upgrade122/1>"),
  localize("<*upgrade123/1>"),
  localize("<*upgrade124/1>"),
  localize("<*upgrade125/1>"),
  localize("<*upgrade126/1>"),
  localize("<*upgrade127/1>"),
  localize("<*upgrade128/1>"),
  localize("<*upgrade129/1>"),
  localize("<*upgrade130/1>"),
  localize("<*upgrade131/1>"),
  localize("<*upgrade132/1>"),
  localize("<*upgrade133/1>"),
  localize("<*upgrade134/1>"),
  localize("<*upgrade135/1>"),
  localize("<*upgrade136/1>"),
  localize("<*upgrade137/1>"),
  localize("<*upgrade138/1>"),
  localize("<*upgrade139/1>"),
  localize("<*upgrade140/1>"),
  localize("<*upgrade141/1>"),
  localize("<*upgrade142/1>"),
  localize("<*upgrade143/1>"),
  localize("<*upgrade144/1>"),
  localize("<*upgrade145/1>"),
  localize("<*upgrade146/1>"),
  localize("<*upgrade147/1>"),
  localize("<*upgrade148/1>"),
  localize("<*upgrade149/1>"),
  localize("<*upgrade150/1>"),
  localize("<*upgrade151/1>"),
  localize("<*upgrade152/1>"),
  localize("<*upgrade153/1>"),
  localize("<*upgrade154/1>"),
  localize("<*upgrade155/1>"),
  localize("<*upgrade156/1>"),
  localize("<*upgrade157/1>"),
  localize("<*upgrade158/1>"),
  localize("<*upgrade159/1>"),
  localize("<*upgrade160/1>"),
  localize("<*upgrade161/1>"),
  localize("<*upgrade162/1>"),
  localize("<*upgrade163/1>"),
  localize("<*upgrade164/1>"),
  localize("<*upgrade165/1>"),
  localize("<*upgrade166/1>"),
  localize("<*upgrade167/1>"),
  localize("<*upgrade168/1>"),
  localize("<*upgrade169/1>"),
  localize("<*upgrade170/1>"),
  localize("<*upgrade171/1>"),
  localize("<*upgrade172/1>"),
  localize("<*upgrade173/1>"),
  localize("<*upgrade174/1>"),
  localize("<*upgrade175/1>"),
  localize("<*upgrade176/1>"),
  localize("<*upgrade177/1>"),
  localize("<*upgrade178/1>"),
  localize("<*upgrade179/1>"),
  localize("<*upgrade180/1>"),
  localize("<*upgrade181/1>"),
  localize("<*upgrade182/1>"),
  localize("<*upgrade183/1>"),
  localize("<*upgrade184/1>"),
  localize("<*upgrade185/1>"),
  localize("<*upgrade186/1>"),
  localize("<*upgrade187/1>"),
  localize("<*upgrade188/1>"),
  localize("<*upgrade189/1>"),
  localize("<*upgrade190/1>"),
  localize("<*upgrade191/1>"),
  localize("<*upgrade192/1>"),
  localize("<*upgrade193/1>"),
  localize("<*upgrade194/1>"),
  localize("<*upgrade195/1>"),
  localize("<*upgrade196/1>"),
  localize("<*upgrade197/1>"),
  localize("<*upgrade198/1>"),
  localize("<*upgrade199/1>")
}
unitNames = {
  localize("<*unitName0>"),
  localize("<*unitName1>"),
  localize("<*unitName2>"),
  localize("<*unitName3>"),
  localize("<*unitName4>"),
  localize("<*unitName5>"),
  localize("<*unitName6>"),
  localize("<*unitName7>"),
  localize("<*unitName8>"),
  localize("<*unitName9>"),
  localize("<*unitName10>"),
  localize("<*unitName11>"),
  localize("<*unitName12>"),
  localize("<*unitName13>"),
  localize("<*unitName14>"),
  localize("<*unitName15>"),
  localize("<*unitName16>"),
  localize("<*unitName17>"),
  localize("<*unitName18>"),
  localize("<*unitName19>"),
  localize("<*unitName20>"),
  localize("<*unitName21>"),
  localize("<*unitName22>"),
  localize("<*unitName23>"),
  localize("<*unitName24>"),
  localize("<*unitName25>"),
  localize("<*unitName26>"),
  localize("<*unitName27>"),
  localize("<*unitName28>"),
  localize("<*unitName29>"),
  localize("<*unitName30>"),
  localize("<*unitName31>"),
  localize("<*unitName32>"),
  localize("<*unitName33>"),
  localize("<*unitName34>"),
  localize("<*unitName35>"),
  localize("<*unitName36>"),
  localize("<*unitName37>"),
  localize("<*unitName38>"),
  localize("<*unitName39>"),
  localize("<*unitName40>"),
  localize("<*unitName41>"),
  localize("<*unitName42>"),
  localize("<*unitName43>"),
  localize("<*unitName44>"),
  localize("<*unitName45>"),
  localize("<*unitName46>"),
  localize("<*unitName47>"),
  localize("<*unitName48>"),
  localize("<*unitName49>"),
  localize("<*unitName50>"),
  localize("<*unitName51>"),
  localize("<*unitName52>"),
  localize("<*unitName53>"),
  localize("<*unitName54>"),
  localize("<*unitName55>"),
  localize("<*unitName56>"),
  localize("<*unitName57>"),
  localize("<*unitName58>"),
  localize("<*unitName59>"),
  localize("<*unitName60>"),
  localize("<*unitName61>"),
  localize("<*unitName62>"),
  localize("<*unitName63>"),
  localize("<*unitName64>"),
  localize("<*unitName65>"),
  localize("<*unitName66>"),
  localize("<*unitName67>"),
  localize("<*unitName68>"),
  localize("<*unitName69>"),
  localize("<*unitName70>"),
  localize("<*unitName71>"),
  localize("<*unitName72>"),
  localize("<*unitName73>"),
  localize("<*unitName74>"),
  localize("<*unitName75>"),
  localize("<*unitName76>"),
  localize("<*unitName77>"),
  localize("<*unitName78>"),
  localize("<*unitName79>"),
  localize("<*unitName80>"),
  localize("<*unitName81>"),
  localize("<*unitName82>"),
  localize("<*unitName83>"),
  localize("<*unitName84>"),
  localize("<*unitName85>"),
  localize("<*unitName86>"),
  localize("<*unitName87>"),
  localize("<*unitName88>"),
  localize("<*unitName89>"),
  localize("<*unitName90>"),
  localize("<*unitName91>"),
  localize("<*unitName92>"),
  localize("<*unitName93>"),
  localize("<*unitName94>"),
  localize("<*unitName95>"),
  localize("<*unitName96>"),
  localize("<*unitName97>"),
  localize("<*unitName98>"),
  localize("<*unitName99>"),
  localize("<*unitName100>"),
  localize("<*unitName101>"),
  localize("<*unitName102>"),
  localize("<*unitName103>"),
  localize("<*unitName104>"),
  localize("<*unitName105>"),
  localize("<*unitName106>"),
  localize("<*unitName107>"),
  localize("<*unitName108>"),
  localize("<*unitName109>"),
  localize("<*unitName110>"),
  localize("<*unitName111>"),
  localize("<*unitName112>"),
  localize("<*unitName113>"),
  localize("<*unitName114>"),
  localize("<*unitName115>"),
  localize("<*unitName116>"),
  localize("<*unitName117>"),
  localize("<*unitName118>"),
  localize("<*unitName119>"),
  localize("<*unitName120>"),
  localize("<*unitName121>"),
  localize("<*unitName122>"),
  localize("<*unitName123>"),
  localize("<*unitName124>"),
  localize("<*unitName125>"),
  localize("<*unitName126>"),
  localize("<*unitName127>"),
  localize("<*unitName128>"),
  localize("<*unitName129>"),
  localize("<*unitName130>"),
  localize("<*unitName131>"),
  localize("<*unitName132>"),
  localize("<*unitName133>"),
  localize("<*unitName134>"),
  localize("<*unitName135>"),
  localize("<*unitName136>"),
  localize("<*unitName137>"),
  localize("<*unitName138>"),
  localize("<*unitName139>"),
  localize("<*unitName140>"),
  localize("<*unitName141>"),
  localize("<*unitName142>"),
  localize("<*unitName143>"),
  localize("<*unitName144>"),
  localize("<*unitName145>"),
  localize("<*unitName146>"),
  localize("<*unitName147>"),
  localize("<*unitName148>"),
  localize("<*unitName149>"),
  localize("<*unitName150>"),
  localize("<*unitName151>"),
  localize("<*unitName152>"),
  localize("<*unitName153>"),
  localize("<*unitName154>"),
  localize("<*unitName155>"),
  localize("<*unitName156>"),
  localize("<*unitName157>"),
  localize("<*unitName158>"),
  localize("<*unitName159>"),
  localize("<*unitName160>"),
  localize("<*unitName161>"),
  localize("<*unitName162>"),
  localize("<*unitName163>"),
  localize("<*unitName164>"),
  localize("<*unitName165>"),
  localize("<*unitName166>"),
  localize("<*unitName167>"),
  localize("<*unitName168>"),
  localize("<*unitName169>"),
  localize("<*unitName170>"),
  localize("<*unitName171>"),
  localize("<*unitName172>"),
  localize("<*unitName173>"),
  localize("<*unitName174>"),
  localize("<*unitName175>"),
  localize("<*unitName176>"),
  localize("<*unitName177>"),
  localize("<*unitName178>"),
  localize("<*unitName179>"),
  localize("<*unitName180>"),
  localize("<*unitName181>"),
  localize("<*unitName182>"),
  localize("<*unitName183>"),
  localize("<*unitName184>"),
  localize("<*unitName185>"),
  localize("<*unitName186>"),
  localize("<*unitName187>"),
  localize("<*unitName188>"),
  localize("<*unitName189>"),
  localize("<*unitName190>"),
  localize("<*unitName191>"),
  localize("<*unitName192>"),
  localize("<*unitName193>"),
  localize("<*unitName194>"),
  localize("<*unitName195>"),
  localize("<*unitName196>"),
  localize("<*unitName197>"),
  localize("<*unitName198>"),
  localize("<*unitName199>"),
  localize("<*unitName200>"),
  localize("<*unitName201>"),
  localize("<*unitName202>"),
  localize("<*unitName203>"),
  localize("<*unitName204>"),
  localize("<*unitName205>"),
  localize("<*unitName206>"),
  localize("<*unitName207>"),
  localize("<*unitName208>"),
  localize("<*unitName209>"),
  localize("<*unitName210>"),
  localize("<*unitName211>"),
  localize("<*unitName212>"),
  localize("<*unitName213>"),
  localize("<*unitName214>"),
  localize("<*unitName215>"),
  localize("<*unitName216>"),
  localize("<*unitName217>"),
  localize("<*unitName218>"),
  localize("<*unitName219>"),
  localize("<*unitName220>"),
  localize("<*unitName221>"),
  localize("<*unitName222>"),
  localize("<*unitName223>"),
  localize("<*unitName224>"),
  localize("<*unitName225>"),
  localize("<*unitName226>"),
  localize("<*unitName227>"),
  localize("<*unitName228>"),
  localize("<*unitName229>"),
  localize("<*unitName230>"),
  localize("<*unitName231>"),
  localize("<*unitName232>"),
  localize("<*unitName233>"),
  localize("<*unitName234>"),
  localize("<*unitName235>"),
  localize("<*unitName236>"),
  localize("<*unitName237>"),
  localize("<*unitName238>"),
  localize("<*unitName239>"),
  localize("<*unitName240>"),
  localize("<*unitName241>"),
  localize("<*unitName242>"),
  localize("<*unitName243>"),
  localize("<*unitName244>"),
  localize("<*unitName245>"),
  localize("<*unitName246>"),
  localize("<*unitName247>"),
  localize("<*unitName248>"),
  localize("<*unitName249>"),
  localize("<*unitName250>"),
  localize("<*unitName251>"),
  localize("<*unitName252>"),
  localize("<*unitName253>"),
  localize("<*unitName254>"),
  localize("<*unitName255>"),
  localize("<*unitName256>"),
  localize("<*unitName257>"),
  localize("<*unitName258>"),
  localize("<*unitName259>"),
  localize("<*unitName260>"),
  localize("<*unitName261>"),
  localize("<*unitName262>"),
  localize("<*unitName263>"),
  localize("<*unitName264>"),
  localize("<*unitName265>"),
  localize("<*unitName266>"),
  localize("<*unitName267>"),
  localize("<*unitName268>"),
  localize("<*unitName269>"),
  localize("<*unitName270>"),
  localize("<*unitName271>"),
  localize("<*unitName272>"),
  localize("<*unitName273>"),
  localize("<*unitName274>"),
  localize("<*unitName275>"),
  localize("<*unitName276>"),
  localize("<*unitName277>"),
  localize("<*unitName278>"),
  localize("<*unitName279>"),
  localize("<*unitName280>"),
  localize("<*unitName281>"),
  localize("<*unitName282>"),
  localize("<*unitName283>"),
  localize("<*unitName284>"),
  localize("<*unitName285>"),
  localize("<*unitName286>"),
  localize("<*unitName287>"),
  localize("<*unitName288>"),
  localize("<*unitName289>"),
  localize("<*unitName290>"),
  localize("<*unitName291>"),
  localize("<*unitName292>"),
  localize("<*unitName293>"),
  localize("<*unitName294>"),
  localize("<*unitName295>"),
  localize("<*unitName296>"),
  localize("<*unitName297>"),
  localize("<*unitName298>"),
  localize("<*unitName299>"),
  localize("<*unitName300>"),
  localize("<*unitName301>"),
  localize("<*unitName302>"),
  localize("<*unitName303>"),
  localize("<*unitName304>"),
  localize("<*unitName305>"),
  localize("<*unitName306>"),
  localize("<*unitName307>"),
  localize("<*unitName308>"),
  localize("<*unitName309>"),
  localize("<*unitName310>"),
  localize("<*unitName311>"),
  localize("<*unitName312>"),
  localize("<*unitName313>"),
  localize("<*unitName314>"),
  localize("<*unitName315>"),
  localize("<*unitName316>"),
  localize("<*unitName317>"),
  localize("<*unitName318>"),
  localize("<*unitName319>"),
  localize("<*unitName320>"),
  localize("<*unitName321>"),
  localize("<*unitName322>"),
  localize("<*unitName323>"),
  localize("<*unitName324>"),
  localize("<*unitName325>"),
  localize("<*unitName326>"),
  localize("<*unitName327>"),
  localize("<*unitName328>"),
  localize("<*unitName329>"),
  localize("<*unitName330>"),
  localize("<*unitName331>"),
  localize("<*unitName332>"),
  localize("<*unitName333>"),
  localize("<*unitName334>"),
  localize("<*unitName335>"),
  localize("<*unitName336>"),
  localize("<*unitName337>"),
  localize("<*unitName338>"),
  localize("<*unitName339>"),
  localize("<*unitName340>"),
  localize("<*unitName341>"),
  localize("<*unitName342>"),
  localize("<*unitName343>"),
  localize("<*unitName344>"),
  localize("<*unitName345>"),
  localize("<*unitName346>"),
  localize("<*unitName347>"),
  localize("<*unitName348>"),
  localize("<*unitName349>"),
  localize("<*unitName350>"),
  localize("<*unitName351>"),
  localize("<*unitName352>"),
  localize("<*unitName353>"),
  localize("<*unitName354>"),
  localize("<*unitName355>"),
  localize("<*unitName356>"),
  localize("<*unitName357>"),
  localize("<*unitName358>"),
  localize("<*unitName359>"),
  localize("<*unitName360>"),
  localize("<*unitName361>"),
  localize("<*unitName362>"),
  localize("<*unitName363>"),
  localize("<*unitName364>"),
  localize("<*unitName365>"),
  localize("<*unitName366>"),
  localize("<*unitName367>"),
  localize("<*unitName368>"),
  localize("<*unitName369>"),
  localize("<*unitName370>"),
  localize("<*unitName371>"),
  localize("<*unitName372>"),
  localize("<*unitName373>"),
  localize("<*unitName374>"),
  localize("<*unitName375>"),
  localize("<*unitName376>"),
  localize("<*unitName377>"),
  localize("<*unitName378>"),
  localize("<*unitName379>"),
  localize("<*unitName380>"),
  localize("<*unitName381>"),
  localize("<*unitName382>"),
  localize("<*unitName383>"),
  localize("<*unitName384>"),
  localize("<*unitName385>"),
  localize("<*unitName386>"),
  localize("<*unitName387>"),
  localize("<*unitName388>"),
  localize("<*unitName389>"),
  localize("<*unitName390>"),
  localize("<*unitName391>"),
  localize("<*unitName392>"),
  localize("<*unitName393>"),
  localize("<*unitName394>"),
  localize("<*unitName395>"),
  localize("<*unitName396>"),
  localize("<*unitName397>"),
  localize("<*unitName398>"),
  localize("<*unitName399>")
}
unitTexts = {
  localize("<*unitText0>"),
  localize("<*unitText1>"),
  localize("<*unitText2>"),
  localize("<*unitText3>"),
  localize("<*unitText4>"),
  localize("<*unitText5>"),
  localize("<*unitText6>"),
  localize("<*unitText7>"),
  localize("<*unitText8>"),
  localize("<*unitText9>"),
  localize("<*unitText10>"),
  localize("<*unitText11>"),
  localize("<*unitText12>"),
  localize("<*unitText13>"),
  localize("<*unitText14>"),
  localize("<*unitText15>"),
  localize("<*unitText16>"),
  localize("<*unitText17>"),
  localize("<*unitText18>"),
  localize("<*unitText19>"),
  localize("<*unitText20>"),
  localize("<*unitText21>"),
  localize("<*unitText22>"),
  localize("<*unitText23>"),
  localize("<*unitText24>"),
  localize("<*unitText25>"),
  localize("<*unitText26>"),
  localize("<*unitText27>"),
  localize("<*unitText28>"),
  localize("<*unitText29>"),
  localize("<*unitText30>"),
  localize("<*unitText31>"),
  localize("<*unitText32>"),
  localize("<*unitText33>"),
  localize("<*unitText34>"),
  localize("<*unitText35>"),
  localize("<*unitText36>"),
  localize("<*unitText37>"),
  localize("<*unitText38>"),
  localize("<*unitText39>"),
  localize("<*unitText40>"),
  localize("<*unitText41>"),
  localize("<*unitText42>"),
  localize("<*unitText43>"),
  localize("<*unitText44>"),
  localize("<*unitText45>"),
  localize("<*unitText46>"),
  localize("<*unitText47>"),
  localize("<*unitText48>"),
  localize("<*unitText49>"),
  localize("<*unitText50>"),
  localize("<*unitText51>"),
  localize("<*unitText52>"),
  localize("<*unitText53>"),
  localize("<*unitText54>"),
  localize("<*unitText55>"),
  localize("<*unitText56>"),
  localize("<*unitText57>"),
  localize("<*unitText58>"),
  localize("<*unitText59>"),
  localize("<*unitText60>"),
  localize("<*unitText61>"),
  localize("<*unitText62>"),
  localize("<*unitText63>"),
  localize("<*unitText64>"),
  localize("<*unitText65>"),
  localize("<*unitText66>"),
  localize("<*unitText67>"),
  localize("<*unitText68>"),
  localize("<*unitText69>"),
  localize("<*unitText70>"),
  localize("<*unitText71>"),
  localize("<*unitText72>"),
  localize("<*unitText73>"),
  localize("<*unitText74>"),
  localize("<*unitText75>"),
  localize("<*unitText76>"),
  localize("<*unitText77>"),
  localize("<*unitText78>"),
  localize("<*unitText79>"),
  localize("<*unitText80>"),
  localize("<*unitText81>"),
  localize("<*unitText82>"),
  localize("<*unitText83>"),
  localize("<*unitText84>"),
  localize("<*unitText85>"),
  localize("<*unitText86>"),
  localize("<*unitText87>"),
  localize("<*unitText88>"),
  localize("<*unitText89>"),
  localize("<*unitText90>"),
  localize("<*unitText91>"),
  localize("<*unitText92>"),
  localize("<*unitText93>"),
  localize("<*unitText94>"),
  localize("<*unitText95>"),
  localize("<*unitText96>"),
  localize("<*unitText97>"),
  localize("<*unitText98>"),
  localize("<*unitText99>"),
  localize("<*unitText100>"),
  localize("<*unitText101>"),
  localize("<*unitText102>"),
  localize("<*unitText103>"),
  localize("<*unitText104>"),
  localize("<*unitText105>"),
  localize("<*unitText106>"),
  localize("<*unitText107>"),
  localize("<*unitText108>"),
  localize("<*unitText109>"),
  localize("<*unitText110>"),
  localize("<*unitText111>"),
  localize("<*unitText112>"),
  localize("<*unitText113>"),
  localize("<*unitText114>"),
  localize("<*unitText115>"),
  localize("<*unitText116>"),
  localize("<*unitText117>"),
  localize("<*unitText118>"),
  localize("<*unitText119>"),
  localize("<*unitText120>"),
  localize("<*unitText121>"),
  localize("<*unitText122>"),
  localize("<*unitText123>"),
  localize("<*unitText124>"),
  localize("<*unitText125>"),
  localize("<*unitText126>"),
  localize("<*unitText127>"),
  localize("<*unitText128>"),
  localize("<*unitText129>"),
  localize("<*unitText130>"),
  localize("<*unitText131>"),
  localize("<*unitText132>"),
  localize("<*unitText133>"),
  localize("<*unitText134>"),
  localize("<*unitText135>"),
  localize("<*unitText136>"),
  localize("<*unitText137>"),
  localize("<*unitText138>"),
  localize("<*unitText139>"),
  localize("<*unitText140>"),
  localize("<*unitText141>"),
  localize("<*unitText142>"),
  localize("<*unitText143>"),
  localize("<*unitText144>"),
  localize("<*unitText145>"),
  localize("<*unitText146>"),
  localize("<*unitText147>"),
  localize("<*unitText148>"),
  localize("<*unitText149>"),
  localize("<*unitText150>"),
  localize("<*unitText151>"),
  localize("<*unitText152>"),
  localize("<*unitText153>"),
  localize("<*unitText154>"),
  localize("<*unitText155>"),
  localize("<*unitText156>"),
  localize("<*unitText157>"),
  localize("<*unitText158>"),
  localize("<*unitText159>"),
  localize("<*unitText160>"),
  localize("<*unitText161>"),
  localize("<*unitText162>"),
  localize("<*unitText163>"),
  localize("<*unitText164>"),
  localize("<*unitText165>"),
  localize("<*unitText166>"),
  localize("<*unitText167>"),
  localize("<*unitText168>"),
  localize("<*unitText169>"),
  localize("<*unitText170>"),
  localize("<*unitText171>"),
  localize("<*unitText172>"),
  localize("<*unitText173>"),
  localize("<*unitText174>"),
  localize("<*unitText175>"),
  localize("<*unitText176>"),
  localize("<*unitText177>"),
  localize("<*unitText178>"),
  localize("<*unitText179>"),
  localize("<*unitText180>"),
  localize("<*unitText181>"),
  localize("<*unitText182>"),
  localize("<*unitText183>"),
  localize("<*unitText184>"),
  localize("<*unitText185>"),
  localize("<*unitText186>"),
  localize("<*unitText187>"),
  localize("<*unitText188>"),
  localize("<*unitText189>"),
  localize("<*unitText190>"),
  localize("<*unitText191>"),
  localize("<*unitText192>"),
  localize("<*unitText193>"),
  localize("<*unitText194>"),
  localize("<*unitText195>"),
  localize("<*unitText196>"),
  localize("<*unitText197>"),
  localize("<*unitText198>"),
  localize("<*unitText199>"),
  localize("<*unitText200>"),
  localize("<*unitText201>"),
  localize("<*unitText202>"),
  localize("<*unitText203>"),
  localize("<*unitText204>"),
  localize("<*unitText205>"),
  localize("<*unitText206>"),
  localize("<*unitText207>"),
  localize("<*unitText208>"),
  localize("<*unitText209>"),
  localize("<*unitText210>"),
  localize("<*unitText211>"),
  localize("<*unitText212>"),
  localize("<*unitText213>"),
  localize("<*unitText214>"),
  localize("<*unitText215>"),
  localize("<*unitText216>"),
  localize("<*unitText217>"),
  localize("<*unitText218>"),
  localize("<*unitText219>"),
  localize("<*unitText220>"),
  localize("<*unitText221>"),
  localize("<*unitText222>"),
  localize("<*unitText223>"),
  localize("<*unitText224>"),
  localize("<*unitText225>"),
  localize("<*unitText226>"),
  localize("<*unitText227>"),
  localize("<*unitText228>"),
  localize("<*unitText229>"),
  localize("<*unitText230>"),
  localize("<*unitText231>"),
  localize("<*unitText232>"),
  localize("<*unitText233>"),
  localize("<*unitText234>"),
  localize("<*unitText235>"),
  localize("<*unitText236>"),
  localize("<*unitText237>"),
  localize("<*unitText238>"),
  localize("<*unitText239>"),
  localize("<*unitText240>"),
  localize("<*unitText241>"),
  localize("<*unitText242>"),
  localize("<*unitText243>"),
  localize("<*unitText244>"),
  localize("<*unitText245>"),
  localize("<*unitText246>"),
  localize("<*unitText247>"),
  localize("<*unitText248>"),
  localize("<*unitText249>"),
  localize("<*unitText250>"),
  localize("<*unitText251>"),
  localize("<*unitText252>"),
  localize("<*unitText253>"),
  localize("<*unitText254>"),
  localize("<*unitText255>"),
  localize("<*unitText256>"),
  localize("<*unitText257>"),
  localize("<*unitText258>"),
  localize("<*unitText259>"),
  localize("<*unitText260>"),
  localize("<*unitText261>"),
  localize("<*unitText262>"),
  localize("<*unitText263>"),
  localize("<*unitText264>"),
  localize("<*unitText265>"),
  localize("<*unitText266>"),
  localize("<*unitText267>"),
  localize("<*unitText268>"),
  localize("<*unitText269>"),
  localize("<*unitText270>"),
  localize("<*unitText271>"),
  localize("<*unitText272>"),
  localize("<*unitText273>"),
  localize("<*unitText274>"),
  localize("<*unitText275>"),
  localize("<*unitText276>"),
  localize("<*unitText277>"),
  localize("<*unitText278>"),
  localize("<*unitText279>"),
  localize("<*unitText280>"),
  localize("<*unitText281>"),
  localize("<*unitText282>"),
  localize("<*unitText283>"),
  localize("<*unitText284>"),
  localize("<*unitText285>"),
  localize("<*unitText286>"),
  localize("<*unitText287>"),
  localize("<*unitText288>"),
  localize("<*unitText289>"),
  localize("<*unitText290>"),
  localize("<*unitText291>"),
  localize("<*unitText292>"),
  localize("<*unitText293>"),
  localize("<*unitText294>"),
  localize("<*unitText295>"),
  localize("<*unitText296>"),
  localize("<*unitText297>"),
  localize("<*unitText298>"),
  localize("<*unitText299>"),
  localize("<*unitText300>"),
  localize("<*unitText301>"),
  localize("<*unitText302>"),
  localize("<*unitText303>"),
  localize("<*unitText304>"),
  localize("<*unitText305>"),
  localize("<*unitText306>"),
  localize("<*unitText307>"),
  localize("<*unitText308>"),
  localize("<*unitText309>"),
  localize("<*unitText310>"),
  localize("<*unitText311>"),
  localize("<*unitText312>"),
  localize("<*unitText313>"),
  localize("<*unitText314>"),
  localize("<*unitText315>"),
  localize("<*unitText316>"),
  localize("<*unitText317>"),
  localize("<*unitText318>"),
  localize("<*unitText319>"),
  localize("<*unitText320>"),
  localize("<*unitText321>"),
  localize("<*unitText322>"),
  localize("<*unitText323>"),
  localize("<*unitText324>"),
  localize("<*unitText325>"),
  localize("<*unitText326>"),
  localize("<*unitText327>"),
  localize("<*unitText328>"),
  localize("<*unitText329>"),
  localize("<*unitText330>"),
  localize("<*unitText331>"),
  localize("<*unitText332>"),
  localize("<*unitText333>"),
  localize("<*unitText334>"),
  localize("<*unitText335>"),
  localize("<*unitText336>"),
  localize("<*unitText337>"),
  localize("<*unitText338>"),
  localize("<*unitText339>"),
  localize("<*unitText340>"),
  localize("<*unitText341>"),
  localize("<*unitText342>"),
  localize("<*unitText343>"),
  localize("<*unitText344>"),
  localize("<*unitText345>"),
  localize("<*unitText346>"),
  localize("<*unitText347>"),
  localize("<*unitText348>"),
  localize("<*unitText349>"),
  localize("<*unitText350>"),
  localize("<*unitText351>"),
  localize("<*unitText352>"),
  localize("<*unitText353>"),
  localize("<*unitText354>"),
  localize("<*unitText355>"),
  localize("<*unitText356>"),
  localize("<*unitText357>"),
  localize("<*unitText358>"),
  localize("<*unitText359>"),
  localize("<*unitText360>"),
  localize("<*unitText361>"),
  localize("<*unitText362>"),
  localize("<*unitText363>"),
  localize("<*unitText364>"),
  localize("<*unitText365>"),
  localize("<*unitText366>"),
  localize("<*unitText367>"),
  localize("<*unitText368>"),
  localize("<*unitText369>"),
  localize("<*unitText370>"),
  localize("<*unitText371>"),
  localize("<*unitText372>"),
  localize("<*unitText373>"),
  localize("<*unitText374>"),
  localize("<*unitText375>"),
  localize("<*unitText376>"),
  localize("<*unitText377>"),
  localize("<*unitText378>"),
  localize("<*unitText379>"),
  localize("<*unitText380>"),
  localize("<*unitText381>"),
  localize("<*unitText382>"),
  localize("<*unitText383>"),
  localize("<*unitText384>"),
  localize("<*unitText385>"),
  localize("<*unitText386>"),
  localize("<*unitText387>"),
  localize("<*unitText388>"),
  localize("<*unitText389>"),
  localize("<*unitText390>"),
  localize("<*unitText391>"),
  localize("<*unitText392>"),
  localize("<*unitText393>"),
  localize("<*unitText394>"),
  localize("<*unitText395>"),
  localize("<*unitText396>"),
  localize("<*unitText397>"),
  localize("<*unitText398>"),
  localize("<*unitText399>")
}
envNames = {
  [0] = localize("<*envName0>"),
  [1] = localize("<*envName1>"),
  [3] = localize("<*envNameTree>"),
  [4] = localize("<*envNameTree>"),
  [5] = localize("<*envNameTree>"),
  [6] = localize("<*envNameTree>"),
  [7] = localize("<*envNameTree>"),
  [8] = localize("<*envNameTree>"),
  [9] = localize("<*envNameTree>"),
  [10] = localize("<*envNameTree>"),
  [11] = localize("<*envNameTree>"),
  [12] = localize("<*envNameTree>"),
  [13] = localize("<*envNameTree>"),
  [14] = localize("<*envNameTree>"),
  [15] = localize("<*envNameTree>"),
  [16] = localize("<*envNameTree>"),
  [17] = localize("<*envNameTree>"),
  [18] = localize("<*envNameTree>"),
  [19] = localize("<*envNameTree>"),
  [20] = localize("<*envNameTree>"),
  [21] = localize("<*envNameTree>"),
  [22] = localize("<*envNameTree>"),
  [23] = localize("<*envNameTree>"),
  [24] = localize("<*envNameTree>"),
  [25] = localize("<*envNameTree>"),
  [26] = localize("<*envNameTree>"),
  [27] = localize("<*envNameTree>"),
  [28] = localize("<*envNameTree>"),
  [29] = localize("<*envNameTree>"),
  [30] = localize("<*envNameTree>"),
  [31] = localize("<*envNameTree>"),
  [32] = localize("<*envNameTree>"),
  [36] = localize("<*envName36>"),
  [37] = localize("<*envName37>"),
  [38] = localize("<*envName38>"),
  [39] = localize("<*envName39>"),
  [63] = localize("<*envNameTree>"),
  [64] = localize("<*envNameTree>"),
  [65] = localize("<*envNameTree>"),
  [66] = localize("<*envNameTree>"),
  [67] = localize("<*envNameTree>"),
  [68] = localize("<*envNameTree>"),
  [69] = localize("<*envNameMeat>"),
  [70] = localize("<*envNameMeat>"),
  [90] = localize("<*envName90>"),
  [103] = localize("<*envNameMeat>"),
  [274] = localize("<*envName274>"),
  [275] = localize("<*envName275>"),
  [276] = localize("<*envName276>"),
  [303] = localize("<*envNameTree>"),
  [323] = localize("<*envNameTree>"),
  [324] = localize("<*envNameTree>"),
  [325] = localize("<*envNameTree>"),
  [326] = localize("<*envNameTree>"),
  [327] = localize("<*envNameTree>"),
  [328] = localize("<*envNameTree>"),
  [329] = localize("<*envName1>"),
  [305] = localize("<*envName305>"),
  [87] = localize("<*envName87>"),
  [88] = localize("<*envName88>"),
  [89] = localize("<*envName89>")
}
workEnvCreateData = {
  ["nature.vegetation.grass.live.wheat"] = {
    90,
    localize("<*envWorkText90>")
  },
  ["nature.vegetation.grass.live.rice"] = {
    305,
    localize("<*envWorkText305>")
  }
}
unitTags = {
  localize("<*unitTag/0>"),
  localize("<*unitTag/1>"),
  localize("<*unitTag/2>"),
  localize("<*unitTag/3>"),
  localize("<*unitTag/4>"),
  localize("<*unitTag/5>"),
  localize("<*unitTag/6>"),
  localize("<*unitTag/7>"),
  localize("<*unitTag/8>"),
  localize("<*unitTag/9>"),
  localize("<*unitTag/10>"),
  localize("<*unitTag/11>"),
  localize("<*unitTag/12>"),
  localize("<*unitTag/13>"),
  localize("<*unitTag/14>"),
  localize("<*unitTag/15>"),
  localize("<*unitTag/16>"),
  localize("<*unitTag/17>"),
  localize("<*unitTag/18>"),
  localize("<*unitTag/19>"),
  localize("<*unitTag/20>"),
  localize("<*unitTag/21>"),
  localize("<*unitTag/22>"),
  localize("<*unitTag/23>")
}
ageNames = {
  localize("<*ageNames/0>"),
  localize("<*ageNames/1>"),
  localize("<*ageNames/2>"),
  localize("<*ageNames/3>"),
  localize("<*ageNames/4>"),
  localize("<*ageNames/5>"),
  localize("<*ageNames/6>"),
  localize("<*ageNames/7>")
}
buildPlanText = {
  localize("<*buildPlanTownhall>"),
  localize("<*buildPlanStorage>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanForge>"),
  localize("<*buildPlanBarrackAndRange>"),
  localize("<*buildPlanTurret>"),
  localize("<*buildPlanTemple>"),
  localize("<*buildPlanTownhall>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanStorage>"),
  localize("<*buildPlanBarrackAndRange>"),
  localize("<*buildPlanHorse>"),
  localize("<*buildPlanTurret>"),
  localize("<*buildPlanDock>"),
  localize("<*buildPlanTownhall>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanStorage>"),
  localize("<*buildPlanBarrack>"),
  localize("<*buildPlanHorse>"),
  localize("<*buildPlanRange>"),
  localize("<*buildPlanDock>"),
  localize("<*buildPlanTurretScout>"),
  localize("<*buildPlanForge>"),
  localize("<*buildPlanFarm>"),
  localize("<*buildPlanTownhall>"),
  localize("<*buildPlanTownhall>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanStorage>"),
  localize("<*buildPlanStorage>"),
  localize("<*buildPlanRanch>"),
  localize("<*buildPlanBarrackAndRange>"),
  localize("<*buildPlanHorse>"),
  localize("<*buildPlanWorkshop>"),
  localize("<*buildPlanTurret>"),
  localize("<*buildPlanDock>"),
  localize("<*buildPlanForge>"),
  localize("<*buildPlanFarm>"),
  localize("<*buildPlanTownhall>"),
  localize("<*buildPlanTownhall>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanStorage>"),
  localize("<*buildPlanStorage>"),
  localize("<*buildPlanBarrack>"),
  localize("<*buildPlanWorkshop>"),
  localize("<*buildPlanDock>"),
  localize("<*buildPlanForge>"),
  localize("<*buildPlanFarm>"),
  localize("<*buildPlanTurret>"),
  localize("<*buildPlanSiegeStatic>"),
  localize("<*buildPlanRanch>"),
  localize("<*buildPlanBarrack>"),
  localize("<*buildPlanHorse>"),
  localize("<*buildPlanRange>"),
  localize("<*buildPlanElephant>"),
  localize("<*buildPlanTurret>"),
  localize("<*buildPlanDock>"),
  localize("<*buildPlanSiege>"),
  localize("<*buildPlanRanch>"),
  localize("<*buildPlanBarrack>"),
  localize("<*buildPlanRange>"),
  localize("<*buildPlanHorse>"),
  localize("<*buildPlanTurret>"),
  localize("<*buildPlanDock>"),
  localize("<*buildPlanSiege>"),
  localize("<*buildPlanSiege>"),
  localize("<*buildPlanForge>"),
  localize("<*buildPlanWall>"),
  "",
  "",
  localize("<*buildPlanWall>"),
  "",
  "",
  localize("<*buildPlanWall>"),
  "",
  "",
  localize("<*buildPlanWall>"),
  "",
  "",
  localize("<*buildPlanWall>"),
  "",
  "",
  localize("<*buildPlanWall>"),
  "",
  "",
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanStorage>"),
  localize("<*buildPlanFarm>"),
  localize("<*buildPlanBarrackAndRangeAndHorse>"),
  localize("<*buildPlanWorkshop>"),
  localize("<*buildPlanForge>"),
  localize("<*buildPlanTurret>"),
  localize("<*buildPlanSonic>"),
  localize("<*buildPlanForge>"),
  localize("<*buildPlanDock>"),
  localize("<*buildPlanMine>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanTurret> <*buildPlanBuiltOnWater>"),
  localize("<*buildPlanTurret>"),
  localize("<*buildPlanTurret>. <*buildPlanChosenOne>"),
  localize("<*buildPlanTurret>"),
  localize("<*buildPlanArtillery>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanForge>"),
  localize("<*buildPlanWorkshop>"),
  localize("<*buildPlanAirfield>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanHorse>"),
  localize("<*buildPlanAirDefence>"),
  localize("<*buildPlanAirDefence>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanRiceFarm>"),
  localize("<*buildPlanDeliveryStorage>"),
  localize("<*buildPlanRanch>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanHouse>"),
  localize("<*buildPlanStoneMine>"),
  localize("<*buildPlanSonic>"),
  localize("<*buildPlanHouse>"),
  "",
  "",
  "",
  "",
  ""
}
function findImage(images, name)
  images.find = name
  if _ENV["$lastResult"] == nil then
    log("Can't find image for '" .. name .. "'")
    return nil
  end
  id = _ENV["$lastResult"]
  if id == nil or images["@id"] == nil then
    log("interface." .. interfaceName .. ".content.image: No image with id=" .. id .. " (name=" .. name .. ")")
  end
  return id
end
researchIcons = {}
local rs = gameplay.researches_list
local images = getInterface().content_image
for i = 1, rs.size do
  researchIcons[i] = findImage(images, "upgrade" .. i - 1 .. ".png")
end
envIcons = {
  [0] = 0,
  [1] = 0,
  [329] = 0,
  [3] = 0,
  [4] = 0,
  [5] = 0,
  [6] = 0,
  [7] = 0,
  [8] = 0,
  [9] = 0,
  [10] = 0,
  [11] = 0,
  [12] = 0,
  [13] = 0,
  [14] = 0,
  [15] = 0,
  [16] = 0,
  [17] = 0,
  [18] = 0,
  [19] = 0,
  [20] = 0,
  [21] = 0,
  [22] = 0,
  [23] = 0,
  [24] = 0,
  [25] = 0,
  [26] = 0,
  [27] = 0,
  [28] = 0,
  [29] = 0,
  [30] = 0,
  [31] = 0,
  [32] = 0,
  [36] = 0,
  [37] = 0,
  [274] = 0,
  [38] = 0,
  [275] = 0,
  [39] = 0,
  [276] = 0,
  [63] = 0,
  [64] = 0,
  [65] = 0,
  [66] = 0,
  [67] = 0,
  [68] = 0,
  [69] = 0,
  [70] = 0,
  [90] = 0,
  [103] = 0,
  [303] = 0,
  [305] = 0,
  [323] = 0,
  [324] = 0,
  [325] = 0,
  [326] = 0,
  [327] = 0,
  [328] = 0
}
tempAbilityIcons = {
  findImage(images, "tempAbility0.png"),
  findImage(images, "tempAbility1.png")
}
for envId, data in pairs(envIcons) do
  envIcons[envId] = findImage(images, "env" .. envId .. ".png")
end
unitsWorkIconText = {
  [54] = {
    [0] = {
      envIcons[90],
      localize("<*unitOptionGrowWheat/0>"),
      localize("<*unitOptionGrowWheat/1>")
    }
  },
  [70] = {
    [0] = {
      envIcons[90],
      localize("<*unitOptionGrowWheat/0>"),
      localize("<*unitOptionGrowWheat/1>")
    }
  },
  [95] = {
    [0] = {
      envIcons[90],
      localize("<*unitOptionGrowWheat/0>"),
      localize("<*unitOptionGrowWheat/1>")
    }
  },
  [193] = {
    [0] = {
      envIcons[90],
      localize("<*unitOptionGrowWheat/0>"),
      localize("<*unitOptionGrowWheat/1>")
    }
  },
  [339] = {
    [0] = {
      envIcons[305],
      localize("<*unitOptionGrowRice/0>"),
      localize("<*unitOptionGrowRice/1>")
    }
  }
}
envResource = {
  [0] = 0,
  [1] = 0,
  [3] = 1,
  [4] = 1,
  [5] = 1,
  [6] = 1,
  [7] = 1,
  [8] = 1,
  [9] = 1,
  [10] = 1,
  [11] = 1,
  [12] = 1,
  [13] = 1,
  [14] = 1,
  [15] = 1,
  [16] = 1,
  [17] = 1,
  [18] = 1,
  [19] = 1,
  [20] = 1,
  [21] = 1,
  [22] = 1,
  [23] = 1,
  [24] = 1,
  [25] = 1,
  [26] = 1,
  [27] = 1,
  [28] = 1,
  [29] = 1,
  [30] = 1,
  [31] = 1,
  [32] = 1,
  [36] = 0,
  [37] = 2,
  [38] = 1,
  [39] = 2,
  [63] = 1,
  [64] = 1,
  [65] = 1,
  [66] = 1,
  [67] = 1,
  [68] = 1,
  [69] = 0,
  [70] = 0,
  [90] = 0,
  [103] = 0,
  [274] = 2,
  [275] = 1,
  [276] = 2,
  [303] = 1,
  [305] = 0,
  [323] = 1,
  [324] = 1,
  [325] = 1,
  [326] = 1,
  [327] = 1,
  [328] = 1,
  [329] = 0
}
unitIcons = {}
local ut = gameplay.unitType
for i = 1, ut.size do
  unitIcons[i] = findImage(images, "unit" .. i - 1 .. ".png")
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
resourceIcons = {
  579,
  580,
  584,
  582,
  581
}
function toBool(v)
  if type(v) == "number" then
    return v ~= 0
  end
  if type(v) == "string" then
    if v == "true" then
      return true
    end
    local n = tonumber(v)
    return n ~= nil and n ~= 0
  end
  return false
end
function getHotKey(hotKeyId)
  id = hotKeyId
  local keys = getInterface()["hotKeys_list_@id_keys"]
  local sz = keys.size
  local key = keys["$0_value"]
  local result = hotKeyNames[key]
  for i = 2, sz do
    id = i - 1
    local key = keys["@id_value"]
    result = result .. " + " .. hotKeyNames[key]
  end
  return result
end
function getWidgetHotKey(nodes, widgetId)
  id = widgetId
  if nodes["@id_hotKey"] == nil then
    return ""
  else
    local key = nodes["@id_hotKey"]
    return getHotKey(key)
  end
end
function getEnvName(envTypes, envType)
  local nm = envNames[envType]
  if nm == nil then
    return envTypes["@envType_createTag"]
  else
    return nm
  end
end
function outCostDigit(showNode, digitNode, initCost, fullCost, hasRes, divider)
  showNode.visible = 0 < fullCost
  local w = digitNode.widget
  w.text = fullCost // divider
  if fullCost <= hasRes then
    w.textColor_value = 4294967295
  elseif initCost <= hasRes then
    w.textColor_value = 4278255615
  else
    w.textColor_value = 4278190335
  end
end
function getNationName(id, firstPeriod)
  if id >= #nationNames then
    return "---"
  end
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
  if nationId == nil then
    return ""
  end
  return getNationName(nationId, firstPeriod)
end
function updateMassTransformationWindowInfo(nodes, myFaction, statistics, firstPeriod)
  local unitTypeId, workId
  local num = 1
  local gameplay = _ENV["$session_gameplay_gameplay"]
  if massUpdateMass then
    if massUpdateId == nil then
      return
    end
    if massUpdateId > #massUpdate then
      nodes["$328_visible"] = false
      massUpdateId = nil
      return
    end
    local data = massUpdate[massUpdateId]
    unitTypeId = data[1]
    workId = data[2]
    statistics.liveConstructed = unitTypeId
    local liveConstructed = _ENV["$lastResult"]
    statistics.underTransformation = unitTypeId
    local underTransformation = _ENV["$lastResult"]
    num = liveConstructed - underTransformation
    nodes["$548_widget_text"] = localize("<*upgradeUnit/1>")
  else
    nodes["$548_widget_text"] = localize("<*upgradeUnit/0>")
    local state = workButtonsState[9]
    if not state.show or currentSelectionUnitType == nil then
      nodes["$328_visible"] = false
      massUpdateId = nil
      return
    end
    local sel = currentSelectionUnitTypes[currentSelectionUnitType]
    unitTypeId = sel[1]
    assert(unitTypeId ~= nil)
    workId = state.workId
    id = unitTypeId
    local fromUnit = gameplay["unitType_@id"]
    id = workId
    id = fromUnit["work_@id_ability"]
    if fromUnit["ability_@id_type"] ~= 2 then
      log(unitTypeId, workId)
      log(workButtonsState)
      log(currentSelectionUnitTypes)
      assert(false)
    end
    sel[2] = sel[2] - currentSelectionUnderTransformation
    num = sel[2]
  end
  id = unitTypeId
  local fromUnit = gameplay["unitType_@id"]
  if fromUnit == nil then
    return
  end
  id = workId
  local work = fromUnit["work_@id"]
  if work == nil then
    return
  end
  id = work.ability
  local ability = fromUnit["ability_@id"]
  assert(ability.type == 2)
  local nextUnitId = ability.data_unit
  id = nextUnitId
  local nextUnit = gameplay["unitType_@id"]
  nodes["$573_widget_text"] = unitNames[unitTypeId + 1]
  nodes["$756_widget_middle_set_normal"] = unitIcons[unitTypeId + 1]
  nodes["$594_widget_text"] = getUnitNationName(unitTypeId, firstPeriod)
  nodes["$80_visible"] = 1 < num
  nodes["$80_widget_text"] = num
  nodes["$578_widget_text"] = unitNames[nextUnitId + 1]
  nodes["$711_widget_middle_set_normal"] = unitIcons[nextUnitId + 1]
  nodes["$709_widget_text"] = getUnitNationName(nextUnitId, firstPeriod)
  nodes["$125_visible"] = 1 < num
  nodes["$125_widget_text"] = num
  nodes["$547_widget_text"] = work.makeTime // 1000
  local supply1 = 0
  if nextUnit.supplyOn then
    supply1 = nextUnit.supply_cost
  end
  local supply2 = 0
  if fromUnit.supplyOn then
    supply2 = fromUnit.supply_cost
  end
  local supply = supply1 - supply2
  if 0 < supply then
    nodes["$349_visible"] = true
    nodes["$536_widget_text"] = supply * num // 10
  else
    nodes["$349_visible"] = false
  end
  if 0 < ability.requirements_unit_size then
    nodes["$127_visible"] = true
    nodes["$228_widget_text"] = getListOfRequiredUnits(ability.requirements_unit, ability.requirements_unitsAll)
  else
    nodes["$127_visible"] = false
  end
  local costOrder = work.costOrder
  local costStart = work.costStart
  local costProcess = work.costProcess
  local i0 = costOrder["$0"] + costStart["$0"] + costProcess["$0"]
  local i1 = costOrder["$1"] + costStart["$1"] + costProcess["$1"]
  local i2 = costOrder["$2"] + costStart["$2"] + costProcess["$2"]
  id = _ENV["$session_visual_currentFaction"]
  local sFaction = gameplay["scene_0_faction_@id"]
  local resources = sFaction.treasury_resources
  local r0 = resources["$0"]
  local r1 = resources["$1"]
  local r2 = resources["$2"]
  outCostDigit(nodes["$350"], nodes["$530"], i0, i0 * num, r0, 1000)
  outCostDigit(nodes["$351"], nodes["$457"], i1, i1 * num, r1, 1000)
  outCostDigit(nodes["$352"], nodes["$383"], i2, i2 * num, r2, 1000)
end
workButtonsState = {
  {show = false, workId = 0},
  {show = false, workId = 0},
  {show = false, workId = 0},
  {show = false, workId = 0},
  {show = false, workId = 0},
  {show = false, workId = 0},
  {show = false, workId = 0},
  {show = false, workId = 0},
  {show = false, workId = 0}
}
function getUnitWorkIconText(unitTypeId, workId)
  local workIconText = unitsWorkIconText[unitTypeId]
  if workIconText == nil then
    return nil
  end
  return workIconText[workId]
end
function isResearchReadyForStart(researchesState, researchId)
  local size = researchesState.size
  if researchId >= size then
    return true
  end
  id = researchId
  local researchState = researchesState["@id"]
  local quantityLimit = _ENV["$session_gameplay_gameplay_researches_list_@id_quantity"]
  return not researchState.inProcess and quantityLimit > researchState.quantity
end
function isResearchCompleteF(researchesState, researchId)
  if researchId >= researchesState.size then
    return false
  end
  id = researchId
  local researchState = researchesState["@id"]
  return researchState.quantity > 0
end
function isResearchComplete(faction, research)
  local factions = _ENV["$session_gameplay_gameplay_faction"]
  id = faction
  local researchesState = factions["@id_researchState"]
  return isResearchCompleteF(researchesState, research)
end
function haveRequiredUnit(requirement, statistics, noMax)
  local ru = requirement.type
  local min = requirement.min
  local max = requirement.max
  statistics.liveConstructed = ru
  local live = _ENV["$lastResult"]
  return min <= live and (noMax or max >= live)
end
function haveRequiredUnitsAny(requirements, statistics)
  local sz = requirements.size
  for i = 1, sz do
    id = i - 1
    if haveRequiredUnit(requirements["@id"], statistics, 5 <= sz) then
      return true
    end
  end
  return false
end
function haveRequiredUnitsAll(requirements, statistics)
  local sz = requirements.size
  for i = 1, sz do
    id = i - 1
    if not haveRequiredUnit(requirements["@id"], statistics, 5 <= sz) then
      return false
    end
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
  if sz == 0 then
    return true
  end
  for i = 1, sz do
    id = i - 1
    local o = requirements["@id"]
    if isResearchCompleteF(researchState, o.id) then
      return true
    end
  end
  return false
end
function haveRequiredResearchesAll(requirements, researchState)
  local sz = requirements.size
  for i = 1, sz do
    id = i - 1
    local o = requirements["@id"]
    if not isResearchCompleteF(researchState, o.id) then
      return false
    end
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
  local n = nodes["@id"]
  n.visible = true
  n.disabled = false
  id = workReservePanels[buttonId]
  nodes["@id_visible"] = false
  id = workButtons[buttonId]
  local set = nodes["@id_widget_middle_set"]
  set.normal = icon
  set.disabled = icon
end
function showWorkButton(nodes, myFaction, statistics, reserve, reserveProgress, unitTypeId, unitType, buttonId, workId, finalAge)
  local show = false
  local disabled = true
  local continue = true
  if workId < unitType.work_size then
    id = workId
    local work = unitType["work_@id"]
    id = work.ability
    local ability = unitType["ability_@id"]
    local requirements = ability.requirements
    local hasReserve = work.reserveLimit > 0
    id = workReservePanels[buttonId]
    if id ~= nil then
      nodes["@id_visible"] = hasReserve
      if hasReserve then
        workReserveNumber = workReserveNumbers[buttonId]
        nodes["@workReserveNumber_widget_text"] = reserve
      end
    end
    local enabledE = work.enabled
    local enabledR = haveRequiredResearches(requirements.research, requirements.researchesAll, myFaction.researchState)
    local enabledU = haveRequiredUnits(requirements.unit, requirements.unitsAll, statistics)
    local enabledSum = enabledE and enabledR and enabledU
    id = workReserveProgress[buttonId]
    if id ~= nil then
      local node = nodes["@id"]
      if hasReserve and reserve == 0 and enabledSum then
        node.widget_current = reserveProgress * 100 // work.reserveTime
        node.visible = true
      else
        node.visible = false
      end
    end
    local available = true
    local normalIcon, disabledIcon
    local abilityType = ability.type
    if abilityType == 0 then
      workObject = ability.data_unit
      show = enabledR
      continue = not enabledSum
      normalIcon = unitIcons[workObject + 1]
      disabledIcon = unitIcons[workObject + 1]
    elseif abilityType == 1 then
      workObject = ability.data_research
      continue = not enabledR
      if isResearchReadyForStart(myFaction.researchState, workObject) then
        show = enabledR
        if show then
          local h = hideResearchOnFinalAge[workObject]
          if h ~= nil then
            show = finalAge > h
          end
        end
        available = not myFaction["researchesUnavailable_@workObject"]
        local icon = researchIcons[workObject + 1]
        normalIcon = icon
        disabledIcon = icon
      end
    elseif abilityType == 2 then
      workObject = ability.data_unit
      show = enabledE and enabledR
      continue = not show
      normalIcon = unitIcons[workObject + 1]
      disabledIcon = unitIcons[workObject + 1]
    else
      workObject = ability.data_id
      continue = not enabledSum
      show = true
      normalIcon = 286
      disabledIcon = 286
    end
    disabled = not enabledSum or not available
    if show then
      id = workButtonBlocks[buttonId]
      local nodeButton = nodes["@id"]
      nodeButton.visible = true
      local state = workButtonsState[buttonId]
      assert(state ~= nil)
      state.workId = workId
      state.show = true
      id = workButtons[buttonId]
      local set = nodes["@id_widget_middle_set"]
      set.normal = normalIcon
      set.disabled = disabledIcon
      nodeButton.disabled = disabled
      id = workUnavailableIcon[buttonId]
      if id ~= nil then
        nodes["@id_visible"] = not available
      end
      local iconText = getUnitWorkIconText(unitTypeId, workId)
      if iconText ~= nil then
        set.normal = iconText[1]
        set.disabled = iconText[1]
      end
    end
  end
  return {
    show,
    disabled,
    continue
  }
end
function forEachPlayerFaction(player, func)
  assert(player < 64)
  id = player
  local facs = _ENV["$session_gameplay_gameplay_player_@id_controlledFactions"]
  assert(facs ~= nil)
  for faction = 0, 63 do
    id = faction
    if facs["@id"] then
      func(faction)
    end
  end
end
function showUnitTypeInfo()
  if currentSelectionUnitType == nil then
    return
  end
  local nodes = getNodes()
  local selectionList = _ENV["$session_visual_scene_0_selection_units_list"]
  if selectionList.size == 0 then
    return
  end
  id = selectionList["$0_id"]
  local gUnit = _ENV["$session_gameplay_gameplay_scene_0_unit_@id"]
  if gUnit == nil or gUnit.instanceId ~= selectionList["$0_instance"] then
    return
  end
  shownUnitTypeInfo = currentSelectionUnitTypes[currentSelectionUnitType][1]
  id = gUnit.typeModified
  local unitType = _ENV["$session_gameplay_gameplay_unitTypeModified_@id"]
  assert(unitType ~= nil)
  if unitType.movementOn then
    nodes["$1072_visible"] = true
    nodes["$1053_widget_text"] = unitType.movement_moveSpeed
  else
    nodes["$1072_visible"] = false
  end
  if unitType.transportingOn then
    nodes["$241_visible"] = true
    nodes["$246_widget_text"] = unitType.transporting_volume
  else
    nodes["$241_visible"] = false
  end
  if unitType.transportOn then
    nodes["$675_visible"] = true
    nodes["$653_widget_text"] = unitType.transport_volume
  else
    nodes["$675_visible"] = false
  end
  if unitType.airplaneOn then
    local fuel = unitType.airplane_fuel
    nodes["$1405_visible"] = 0 < fuel
    if 0 < fuel then
      nodes["$1404_widget_text"] = localize("<*timerSec/0>") .. fuel // 1000 .. localize("<*timerSec/1>")
    end
  else
    nodes["$1405_visible"] = false
  end
  nodes["$1009_visible"] = unitType.openFows_1
  nodes["$1029_visible"] = unitType.hiddenInFows_1
  local sz = {
    0,
    0,
    0,
    0
  }
  local tickness = {
    0,
    0,
    0,
    0
  }
  if unitType.armor_type ~= 2 then
    sz[1] = 1
  else
    local armor = unitType.armor_data
    local armors = armor.size
    for i = 1, armors do
      id = i - 1
      local a = armor["@id"]
      sz[i] = a.probability
      tickness[i] = a.object_tickness
    end
  end
  local szs = sz[1] + sz[2] + sz[3] + sz[4]
  if szs == 0 then
    szs = 1
  end
  local armorBarSize = 220 * interfaceScale
  local gsz0 = math.floor(armorBarSize * sz[1] / szs)
  local gsz1 = math.floor(armorBarSize * sz[2] / szs)
  local gsz2 = math.floor(armorBarSize * sz[3] / szs)
  local gsz3 = math.floor(armorBarSize * sz[4] / szs)
  local left0 = nodes["$6_localLeft"]
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
  setSizeX(nodes["$6"], gsz0)
  nodes["$56_localLeft"] = left1
  setSizeX(nodes["$56"], gsz1)
  nodes["$98_localLeft"] = left2
  setSizeX(nodes["$98"], gsz2)
  nodes["$99_localLeft"] = left3
  setSizeX(nodes["$99"], gsz3)
  if gsz0 < 20 then
    left0 = left0 - (20 - gsz0)
    gsz0 = 20
  end
  nodes["$261_widget_text"] = sz[1] * 100 // szs .. "%"
  nodes["$261_localLeft"] = left0
  setSizeX(nodes["$261"], gsz0)
  nodes["$362_widget_text"] = sz[2] * 100 // szs .. "%"
  nodes["$362_localLeft"] = left1
  setSizeX(nodes["$362"], gsz1)
  nodes["$363_widget_text"] = sz[3] * 100 // szs .. "%"
  nodes["$363_localLeft"] = left2
  setSizeX(nodes["$363"], gsz2)
  nodes["$364_widget_text"] = sz[4] * 100 // szs .. "%"
  nodes["$364_localLeft"] = left3
  setSizeX(nodes["$364"], gsz3)
  nodes["$388_widget_text"] = tickness[1] // 1000
  nodes["$388_localLeft"] = left0
  setSizeX(nodes["$388"], gsz0)
  nodes["$387_widget_text"] = tickness[2] // 1000
  nodes["$387_localLeft"] = left1
  setSizeX(nodes["$387"], gsz1)
  nodes["$366_widget_text"] = tickness[3] // 1000
  nodes["$366_localLeft"] = left2
  setSizeX(nodes["$366"], gsz2)
  nodes["$365_widget_text"] = tickness[4] // 1000
  nodes["$365_localLeft"] = left3
  setSizeX(nodes["$365"], gsz3)
  local av = (sz[1] * tickness[1] + sz[2] * tickness[2] + sz[3] * tickness[3] + sz[4] * tickness[4]) // szs
  nodes["$1391_widget_text"] = av // 1000 .. "." .. av // 100 % 10
  local weaponId = 0
  if shownUnitTypeInfo ~= 15 then
    local getDamageStr = function(damage, attacksPerAttack)
      if damage == nil then
        return "0"
      end
      if 1 < attacksPerAttack then
        return damage // 1000 .. " x " .. attacksPerAttack
      end
      return tostring(damage // 1000)
    end
    local showWeapon = function(weapon)
      if weaponId == #weaponBlock then
        return
      end
      weaponId = weaponId + 1
      widgetId = weaponBlock[weaponId]
      nodes["@widgetId_visible"] = true
      local damage = weapon.damage
      local damages = damage.damages
      local attacksCount = weapon.attacksPerAttack * weapon.attacksPerAction * damage.damagesCount
      widgetId = weaponDamageValue[weaponId]
      nodes["@widgetId_widget_text"] = getDamageStr(damages["$0"], attacksCount)
      if weaponId > #weaponTypedDamage then
        return
      end
      local wtd = weaponTypedDamage[weaponId]
      local n = 0
      for j = 1, 30 do
        id = j
        local dmg = damages["@id"]
        if dmg ~= nil and (j ~= 14 and j ~= 20 or dmg ~= 0) then
          n = n + 1
          if n <= #wtd then
            local typedDamage = wtd[n]
            widgetId = typedDamage[1]
            nodes["@widgetId_visible"] = true
            widgetId = typedDamage[2]
            nodes["@widgetId_widget_set_normal"] = weaponUnitTagIcon[n]
            widgetId = typedDamage[3]
            nodes["@widgetId_widget_text"] = unitTags[j]
            widgetId = typedDamage[4]
            nodes["@widgetId_widget_text"] = getDamageStr(dmg, attacksCount)
          end
        end
      end
      id = specialDamage[weaponId]
      nodes["@id_visible"] = 0 < n
      for j = n + 1, 3 do
        local typedDamage = weaponTypedDamage[weaponId][j]
        widgetId = typedDamage[1]
        nodes["@widgetId_visible"] = false
      end
      widgetId = weaponAdvancedInfo[weaponId]
      nodes["@widgetId_visible"] = true
      widgetId = weaponIcon[weaponId]
      local wi = unitsWeaponIcon[shownUnitTypeInfo]
      local set = nodes["@widgetId_widget_set"]
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
      local widget = nodes["@widgetId_widget"]
      if area == 0 then
        widget.text = localize("<*damageArea/0>")
      elseif area == 1 then
        widget.text = localize("<*damageArea/1>")
      elseif area == 2 then
        widget.text = localize("<*damageArea/2>")
      end
      local rechargePeriod = weapon.rechargePeriod
      widgetId = weaponRechargeTime[weaponId]
      nodes["@widgetId_widget_text"] = rechargePeriod // 1000 .. "." .. rechargePeriod // 100 % 10
      local spread = weapon.spread
      widgetId = weaponSpread[weaponId][1]
      if spread == 0 then
        nodes["@widgetId_visible"] = false
      else
        nodes["@widgetId_visible"] = true
        widgetId = weaponSpread[weaponId][2]
        nodes["@widgetId_widget_text"] = weapon.spread // 10 .. "%"
      end
      widgetId = weaponDistance[weaponId]
      local distMin = weapon.distanceMin
      if distMin == 0 then
        nodes["@widgetId_widget_text"] = weapon.distanceMax // 1000
      else
        nodes["@widgetId_widget_text"] = distMin // 1000 .. " - " .. weapon.distanceMax // 1000
      end
    end
    local weaponsNumber = unitType.weapon_size
    for i = 1, weaponsNumber do
      id = i - 1
      local weapon = unitType["weapon_@id"]
      showWeapon(weapon)
    end
    local turretsNumber = unitType.turret_size
    for i = 1, turretsNumber do
      id = i - 1
      local weapons = unitType["turret_@id_weapon"]
      local weaponsNumber = weapons.size
      for i = 1, weaponsNumber do
        id = i - 1
        local weapon = weapons["@id"]
        showWeapon(weapon)
      end
    end
  end
  local parent = nodes["$114"]
  local widget = nodes["$193"]
  widget.visible = true
  widget.sizeY = math.floor((160 + weaponId * 120) * interfaceScale)
  widget.localLeft = parent.screenLeft - 10
  widget.localTop = parent.screenTop - widget.sizeY - 10
  for i = weaponId + 1, 5 do
    id = weaponBlock[i]
    nodes["@id_visible"] = false
  end
end
function cameraToMinimap(x, y, minimapWidget)
  local nodes = getNodes()
  local sz = _ENV["$session_visual_scene_0_landscape_size"]
  id = minimapWidget
  local n = nodes["@id"]
  local lx = sz.x * (1 - x / n.sizeX)
  local ly = sz.y * (y / n.sizeY)
  _ENV["$session_visual_scene_0_cameraShowPosition"] = {lx, ly}
end
function getAgeFactionIndustrial(researchesState, default)
  if isResearchCompleteF(researchesState, 93) then
    return {6, 8}
  end
  if isResearchCompleteF(researchesState, 59) then
    return {5, 8}
  end
  if isResearchCompleteF(researchesState, 114) then
    return {6, 9}
  end
  if isResearchCompleteF(researchesState, 64) then
    return {5, 9}
  end
  if isResearchCompleteF(researchesState, 115) then
    return {6, 10}
  end
  if isResearchCompleteF(researchesState, 68) then
    return {5, 10}
  end
  if isResearchCompleteF(researchesState, 116) then
    return {6, 11}
  end
  if isResearchCompleteF(researchesState, 67) then
    return {5, 11}
  end
  if isResearchCompleteF(researchesState, 118) then
    return {6, 12}
  end
  if isResearchCompleteF(researchesState, 63) then
    return {5, 12}
  end
  if isResearchCompleteF(researchesState, 121) then
    return {6, 13}
  end
  if isResearchCompleteF(researchesState, 65) then
    return {5, 13}
  end
  if isResearchCompleteF(researchesState, 125) then
    return {6, 14}
  end
  if isResearchCompleteF(researchesState, 62) then
    return {5, 14}
  end
  if isResearchCompleteF(researchesState, 126) then
    return {6, 15}
  end
  if isResearchCompleteF(researchesState, 70) then
    return {5, 15}
  end
  if isResearchCompleteF(researchesState, 131) then
    return {6, 16}
  end
  if isResearchCompleteF(researchesState, 73) then
    return {5, 16}
  end
  if isResearchCompleteF(researchesState, 135) then
    return {6, 17}
  end
  if isResearchCompleteF(researchesState, 72) then
    return {5, 17}
  end
  if isResearchCompleteF(researchesState, 136) then
    return {6, 18}
  end
  if isResearchCompleteF(researchesState, 61) then
    return {5, 18}
  end
  return {4, default}
end
function getUnit(units, unitId, instanceId)
  id = unitId
  local target = units["@id"]
  if instanceId ~= nil and (target == nil or target.instanceId ~= instanceId) then
    return nil
  end
  return target
end
function getUnitI(units, instancedId)
  id = instancedId.id
  local target = units["@id"]
  if target == nil or target.instanceId ~= instancedId.instance then
    return nil
  end
  return target
end
function getEnvI(envs, instancedId)
  id = instancedId.id
  local target = envs["@id"]
  if target == nil or target.instanceId ~= instancedId.instance then
    return nil
  end
  return target
end
function getAgeFaction(faction)
  local factions = _ENV["$session_gameplay_gameplay_faction"]
  id = faction
  local researchesState = factions["@id_researchState"]
  if isResearchCompleteF(researchesState, 3) then
    if not isResearchCompleteF(researchesState, 1) then
      return {1, 2}
    end
    if isResearchCompleteF(researchesState, 5) then
      if not isResearchCompleteF(researchesState, 15) then
        return {3, 4}
      end
      return getAgeFactionIndustrial(researchesState, 4)
    end
    if isResearchCompleteF(researchesState, 6) then
      if not isResearchCompleteF(researchesState, 9) then
        return {3, 5}
      end
      return getAgeFactionIndustrial(researchesState, 5)
    end
    return {2, 2}
  end
  if isResearchCompleteF(researchesState, 4) then
    if not isResearchCompleteF(researchesState, 2) then
      return {1, 3}
    end
    if isResearchCompleteF(researchesState, 7) then
      if not isResearchCompleteF(researchesState, 16) then
        return {3, 6}
      end
      return getAgeFactionIndustrial(researchesState, 6)
    end
    if isResearchCompleteF(researchesState, 8) then
      if not isResearchCompleteF(researchesState, 17) then
        return {3, 7}
      end
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
    return string.format(strTimeH0 .. "%u" .. strTimeH1 .. "%02d" .. strTimeH2, min, sec)
  end
  if value < 86400 then
    local hour = value // 3600
    local min = value % 3600 // 60
    local sec = value % 60
    return string.format(strTimeD0 .. "%u" .. strTimeD1 .. "%02d" .. strTimeD2 .. "%02d" .. strTimeD3, hour, min, sec)
  end
  local day = value // 86400
  local hour = value % 86400 // 3600
  return string.format(strTimeL0 .. "%u" .. strTimeL1 .. "%02d" .. strTimeL2, day, hour)
end
function getRelation(relations, fromFaction, toFaction)
  id = fromFaction
  local f = relations["@id"]
  id = toFaction
  return f["@id_value"]
end
function getPlayerNameFont(player)
  if playerNames == nil then
    return {
      "Noname",
      fonts.en
    }
  end
  local name = playerNames[player + 1]
  if name == nil then
    return {
      "Noname",
      fonts.en
    }
  end
  return {
    name,
    playerFonts[player + 1]
  }
end
function writePlayerToWidget(player, widget, textColor, strokeColor)
  local plnf = getPlayerNameFont(player)
  widget.text = plnf[1]
  widget.fontName = plnf[2]
  if textColor ~= nil then
    widget.textColor_value = textColor
  end
  if strokeColor ~= nil then
    widget.strokeColor_value = strokeColor
  end
end
function writePlayerToWidget_(player, widget)
  local col = getPlayerColor(player)
  writePlayerToWidget(player, widget, col[1], col[2])
end
function canShow(scene, x, y, myFaction)
  if not _ENV["$session_visual_scene_0_hideInFogOfWar"] then
    return true
  end
  scene.checkFow = {
    x,
    y,
    myFaction
  }
  return _ENV["$lastResult"]
end
function canShowUnit(scene, unit, unitType, myFaction)
  if not _ENV["$session_visual_scene_0_hideInFogOfWar"] then
    return true
  end
  local rel = getRelation(scene.relation, myFaction, unit.faction)
  if rel == 1 then
    return true
  end
  scene.checkFow = {
    unit.position_x,
    unit.position_y,
    myFaction,
    unitType.hiddenInFows_value
  }
  return _ENV["$lastResult"]
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
    if ag == 0 then
      return 0
    end
    return ag[1] * 100 + ag[2]
  end
  local weapons = unitType.weapon
  if weapons.size == 0 then
    return 0
  end
  if weapons["$0_enabled"] then
    local damage = weapons["$0"].damage
    local area = damage.area
    if area == 1 or area == 2 and damage.radius >= 50000 then
      return 1
    end
  end
  return 0
end
function blockedPath(landscape, x1, y1, x2, y2)
  landscape.calcPath = {
    x1,
    y1,
    x2,
    y2,
    106
  }
  res = _ENV["$a_lastResult"]
  if res[1] == "3" then
    return false
  end
  if res[1] ~= "4" then
    return true
  end
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
    local weapon = weapons["@id"]
    local weaponType = weaponTypes["@id"]
    func(weapon, weaponType)
  end
end
function forEachWeapon(gUnit, unitType, func)
  local weapons = gUnit.weapon
  local weaponTypes = unitType.weapon
  forEachWeaponW(weapons, weaponTypes, func)
  local funcT = function(turret, turretType)
    local weapons = turret.weapon
    local weaponTypes = turretType.weapon
    forEachWeaponW(weapons, weaponTypes, func)
  end
  forEachTurret(gUnit, unitType, funcT)
end
function forEachTurret(gUnit, unitType, func)
  local turrets = gUnit.turret
  if turrets == nil then
    return
  end
  local turretsNum = turrets.size
  local turretTypes = unitType.turret
  for i = 1, turretsNum do
    id = i - 1
    local turret = turrets["@id"]
    local turretType = turretTypes["@id"]
    func(turret, turretType)
  end
end
function showEnvSelection()
  local nodes = getNodes()
  local vSession = _ENV["$session_visual"]
  local gameplay = _ENV["$session_gameplay_gameplay"]
  local scene = gameplay.scene_0
  currentSelectionUnitType = nil
  currentSelectionUnitFaction = nil
  nodes["$22_visible"] = false
  nodes["$423_visible"] = false
  nodes["$679_visible"] = false
  local env = getEnvI(scene.env, vSession.scene_0_selection_env)
  if env ~= nil then
    local gx = env.position_x
    local gy = env.position_y
    local myFactionId = vSession.currentFaction
    if canShow(scene, gx, gy, myFactionId) then
      envType = env.type
      local icon = envIcons[envType]
      nodes["$19_visible"] = true
      nodes["$330_widget_text"] = getEnvName(gameplay.envType, envType)
      local resource = envResource[envType]
      if resource ~= nil then
        nodes["$36_visible"] = true
        nodes["$247_widget_set_normal"] = resourceIcons[resource + 1]
        local h = env.health
        if 0 < h and h < 1000 then
          h = 1000
        end
        nodes["$248_widget_text"] = h // 1000
      else
        nodes["$36_visible"] = false
      end
      if icon ~= nil then
        nodes["$327_visible"] = true
        nodes["$327_widget_middle_set_normal"] = icon
      else
        nodes["$327_visible"] = false
      end
    else
      nodes["$19_visible"] = false
    end
  else
    nodes["$19_visible"] = false
  end
end
function updateUnitButtonsState(isMyFaction, gUnit, unitTypeId, unitType)
  if not isMyFaction or not unitType.controllable then
    return
  end
  local movable = unitType.movementOn
  local battleUnit = unitType.weapon_size > 0 or 0 < unitType.turret_size
  buttonAttackMove = buttonAttackMove or movable and battleUnit
  if battleUnit then
    if gUnit.attackPriorityLimit == 0 then
      attackPriorityLimitZero = true
    else
      attackPriorityLimitHigh = true
    end
  end
  local ag = getAttackGround(unitTypeId, unitType)
  buttonAttackGround = buttonAttackGround or ag ~= 0
  if ag ~= 0 then
    attackGroundList[unitTypeId] = ag
  end
  local transporting = 0 < gUnit.transportingUnits_size
  buttonUnload = buttonUnload or transporting
  unloadToPosition = unloadToPosition or transporting and movable
  buttonStop = buttonStop or 0 < gUnit.task_size
  if 0 < unitType.danceDuration and unitCanDance[unitTypeId] then
    danceUnitTypes[unitTypeId] = true
  end
  buttonGatherLast = buttonGatherLast or gUnit.hasLastGather
end
function showOneUnitSelection()
  local nodes = getNodes()
  local vSession = _ENV["$session_visual"]
  local selectionUnit = vSession.scene_0_selection_units_list_0
  local gameplay = _ENV["$session_gameplay_gameplay"]
  local scene = gameplay.scene_0
  local units = scene.unit
  local gUnit = getUnitI(units, selectionUnit)
  currentSelectionUnitType = nil
  currentSelectionUnitFaction = nil
  currentSelectionNum = 0
  if gUnit == nil or gUnit.state < 3 or gUnit.presence == 2 then
    nodes["$484_visible"] = false
    unitsShowWork = false
  else
    faction = gUnit.faction
    local myFactionId = vSession.currentFaction
    local isMyFaction = faction == myFactionId or isModeReplay
    id = gUnit.typeModified
    local unitType = gameplay["unitTypeModified_@id"]
    assert(unitType ~= nil)
    if not isMyFaction and not canShowUnit(scene, gUnit, unitType, myFactionId) then
      nodes["$484_visible"] = false
      unitsShowWork = false
    else
      local unitTypeId = gUnit.type
      local unitTypeModifiedId = gUnit.typeModified
      if unitTypeId ~= 331 and unitTypeId ~= 332 and unitTypeId ~= 335 and unitTypeId ~= 336 then
        local at = gUnit.attachedAirplane
        local ats = at.size
        local sum = ats
        if 0 < ats then
          for i = 0, ats - 1 do
            id = i
            if at["@id_id"] ~= nil then
              sum = sum - 1
            end
          end
        end
        if 0 < ats and sum == 0 then
          unitsShowWork = false
        end
      end
      updateUnitButtonsState(isMyFaction, gUnit, unitTypeId, unitType)
      nodes["$22_visible"] = not buttonUnload
      if buttonUnload then
        nodes["$679_visible"] = true
        showingUnitsInTransport = true
      end
      currentSelectionUnitType = unitTypeModifiedId
      currentSelectionUnitFaction = faction
      currentSelectionNum = 1
      if (not isMyFaction or isModeReplay) and faction > 1 then
        local n = nodes["$988"]
        n.visible = true
        local w = n.widget
        local rel = getRelation(scene.relation, myFactionId, faction)
        local pl = getPlayerOfFaction(faction)
        if pl ~= nil then
          writePlayerToWidget(pl, w, teamsColors[rel + 1][1])
          if rel == 1 then
            nodes["$713_visible"] = true
          elseif rel == 2 then
            nodes["$290_visible"] = true
          end
        else
          n.visible = false
        end
      else
        nodes["$988_visible"] = false
      end
      currentSelectionUnitTypes[unitTypeModifiedId] = {unitTypeId, 1}
      local nation = unitNations[unitTypeId + 1]
      nodes["$24_widget_text"] = unitNames[unitTypeId + 1]
      if nation == nil then
        nodes["$252_widget_text"] = ""
      else
        local actualEra = getAgeFaction(faction)[1]
        nodes["$252_widget_text"] = getNationName(nation, actualEra % 2 == 1)
      end
      local killsCounter = gUnit.killsCounter
      nodes["$1001_visible"] = 0 < killsCounter
      nodes["$1003_widget_text"] = killsCounter
      local curHealth = gUnit.health
      if 0 < curHealth and curHealth < 1000 then
        curHealth = 1000
      end
      local maxHealth = unitType.health
      nodes["$71_visible"] = true
      if showFullHealth then
        nodes["$25_widget_text"] = curHealth // 1000 .. " / " .. maxHealth // 1000
      else
        nodes["$25_widget_text"] = curHealth // 1000
      end
      nodes["$71_widget_current"] = curHealth * 100 // maxHealth
      nodes["$168_visible"] = false
      for i = 1, #workQueueButtons do
        id = workQueueButtons[i]
        nodes["@id_visible"] = false
      end
      if gUnit.state == 3 then
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
          nodes["$423_visible"] = true
          nodes["$35_visible"] = false
          local buildingProgress = gUnit.buildingProgress * 1000 // 8388608
          nodes["$389_widget_text"] = buildingProgress // 10 .. " %"
          nodes["$390_widget_current"] = buildingProgress
        end
      else
        if isMyFaction and gUnit.bag_amount > 999 and unitTypeId_ ~= 301 then
          nodes["$35_visible"] = true
          nodes["$39_widget_set_normal"] = resourceIcons[gUnit.bag_resource + 1]
          nodes["$86_widget_text"] = gUnit.bag_amount // 1000
        else
          nodes["$35_visible"] = false
        end
        local storage = unitType.storageMultiplier
        nodes["$34_visible"] = storage ~= 0
        if storage ~= 0 then
          nodes["$33_widget_text"] = storage * 100 // 65536 .. " %"
          for j = 1, #storageBoxes do
            local g = 65536 * (1 + j / 10)
            id = storageBoxes[j]
            nodes["@id_visible"] = storage >= g
          end
        end
        if gUnit.state >= 4 and isMyFaction then
          if not buttonUnload then
            local tasks = gUnit.task
            if 0 < tasks.size then
              local task = tasks["$0"]
              local data = task.data
              local taskType = task.type
              if taskType == 0 or taskType == 1 or taskType == 17 then
                if task.strict then
                  nodes["$739_visible"] = true
                else
                  nodes["$546_visible"] = true
                end
                taskPositionX = data.position_x
                taskPositionY = data.position_y
              elseif taskType == 12 then
                nodes["$1119_visible"] = true
                taskPositionX = data.position_x
                taskPositionY = data.position_y
              elseif taskType == 2 then
                local targetId = data.target
                local unit = getUnitI(units, targetId)
                if unit ~= nil then
                  local weaponId = data.weapon
                  nodes["$735_visible"] = true
                  taskPositionX = unit.position_x
                  taskPositionY = unit.position_y
                  id = unit.typeModified
                  local unitType = gameplay["unitTypeModified_@id"]
                  nodes["$750_widget_middle_set_normal"] = unitIcons[unit.type + 1]
                  local color = getFactionColor(unit.faction)[1]
                  setFlagColor(nodes["$753_widget_set"], color)
                  nodes["$754_widget_current"] = unit.health * 100 // unitType.health
                  scene.unit_averageDamage = {
                    selectionUnit.id,
                    targetId.id
                  }
                  local dmg = _ENV["$lastResult"]
                  if dmg < 10000 then
                    nodes["$748_widget_text"] = dmg // 1000 .. "." .. dmg // 100 % 10
                  else
                    nodes["$748_widget_text"] = dmg // 1000
                  end
                  scene.unit_hitChance = {
                    selectionUnit.id,
                    targetId.id,
                    weaponId
                  }
                  local chance = _ENV["$lastResult"]
                  if chance < 100 then
                    nodes["$1399_widget_text"] = chance // 10 .. "." .. chance % 10 .. "%"
                  else
                    nodes["$1399_widget_text"] = chance // 10 .. "%"
                  end
                end
              elseif taskType == 3 then
                planId = data.plan
                local plan = scene["faction_buildPlan_@planId"]
                if plan ~= nil then
                  nodes["$738_visible"] = true
                  rule = plan.rule
                  taskPositionX = plan.position_x
                  taskPositionY = plan.position_y
                  id = gameplay["build_@rule_unit"]
                  nodes["$762_widget_middle_set_normal"] = unitIcons[id + 1]
                  local color = getFactionColor(faction)[1]
                  setFlagColor(nodes["$776_widget_set"], color)
                  nodes["$764_widget_current"] = 0
                end
              elseif taskType == 4 then
                local unit = getUnitI(units, data.target)
                if unit ~= nil then
                  nodes["$738_visible"] = true
                  taskPositionX = unit.position_x
                  taskPositionY = unit.position_y
                  nodes["$762_widget_middle_set_normal"] = unitIcons[unit.type + 1]
                  local color = getFactionColor(unit.faction)[1]
                  setFlagColor(nodes["$776_widget_set"], color)
                  nodes["$764_widget_current"] = unit.buildingProgress * 100 // 8388608
                end
              elseif taskType == 5 and unitTypeId_ ~= 301 then
                local envId = data.target
                local env = getEnvI(scene.env, envId)
                if env ~= nil then
                  nodes["$736_visible"] = true
                  taskPositionX = env.position_x
                  taskPositionY = env.position_y
                  envTypeId = env.type
                  local envType = gameplay["envType_@envTypeId"]
                  nodes["$755_widget_middle_set_normal"] = envIcons[envTypeId]
                  nodes["$774_widget_current"] = env.health * 100 // envType.health
                  nodes["$784_widget_text"] = "---"
                  local targetTags = data.targetTags_value
                  local gather = unitType.gather
                  for i = 1, gather.size do
                    id = i - 1
                    local tags = gather["@id_envTags_value"]
                    if 0 < tags & targetTags then
                      local val = gather["@id_perTick"] * 20
                      nodes["$784_widget_text"] = val // 1000 .. "." .. val // 100 % 10
                    end
                  end
                end
              elseif taskType == 6 then
                local unit = getUnitI(units, data.target)
                if unit ~= nil then
                  nodes["$737_visible"] = true
                  taskPositionX = unit.position_x
                  taskPositionY = unit.position_y
                  nodes["$758_widget_middle_set_normal"] = unitIcons[unit.type + 1]
                  local color = getFactionColor(unit.faction)[1]
                  setFlagColor(nodes["$775_widget_set"], color)
                end
              elseif taskType == 15 then
                local targetId = gUnit.targetAerodrome
                local unit = getUnitI(units, targetId)
                if unit ~= nil then
                  nodes["$1326_visible"] = true
                  taskPositionX = unit.position_x
                  taskPositionY = unit.position_y
                  nodes["$1381_widget_middle_set_normal"] = unitIcons[unit.type + 1]
                end
              elseif taskType == 9 then
                local targetId = data.target
                local unit = getUnitI(units, targetId)
                if unit ~= nil then
                  nodes["$740_visible"] = true
                  taskPositionX = unit.position_x
                  taskPositionY = unit.position_y
                  id = unit.typeModified
                  local unitType = gameplay["unitTypeModified_@id"]
                  nodes["$768_widget_middle_set_normal"] = unitIcons[unit.type + 1]
                  local color = getFactionColor(unit.faction)[1]
                  setFlagColor(nodes["$772_widget_set"], color)
                  nodes["$771_widget_current"] = unit.health * 100 // unitType.health
                end
              end
            end
          end
          if 0 < unitType.work_size then
            local worksState = gUnit.work
            queueSize = worksState.queue_size
            if 0 < queueSize then
              nodes["$58_visible"] = true
            end
            nodes["$59_visible"] = 5 < queueSize
            if 0 < queueSize then
              local workTime = worksState.queue_0_time
              local workProgress = 1000
              if 0 < workTime then
                workProgress = worksState.progress * 1000 // workTime
              end
              nodes["$168_visible"] = true
              nodes["$168_widget_text"] = workProgress // 10 .. " %"
              nodes["$64_widget_current"] = workProgress
              for i = 1, 5 do
                id = i - 1
                local workState = worksState["queue_@id"]
                if i <= queueSize then
                  id = workQueueButtons[i]
                  nodes["@id_visible"] = true
                  local set = nodes["@id_widget_middle_set"]
                  id = i - 1
                  local iconText = getUnitWorkIconText(currentSelectionUnitTypes[currentSelectionUnitType][1], workState.work)
                  id = workState.work
                  local work = unitType["work_@id"]
                  id = work.ability
                  local ability = unitType["ability_@id"]
                  finalizedWork = finalizedWork or work.final
                  local abilityType = ability.type
                  if iconText ~= nil then
                    set.normal = iconText[1]
                  elseif abilityType == 0 then
                    workObject = ability.data_unit
                    set.normal = unitIcons[workObject + 1]
                  elseif abilityType == 1 then
                    workObject = ability.data_research
                    set.normal = researchIcons[workObject + 1]
                  elseif abilityType == 2 then
                    workObject = ability.data_unit
                    set.normal = unitIcons[workObject + 1]
                  else
                    workObject = ability.data_id
                    set.normal = 286
                  end
                  local amount = workState.amount
                  id = workQueueNumbers[i]
                  local n = nodes["@id"]
                  n.visible = 1 < amount
                  if 1 < amount then
                    n.widget_text = amount
                  end
                else
                  id = workQueueNumbers[i]
                  nodes["@id_visible"] = false
                end
              end
              for i = 6, queueSize do
                id = i - 1
                id = worksState["queue_@id_work"]
                local work = unitType["work_@id"]
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
  nodes["$71_visible"] = false
  nodes["$679_visible"] = false
  local unitsList = _ENV["$session_visual_scene_0_selection_units_list"]
  local gameplay = _ENV["$session_gameplay_gameplay"]
  local units = gameplay.scene_0_unit
  local myFactionId = _ENV["$session_visual_currentFaction"]
  local notFramedAny = true
  local currentSelectionButtonsTypes = {}
  faction = nil
  local unitsCount = 0
  for i = 1, unitsList.size do
    id = i - 1
    local selectionUnit = unitsList["@id"]
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
        local unitType = gameplay["unitTypeModified_@id"]
        updateUnitButtonsState(faction == myFactionId or isModeReplay, gUnit, unitTypeId, unitType)
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
    getNodes()["$484_visible"] = false
    unitsShowWork = false
  end
  if notFramedAny then
    currentSelectionUnitType = nil
    currentSelectionUnitFaction = nil
    for k, v in pairs(currentSelectionButtonsTypes) do
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
  nodes["$885_visible"] = false
  nodes["$866_visible"] = false
  specialAbilities = {}
  workButtonsState = {
    {show = false, workId = 0},
    {show = false, workId = 0},
    {show = false, workId = 0},
    {show = false, workId = 0},
    {show = false, workId = 0},
    {show = false, workId = 0},
    {show = false, workId = 0},
    {show = false, workId = 0},
    {show = false, workId = 0}
  }
  local vSession = _ENV["$session_visual"]
  if vSession.scene_0_selection_env ~= nil then
    showEnvSelection()
    _ENV["$interface_unitsSelectedGroup_active"] = false
  else
    local gameplay = _ENV["$session_gameplay_gameplay"]
    local scene = gameplay.scene_0
    local units = scene.unit
    nodes["$19_visible"] = false
    nodes["$22_visible"] = false
    nodes["$423_visible"] = false
    nodes["$679_visible"] = false
    nodes["$713_visible"] = false
    nodes["$290_visible"] = false
    local selectionList = vSession.scene_0_selection_units_list
    local selectionSize = selectionList.size
    finalizedWork = false
    currentSelectionUnitTypes = {}
    if selectionSize == 0 then
      currentSelectionUnitType = nil
      currentSelectionUnitFaction = nil
      _ENV["$interface_unitsSelectedGroup_active"] = false
    else
      nodes["$484_visible"] = true
      unitsShowWork = true
      _ENV["$interface_unitsSelectedGroup_active"] = true
      if selectionSize == 1 then
        showOneUnitSelection()
      else
        showUnitsSelection()
      end
    end
    if currentSelectionUnitType ~= nil then
      local landscape = _ENV["$session_gameplay_gameplay_scene_0_landscape"]
      if shownUnitTypeInfo ~= nil and shownUnitTypeInfo ~= currentSelectionUnitTypes[currentSelectionUnitType][1] then
        showUnitTypeInfo()
      end
      local currentSelectionTypeCount = currentSelectionUnitTypes[currentSelectionUnitType]
      nodes["$114_widget_middle_set_normal"] = unitIcons[currentSelectionTypeCount[1] + 1]
      if currentSelectionTypeCount ~= nil then
        nodes["$466_visible"] = 1 < currentSelectionTypeCount[2]
        nodes["$466_widget_text"] = currentSelectionTypeCount[2]
        nodes["$535_visible"] = 1 < currentSelectionTypeCount[2]
        nodes["$1378_visible"] = false
        nodes["$199_visible"] = false
        nodes["$1385_visible"] = false
        nodes["$1000_visible"] = false
        if currentSelectionTypeCount[2] == 1 then
          local selectionUnit = selectionList["$0"]
          local gUnit = getUnitI(units, selectionUnit)
          if gUnit ~= nil and gUnit.state >= 4 and gUnit.presence ~= 2 then
            id = gUnit.typeModified
            local unitType = gameplay["unitTypeModified_@id"]
            local rechTm = 0
            local rechMax = 5000
            local checkWeapon = function(weapon, weaponType)
              local rechargeTime = weapon.rechargeTime
              if 0 <= rechargeTime then
                local rechargePeriod = weaponType.rechargePeriod
                if rechargePeriod >= rechMax then
                  rechTm = rechargeTime
                  rechMax = rechargePeriod
                end
              end
            end
            forEachWeapon(gUnit, unitType, checkWeapon)
            if 0 < rechTm then
              nodes["$199_visible"] = true
              nodes["$117_widget_current"] = 1000 - rechTm * 1000 // rechMax
            end
            local dieTime = gUnit.dieTime
            local lifeTime = gUnit.fuel
            if lifeTime == nil then
              lifeTime = 0
            end
            local lifeLimit = unitType.airplane_fuel
            if lifeLimit == nil then
              lifeLimit = 0
            end
            if dieTime < 100000000 then
              local lf = dieTime - gameplay.time
              local lim = dieTime - gUnit.bornTime
              if lf < lim then
                lifeTime = lf
                lifeLimit = lim
              end
            end
            if 0 < lifeTime then
              local n = nodes["$1378"]
              n.visible = true
              n.widget_current = lifeTime * 1000 // lifeLimit
            end
            local chargesMax0 = unitType.weapon_0_charges
            if chargesMax0 ~= nil and 0 < chargesMax0 then
              local charges = gUnit.weapon_0_charges
              nodes["$1385_visible"] = true
              if 0 < charges then
                nodes["$323_visible"] = true
                nodes["$323_sizeX"] = math.floor(6 * interfaceScale * charges)
              else
                nodes["$323_visible"] = false
              end
              nodes["$312_sizeX"] = math.floor(6 * interfaceScale * chargesMax0)
            end
            local chargesMax1 = unitType.weapon_1_charges
            if chargesMax1 ~= nil and 0 < chargesMax1 then
              do
                local charges = gUnit.weapon_1_charges
                nodes["$1000_visible"] = true
                if 0 < charges then
                  nodes["$999_visible"] = true
                  nodes["$999_sizeX"] = math.floor(6 * interfaceScale * charges)
                else
                  nodes["$999_visible"] = false
                end
                nodes["$998_sizeX"] = math.floor(6 * interfaceScale * chargesMax1)
              end
            end
          end
        end
        local color = getFactionColor(faction)[1]
        setFlagColor(nodes["$385_widget_set"], color)
        local isMyFaction = faction == vSession.currentFaction or isModeReplay
        if isMyFaction and unitsShowWork then
          local unitType = gameplay["unitTypeModified_@currentSelectionUnitType"]
          if unitType ~= nil then
            if unitType.tags_5 and HQid ~= nil then
              local landscape = _ENV["$session_gameplay_gameplay_scene_0_landscape"]
              landscape.findFreePosition = {
                math.floor(HQx * 256),
                math.floor(HQy * 256),
                106
              }
              local res = _ENV["$a_lastResult"]
              if res[1] == "1" then
                local x = tonumber(res[2])
                local y = tonumber(res[3])
                local sx = landscape.size_x - 10000
                local sy = landscape.size_y - 10000
                if blockedPath(landscape, x, y, 10000, 10000) and blockedPath(landscape, x, y, sx, sy) then
                  nodes["$885_visible"] = true
                else
                  nodes["$866_visible"] = true
                end
              end
            end
            local works = unitType.work_size
            local reserves = {
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0
            }
            local reserveProgress = {
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0,
              0
            }
            local selCount = 0
            local checkNoTask = currentSelectionUnitTypes[currentSelectionUnitType][1] == 288
            for i = 1, selectionSize do
              id = i - 1
              local selectionUnit = selectionList["@id"]
              local gUnit = getUnitI(units, selectionUnit)
              if gUnit ~= nil and gUnit.state >= 4 and gUnit.presence ~= 2 then
                if checkNoTask then
                  local tasks = gUnit.task
                  if tasks.size > 0 then
                    unitsShowWork = false
                  end
                end
                if gUnit.typeModified == currentSelectionUnitType then
                  if gUnit.underTransformation then
                    currentSelectionUnderTransformation = currentSelectionUnderTransformation + 1
                  end
                  selCount = selCount + 1
                  for j = 1, works do
                    id = j - 1
                    local work = unitType["work_@id"]
                    assert(work ~= nil)
                    if 0 < work.reserveLimit then
                      local res = gUnit["work_reserve_@id"]
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
              finalizedWork = finalizedWork or currentSelectionUnderTransformation == selCount
              local showAny = false
              id = faction
              local myFaction = gameplay["faction_@id"]
              local finalAge = tonumber(_ENV["$session_gameplay_gameplay_dataStorage_finalAge"])
              if finalAge == nil then
                finalAge = 100
              end
              if finalizedWork then
                for i = 1, 9 do
                  nodeButtonId = workButtonBlocks[i]
                  nodes["@nodeButtonId_visible"] = false
                end
              else
                local worksData = unitsWork[currentSelectionUnitTypes[currentSelectionUnitType][1]]
                for i = 1, 9 do
                  assert(workButtonsState[i] ~= nil)
                  id = workButtonBlocks[i]
                  nodes["@id_visible"] = false
                  if worksData ~= nil then
                    local workData = worksData[i]
                    if workData ~= nil then
                      for j = 1, #workData do
                        local w = workData[j]
                        local showDisabled = showWorkButton(nodes, myFaction, statistics, reserves[w + 1], reserveProgress[w + 1], currentSelectionUnitTypes[currentSelectionUnitType][1], unitType, i, w, finalAge)
                        if showDisabled[1] then
                          showAny = true
                          if not showDisabled[3] then
                            break
                          end
                        end
                      end
                    else
                      nodeButtonId = workButtonBlocks[i]
                      nodes["@nodeButtonId_visible"] = false
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
              nodes["$68_visible"] = showAny
            end
          end
        end
      end
    end
  end
  assert(currentSelectionUnitType == nil or currentSelectionUnitTypes[currentSelectionUnitType] ~= nil)
  nodes["$1276_visible"] = attackPriorityLimitZero or attackPriorityLimitHigh
  nodes["$901_visible"] = attackPriorityLimitZero and not attackPriorityLimitHigh
  nodes["$1277_visible"] = attackPriorityLimitHigh and not attackPriorityLimitZero
  nodes["$1278_visible"] = attackPriorityLimitHigh and attackPriorityLimitZero
  nodes["$945_visible"] = buttonAttackMove
  nodes["$119_visible"] = buttonStop
  nodes["$201_visible"] = not isEmptyTable(danceUnitTypes)
  nodes["$183_visible"] = buttonGatherLast
  nodes["$456_visible"] = buttonAttackGround
  nodes["$206_visible"] = buttonUnload
end
function isEmptyTable(tbl)
  return next(tbl) == nil
end
function updateMinimapIcons()
  local gameplay = _ENV["$session_gameplay_gameplay"]
  local scene = gameplay.scene_0
  local vSession = _ENV["$session_visual"]
  local icons = vSession.scene_0_minimap_icons
  local currentFaction = vSession.currentFaction
  for i = 1, #showMinimapIcons do
    icons.remove = showMinimapIcons[i]
  end
  showMinimapIcons = {}
  local canSeeTownHalls = isResearchComplete(currentFaction, 92)
  scene.findAllUnits = {255, 32}
  if _ENV["$lastResult"] == "" then
    return
  end
  local units = _ENV["$a_lastResult"]
  for i = 1, #units do
    id = units[i]
    local unit = scene["unit_@id"]
    id = unit.typeModified
    local unitType = gameplay["unitTypeModified_@id"]
    local wonder = unitType.tags_9
    local faction = unit.faction
    local position = unit.position
    id = position.x
    local x = vSession["coordinateToVisual_@id"]
    id = position.y
    local y = vSession["coordinateToVisual_@id"]
    icons.create = {0, 1000}
    local iid = _ENV["$a_lastResult"]
    table.insert(showMinimapIcons, {
      tonumber(iid[1]),
      tonumber(iid[2])
    })
    id = tonumber(iid[1])
    local icon = icons["@id"]
    icon.color_value = 4294967295
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
  local facs = _ENV["$session_gameplay_gameplay_player_@id_controlledFactions"]
  for i = 0, 63 do
    id = i
    if facs["@id"] then
      return i
    end
  end
  return -1
end
function getPlayerOfFaction(faction)
  local plr = _ENV["$session_gameplay_gameplay_player"]
  local plrs = plr.size
  for i = 0, plrs - 1 do
    id = i
    local player = plr["@id_controlledFactions"]
    id = faction
    if player["@id"] then
      return i
    end
  end
  return nil
end
function getPlayerTeam(player)
  id = getFactionOfPlayer(player)
  return _ENV["$session_gameplay_gameplay_scene_0_faction_@id_team"]
end
function underWater(z)
  return z < 130200
end
function updateTeamBlocks()
  local nodes = getNodes()
  local teamsInitData = {
    list1 = 0,
    list2 = 0,
    blockId = 0,
    blockAddY = nodes["$1184_localTop"],
    blockSizeColumn = nodes["$1143_screenLeft"] - nodes["$1184_screenLeft"],
    blockNode
  }
  local gameplay = _ENV["$session_gameplay_gameplay"]
  local players = gameplay.player_size
  local sFactions = gameplay.scene_0_faction
  local namesPerColumn = 20
  local currentFaction = _ENV["$session_visual_currentFaction"]
  id = currentFaction
  local currentTeam = sFactions["@id_team"]
  local teams = {}
  for plId = 1, players do
    local func = function(facId)
      id = facId
      local team = sFactions["@id_team"]
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
    nodes["$991_visible"] = true
  else
    nodes["$1245_visible"] = true
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
        local teamed = 1 < #list
        local blockSize = 0
        for j = 1, #list do
          if teamed and teamsInitData.blockNode == nil then
            startTeamBlock(teamsInitData, blockStartPos, bestList, 1 < j, teamId == currentTeam)
          end
          blockSize = blockSize + 1
          local pl = list[j]
          if bestList == 1 then
            teamsInitData.list1 = teamsInitData.list1 + 1
            playersListPosition[pl] = teamsInitData.list1
            if namesPerColumn <= teamsInitData.list1 then
              finishTeamBlock(teamsInitData, blockStartPos, blockSize)
              bestList = 2
              blockStartPos = teamsInitData.list2 + namesPerColumn + 1
              blockSize = 0
            end
          else
            teamsInitData.list2 = teamsInitData.list2 + 1
            if namesPerColumn <= teamsInitData.list2 then
              return
            end
            playersListPosition[pl] = teamsInitData.list2 + namesPerColumn
            if namesPerColumn <= teamsInitData.list2 then
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
  teamsInitData.blockNode = nodes["@id"]
  teamsInitData.blockNode.visible = true
  assert(startPos <= #playersListNames)
  id = playersListNames[startPos]
  local n = nodes["@id"]
  teamsInitData.blockNode.localLeft = n.localLeft + math.floor((2 - bestList) * teamsInitData.blockSizeColumn - 5)
  if myTeam then
    teamsInitData.blockNode.widget_color_value = 1342242815
  else
    teamsInitData.blockNode.widget_color_value = 1342177408
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
  if teamsInitData.blockNode == nil then
    return
  end
  local nodes = getNodes()
  id = playersListNames[startPos + blockSize - 1]
  local n = nodes["@id"]
  local sy = n.localTop + n.sizeY + math.floor(teamsInitData.blockAddY) - teamsInitData.blockNode.localTop
  assert(0 < sy)
  teamsInitData.blockNode.sizeY = sy
  teamsInitData.blockNode = nil
end
function hideInterfaces(hide)
  local nodes = getNodes()
  nodes["$60_visible"] = not hide
  if hide then
    hiddenInterfaces = {}
    for i = 0, 100 do
      if i ~= interfaceId then
        id = i
        local itf = _ENV["$interface_@id"]
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
        _ENV["$interface_@id_active"] = true
      end
    end
    hiddenInterfaces = nil
  end
  onResize()
end
function getListOfRequiredUnits(requirements, all)
  local delimiter = "/"
  if all then
    delimiter = "+"
  end
  local s = ""
  local sz = requirements.size
  for i = 1, sz do
    id = i - 1
    local requirementUnit = requirements["@id"]
    local num = requirementUnit.min
    if 0 < num then
      local unitType = requirementUnit.type
      if 1 < i then
        s = s .. " " .. delimiter .. " "
      end
      s = s .. unitNames[unitType + 1]
      if 1 < num then
        s = s .. " x" .. num
      end
    end
  end
  return s
end
function getListOfRequiredResearches(requirements, all)
  local delimiter = "/"
  if all then
    delimiter = "+"
  end
  local s = ""
  local sz = requirements.size
  for i = 1, sz do
    id = i - 1
    local requirementResearch = requirements["@id_id"]
    if 1 < i then
      s = s .. " " .. delimiter .. " "
    end
    s = s .. researchNames[requirementResearch + 1]
  end
  return s
end
function updateCostRequirements(requirements)
  local nodes = getNodes()
  local hasRequiredUnit = requirements.unit_size > 0
  local hasRequiredResearch = 0 < requirements.research_size
  if hasRequiredUnit or hasRequiredResearch then
    nodes["$18_visible"] = true
    if hasRequiredUnit then
      nodes["$467_visible"] = true
      nodes["$32_widget_text"] = getListOfRequiredUnits(requirements.unit, requirements.unitsAll)
    else
      nodes["$467_visible"] = false
    end
    if hasRequiredResearch then
      nodes["$543_visible"] = true
      nodes["$453_widget_setText"] = getListOfRequiredResearches(requirements.research, requirements.researchesAll)
    else
      nodes["$543_visible"] = false
    end
  else
    nodes["$18_visible"] = false
  end
end
function searchUnit(scene, faction, tags)
  scene.searchUnit = {
    0,
    0,
    1000000000,
    faction,
    tags
  }
  return _ENV["$lastResult"]
end
function getHQ(scene, faction)
  return searchUnit(scene, faction, 32)
end
function isAgeUpgrade(upgrade)
  if 1 <= upgrade and upgrade <= 9 then
    return true
  end
  if 15 <= upgrade and upgrade <= 17 then
    return true
  end
  if upgrade == 59 then
    return true
  end
  if 61 <= upgrade and upgrade <= 73 then
    return true
  end
  if upgrade == 93 then
    return true
  end
  if 114 <= upgrade and upgrade <= 116 or upgrade == 118 or upgrade == 121 or upgrade == 125 or upgrade == 126 or upgrade == 131 or upgrade == 135 or upgrade == 136 then
    return true
  end
  return false
end
function switchPlayerOff(player)
  if player >= #playersListPosition then
    return
  end
  local nodes = getNodes()
  local pos = playersListPosition[player + 1]
  if pos == nil then
    return
  end
  id = playersListStatus[pos]
  local n = nodes["@id"]
  n.widget_image = playerStatusOff
end
function prepareDiag(strips)
  assert(#timeline > 1)
  assert(1 < strips)
  local diag = getInterface().content_diagram_0
  diag.resize = {
    #timeline,
    strips
  }
  local colors = diag.colors
  for strip = 1, strips do
    local color = getPlayerColor(strip - 1)[1]
    id = strip - 1
    colors["@id_value"] = color
  end
end
function getTimelineValueGather(gather)
  return gather[1] + gather[2] * 1.5 + gather[3] * 5
end
function getTimelineValueEconomy(workers, workersSum, gather, gatherSum)
  local sum = 0
  local g = getTimelineValueGather(gather)
  if 0 < workers then
    sum = sum + workers / workersSum
  end
  if 0 < g then
    sum = sum + g / getTimelineValueGather(gatherSum)
  end
  return sum
end
function getTimelineValueWar(army, armySum, killed, killedSum)
  local sum = 0
  if 0 < army then
    sum = sum + army / armySum
  end
  if 0 < killed then
    sum = sum + killed / killedSum * 0.25
  end
  return sum
end
function getTimelineValueTotal(army, armySum, killed, killedSum, territory, territorySum, workers, workersSum, gather, gatherSum)
  local sum = getTimelineValueWar(army, armySum, killed, killedSum) + getTimelineValueEconomy(workers, workersSum, gather, gatherSum)
  if 0 < territory then
    sum = sum + territory / territorySum * 0.5
  end
  return sum
end
function updateTimelineTemplate(func)
  assert(#timeline > 1)
  local strips = getInterface().content_diagram_0_strips
  if timelineByTeams then
    prepareDiag(timelineTeamsCount)
    for tm = 1, #timeline do
      local slice = timeline[tm]
      local sum = {
        0,
        0,
        0,
        0,
        {
          0,
          0,
          0
        }
      }
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
      local strip = strips["@id"]
      local teamCounter = 0
      for teamId, teamData in pairs(timelineTeams) do
        local v = 0
        for plNum = 1, #teamData do
          local plId = math.floor(teamData[plNum])
          local facId = playersFactions[plId] + 1
          v = v + func(slice[1][facId], slice[2][facId], slice[3][facId], slice[4][facId], slice[5][facId], sum[1], sum[2], sum[3], sum[4], sum[5])
        end
        id = teamCounter
        assert(0 <= v)
        strip["@id_value"] = v
        teamCounter = teamCounter + 1
      end
    end
  else
    local playersCount = _ENV["$session_gameplay_gameplay_player_size"]
    prepareDiag(playersCount)
    for tm = 1, #timeline do
      local slice = timeline[tm]
      local sum = {
        0,
        0,
        0,
        0,
        {
          0,
          0,
          0
        }
      }
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
      local strip = strips["@id"]
      for plId = 1, playersCount do
        local facId = playersFactions[plId] + 1
        local v = func(slice[1][facId], slice[2][facId], slice[3][facId], slice[4][facId], slice[5][facId], sum[1], sum[2], sum[3], sum[4], sum[5])
        id = plId - 1
        if 0 <= v then
          strip["@id_value"] = v
        else
          strip["@id_value"] = 0
        end
      end
    end
  end
  getInterface().updateDiagram = 0
end
function updateTimeline()
  if timeline == nil or #timeline < 2 then
    return
  end
  local nodes = getNodes()
  nodes["$1249_disabled"] = false
  nodes["$1250_disabled"] = false
  nodes["$1251_disabled"] = false
  nodes["$1252_disabled"] = false
  nodes["$1248_disabled"] = false
  nodes["$1247_disabled"] = false
  nodes["$1244_disabled"] = false
  nodes["$1243_disabled"] = false
  nodes["$1241_disabled"] = false
  nodes["$1240_disabled"] = false
  nodes["$1242_disabled"] = false
  local func
  if timelineType == "all" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return getTimelineValueTotal(v1, s1, v2, s2, v3, s3, v4, s4, v5, s5)
    end
    nodes["$1249_disabled"] = true
  elseif timelineType == "war" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return getTimelineValueWar(v1, s1, v2, s2)
    end
    nodes["$1250_disabled"] = true
  elseif timelineType == "army" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return v1
    end
    nodes["$1251_disabled"] = true
  elseif timelineType == "killed" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return v2
    end
    nodes["$1252_disabled"] = true
  elseif timelineType == "territory" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return v3
    end
    nodes["$1248_disabled"] = true
  elseif timelineType == "economy" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return getTimelineValueEconomy(v4, s4, v5, s5)
    end
    nodes["$1247_disabled"] = true
  elseif timelineType == "workers" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return v4
    end
    nodes["$1244_disabled"] = true
  elseif timelineType == "gather" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return getTimelineValueGather(v5)
    end
    nodes["$1243_disabled"] = true
  elseif timelineType == "gather_food" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return v5[1]
    end
    nodes["$1241_disabled"] = true
  elseif timelineType == "gather_materials" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return v5[2]
    end
    nodes["$1240_disabled"] = true
  elseif timelineType == "gather_metal" then
    function func(v1, v2, v3, v4, v5, s1, s2, s3, s4, s5)
      return v5[3]
    end
    nodes["$1242_disabled"] = true
  end
  assert(func ~= nil)
  updateTimelineTemplate(func)
end
function prepareTimeline()
  _ENV["$session_gameplay_gameplay_scripts_scripts_run"] = 6
  local storage = _ENV["$session_gameplay_gameplay_dataStorage"]
  timeline = fromJson(storage.pointsTimeline)
  if timeline == nil then
    return
  end
  local nodes = getNodes()
  local gameTime = #timeline * 30
  nodes["$1265_widget_text"] = toTimeStr(gameTime // 4)
  nodes["$1266_widget_text"] = toTimeStr(gameTime * 2 // 4)
  nodes["$1267_widget_text"] = toTimeStr(gameTime * 3 // 4)
  nodes["$1268_widget_text"] = toTimeStr(gameTime)
end
function switchMatchResultsTab(tab)
  local nodes = getNodes()
  if tab == "map" then
    nodes["$1139_visible"] = false
    nodes["$1150_visible"] = true
    nodes["$1161_visible"] = false
  else
    nodes["$1139_visible"] = teamMode and isModeReplay
    nodes["$1150_visible"] = false
    nodes["$1161_visible"] = true
    prepareTimeline()
    updateTimeline()
  end
end
function updateAttackWarnings()
  local vSession = _ENV["$session_visual"]
  local gameplay = _ENV["$session_gameplay_gameplay"]
  local nodes = getNodes()
  local scene = gameplay.scene_0
  local factions = vSession.faction
  local factionsSize = factions.size
  id = _ENV["$session_gameplay_controlledPlayer"]
  local facs = gameplay["player_@id_controlledFactions"]
  id = vSession.currentFaction
  local myRelations = scene["relation_@id"]
  local time = gameplay.time
  for i = 0, factionsSize - 1 do
    id = i
    local fact = vSession["faction_@id"]
    local lastDamageTime = fact.lastDamageTime
    local lastDamageFrom = fact.lastDamageFrom
    if 0 < lastDamageTime and lastDamageFrom ~= i then
      if facs["@id"] then
        lastDamageTimeMe = lastDamageTime
        attackedPositionMe = {
          fact.lastDamagePosition_x,
          fact.lastDamagePosition_y
        }
      elseif myRelations["@id_value"] == 1 and 1 < lastDamageFrom then
        lastDamageTimeAlly = lastDamageTime
        attackedPositionAlly = {
          fact.lastDamagePosition_x,
          fact.lastDamagePosition_y
        }
      end
    end
  end
  local newVisibleAttackMe = time - lastDamageTimeMe < 7000
  local newVisibleAttackAlly = time - lastDamageTimeAlly < 7000
  if newVisibleAttackMe and not nodes["$949_visible"] then
    vSession.sound_playSound = {247, 0.07}
  end
  nodes["$949_visible"] = newVisibleAttackMe
  if newVisibleAttackAlly and not nodes["$1093_visible"] then
    vSession.sound_playSound = {259, 0.07}
  end
  nodes["$1093_visible"] = newVisibleAttackAlly
end
function showWorkCost(unitType, workId, x, y)
  id = workId
  local work = unitType["work_@id"]
  id = work.ability
  local ability = unitType["ability_@id"]
  local iconText = getUnitWorkIconText(unitTypeId, id)
  local costOrder = work.costOrder
  local costStart = work.costStart
  local costProcess = work.costProcess
  updateCostRequirements(ability.requirements)
  local nodes = getNodes()
  nodes["$221_visible"] = true
  local reserveTime = work.reserveTime
  if 0 < reserveTime then
    nodes["$219_widget_text"] = work.makeTime // 1000 .. " / " .. reserveTime // 1000
  else
    nodes["$219_widget_text"] = work.makeTime // 1000
  end
  local widget = nodes["$50"]
  local parent = nodes["@@widget"]
  widget.visible = true
  widget.localLeft = parent.screenLeft + x - widget.sizeX - 10
  widget.localTop = parent.screenTop + y - widget.sizeY - 10
  id = _ENV["$session_visual_currentFaction"]
  local gameplay = _ENV["$session_gameplay_gameplay"]
  local sFaction = gameplay["scene_0_faction_@id"]
  local gFaction = gameplay["faction_@id"]
  local resources = sFaction.treasury_resources
  local i0 = costOrder["$0"] + costStart["$0"]
  local i1 = costOrder["$1"] + costStart["$1"]
  local i2 = costOrder["$2"] + costStart["$2"]
  local c0 = i0 + costProcess["$0"]
  local c1 = i1 + costProcess["$1"]
  local c2 = i2 + costProcess["$2"]
  local r0 = resources["$0"]
  local r1 = resources["$1"]
  local r2 = resources["$2"]
  outCostDigit(nodes["$123"], nodes["$52"], i0, c0, r0, 1000)
  outCostDigit(nodes["$124"], nodes["$53"], i1, c1, r1, 1000)
  outCostDigit(nodes["$126"], nodes["$97"], i2, c2, r2, 1000)
  local abilityType = ability.type
  local abilityName, name, text
  nodes["$112_visible"] = false
  if abilityType == 0 then
    local object = ability.data_unit
    local limit = sFaction.supply_limitMaximized - sFaction.supply_sum
    id = object
    local workUnitType = gameplay["unitType_@id"]
    if workUnitType.supplyOn then
      local sup = workUnitType.supply_cost
      outCostDigit(nodes["$128"], nodes["$130"], sup, sup, limit, 10)
    else
      nodes["$128_visible"] = false
    end
    name = unitNames[object + 1]
    text = unitTexts[object + 1]
    abilityName = localize("<*workTraining>")
  elseif abilityType == 1 then
    local object = ability.data_research
    id = object
    local unavailable = gFaction["researchesUnavailable_@id"]
    nodes["$112_visible"] = unavailable
    nodes["$128_visible"] = false
    name = researchNames[object + 1]
    text = researchTexts[object + 1]
    abilityName = localize("<*workResearch>")
  elseif abilityType == 2 then
    local object = ability.data_unit
    nodes["$128_visible"] = false
    name = unitNames[object + 1]
    text = unitTexts[object + 1]
    abilityName = localize("<*workTransformation>")
  else
    id = ability.data_id
    local ec = unitType["createEnvs_@id"]
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
  if iconText ~= nil then
    name = iconText[2]
    text = iconText[3]
  end
  nodes["$72_visible"] = true
  nodes["$72_widget_text"] = abilityName
  nodes["$213_widget_setText"] = name
  nodes["$94_widget_text"] = text
end
function updateChatColors()
  if not _ENV["$interface_chat_scripts_ready"] then
    return
  end
  _ENV["$interface_chat_scripts_run"] = {
    10,
    "colors",
    toJson(playersColors)
  }
end
function isChatBanned(player)
  id = getFactionOfPlayer(player)
  if _ENV["$session_gameplay_gameplay_faction_@id_abilities_18"] then
    return true
  end
  if playersChatBan[player] == nil then
    return false
  end
  return playersChatBan[player]
end
function getSendResourcesPercent(fromEra, toEra)
  local d = math.abs(toEra - fromEra)
  local p = 20 + 10 * d
  return 100 - p
end
function updateSendResourcesValue(res, value)
  local nodes = getNodes()
  local sendText = {
    1449,
    1450,
    1455
  }
  local recieveText = {
    1456,
    1457,
    1458
  }
  local sliders = {
    1441,
    1446,
    1452
  }
  id = sliders[res + 1]
  local mx = nodes["@id_widget_max"]
  if value < 0 or value > mx then
    value = mx
  end
  id = sendText[res + 1]
  nodes["@id_widget_text_text"] = value
  id = sliders[res + 1]
  nodes["@id_widget_current"] = value
  id = recieveText[res + 1]
  nodes["@id_widget_text_text"] = math.floor(value * sendResourcesPercent // 100)
end
function updateSendResourcesWindow()
  local nodes = getNodes()
  local resources = _ENV["$session_gameplay_gameplay_scene_0_faction_@sendResourcesFromFaction_treasury_resources"]
  local r0 = math.floor(resources["$0"] / 1000)
  local r1 = math.floor(resources["$1"] / 1000)
  local r2 = math.floor(resources["$2"] / 1000)
  local myEra = getAgeFaction(sendResourcesFromFaction)[1]
  local targetEra = getAgeFaction(sendResourcesToFaction)[1]
  sendResourcesPercent = getSendResourcesPercent(myEra, targetEra)
  nodes["$1594_visible"] = 0 < r0
  nodes["$1441_widget_max"] = r0
  nodes["$1593_visible"] = 0 < r1
  nodes["$1446_widget_max"] = r1
  nodes["$1591_visible"] = 0 < r2
  nodes["$1452_widget_max"] = r2
  nodes["$1445_widget_text"] = 100 - sendResourcesPercent
  updateSendResourcesValue(0, nodes["$1441_widget_current"])
  updateSendResourcesValue(1, nodes["$1446_widget_current"])
  updateSendResourcesValue(2, nodes["$1452_widget_current"])
end
function showResourceSendingWindow(player)
  local nodes = getNodes()
  sendResourcesFromFaction = _ENV["$session_visual_currentFaction"]
  sendResourcesToFaction = getFactionOfPlayer(player)
  if getRelation(_ENV["$session_gameplay_gameplay_scene_0_relation"], sendResourcesFromFaction, sendResourcesToFaction) ~= 1 or sendResourcesFromFaction == sendResourcesToFaction then
    nodes["$1451_visible"] = false
    return
  end
  nodes["$1451_visible"] = true
  nodes["$1579_disabled"] = false
  nodes["$1274_visible"] = false
  nodes["$74_visible"] = false
  nodes["$1275_visible"] = false
  nodes["$1441_widget_current"] = 0
  nodes["$1449_widget_text_text"] = "0"
  nodes["$1456_widget_text_text"] = "0"
  nodes["$1446_widget_current"] = 0
  nodes["$1450_widget_text_text"] = "0"
  nodes["$1457_widget_text_text"] = "0"
  nodes["$1452_widget_current"] = 0
  nodes["$1455_widget_text_text"] = "0"
  nodes["$1458_widget_text_text"] = "0"
  updateSendResourcesWindow()
end
function showPlayerWindow(player)
  local nodes = getNodes()
  nodes["$873_visible"] = true
  nodes["$1484_visible"] = false
  nodes["$871_visible"] = false
  complaintPlayer = player
  writePlayerToWidget(complaintPlayer, nodes["$973_widget"])
  nodes["$874_widget_value"] = 0
  nodes["$868_widget_text_text"] = ""
  nodes["$1410_widget_checked"] = isChatBanned(player)
  showResourceSendingWindow(player)
end
function showTooltip(parentWidgetId, name, show, x, y)
  local nodes = getNodes()
  id = parentWidgetId
  local parent = nodes["@id"]
  local widget = nodes["$1279"]
  widget.visible = show
  widget.localLeft = parent.screenLeft + x - widget.sizeX - 15
  widget.localTop = parent.screenTop + y - widget.sizeY - 15
  nodes["$654_visible"] = false
  nodes["$1415_visible"] = false
  nodes["$1409_visible"] = false
  nodes["$1412_visible"] = false
  nodes["$556_visible"] = false
  nodes["$1239_visible"] = false
  nodes["$141_visible"] = false
  nodes["$898_visible"] = false
  nodes["$1280_visible"] = false
  nodes["$1281_visible"] = false
  nodes["$1282_visible"] = false
  nodes["$1284_visible"] = false
  nodes["$1286_visible"] = false
  nodes["$1323_visible"] = false
  nodes["$1324_visible"] = false
  if name == "dance" then
    nodes["$1239_visible"] = true
  elseif name == "formationTight" then
    nodes["$1412_visible"] = true
    widget.localLeft = parent.screenLeft + x
  elseif name == "formationSparse" then
    nodes["$1409_visible"] = true
    widget.localLeft = parent.screenLeft + x
  elseif name == "gatesopen" then
    nodes["$1323_visible"] = true
    widget.localLeft = parent.screenLeft + x
  elseif name == "gatesclose" then
    nodes["$1324_visible"] = true
    widget.localLeft = parent.screenLeft + x
  elseif name == "gatherLast" then
    nodes["$556_visible"] = true
  elseif name == "targetsmart" then
    nodes["$141_visible"] = true
  elseif name == "targetclosest" then
    nodes["$898_visible"] = true
  elseif name == "targetboth" then
    nodes["$1280_visible"] = true
  elseif name == "attackground" then
    nodes["$1281_visible"] = true
  elseif name == "stop" then
    nodes["$1282_visible"] = true
  elseif name == "moveattack" then
    nodes["$1284_visible"] = true
  elseif name == "unload" then
    nodes["$1286_visible"] = true
  elseif name == "abilityBomb" then
    nodes["$1415_visible"] = true
  elseif name == "abilityTorpedo" then
    nodes["$654_visible"] = true
  end
end
function sendOnMinimap(attack, minimapWidget)
  local sz = _ENV["$session_gameplay_gameplay_scene_0_landscape_size"]
  id = minimapWidget
  local n = getNodes()["@id"]
  xg = math.floor(sz.x * (1 - _ENV["$$x"] / n.sizeX))
  yg = math.floor(sz.y * (_ENV["$$y"] / n.sizeY))
  local vSession = _ENV["$session_visual"]
  local x = vSession["coordinateToVisual_@xg"]
  local y = vSession["coordinateToVisual_@yg"]
  if attack then
    vSession.script_scripts_run = {
      11,
      "x",
      x,
      "y",
      y,
      "xg",
      xg,
      "yg",
      yg,
      "direction",
      0,
      "attack",
      true
    }
  else
    vSession.script_scripts_run = {
      11,
      "x",
      x,
      "y",
      y,
      "xg",
      xg,
      "yg",
      yg,
      "direction",
      0
    }
  end
end
function onResize()
  local nodes = getNodes()
  local b = 0
  if nodes["$60_visible"] then
    b = nodes["$205_sizeY"]
  end
  if _ENV["$interface_scene_scripts_ready"] then
    _ENV["$interface_scene_scripts_run"] = {
      6,
      "bottom",
      b
    }
  end
end
function isUnitTypeBought(unitTypeId)
  local nationId = unitNations[unitTypeId + 1]
  if nationId == nil then
    return true
  end
  local ab = culturesAbilities[nationId]
  if ab == nil then
    return true
  end
  local currentFaction = _ENV["$session_visual_currentFaction"]
  id = currentFaction
  local abilities = _ENV["$session_gameplay_gameplay_faction_@id_abilities"]
  id = ab
  return abilities["@id"]
end
local nodes = getNodes()
playersListPosition = {}
fonts = {
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
nodes["$412_widget_text"] = getWidgetHotKey(nodes, buildButtons[1])
nodes["$413_widget_text"] = getWidgetHotKey(nodes, buildButtons[2])
nodes["$414_widget_text"] = getWidgetHotKey(nodes, buildButtons[3])
nodes["$415_widget_text"] = getWidgetHotKey(nodes, buildButtons[4])
nodes["$459_widget_text"] = getWidgetHotKey(nodes, buildButtons[5])
nodes["$464_widget_text"] = getWidgetHotKey(nodes, buildButtons[6])
nodes["$465_widget_text"] = getWidgetHotKey(nodes, buildButtons[7])
nodes["$485_widget_text"] = getWidgetHotKey(nodes, buildButtons[8])
nodes["$486_widget_text"] = getWidgetHotKey(nodes, buildButtons[9])
nodes["$492_widget_text"] = getWidgetHotKey(nodes, buildButtons[10])
nodes["$497_widget_text"] = getWidgetHotKey(nodes, buildButtons[11])
nodes["$498_widget_text"] = getWidgetHotKey(nodes, buildButtons[12])
nodes["$1371_widget_text"] = getWidgetHotKey(nodes, buildButtons[13])
nodes["$1372_widget_text"] = getWidgetHotKey(nodes, buildButtons[14])
nodes["$1373_widget_text"] = getWidgetHotKey(nodes, buildButtons[15])
nodes["$181_widget_text"] = getWidgetHotKey(nodes, workButtonBlocks[1])
nodes["$501_widget_text"] = getWidgetHotKey(nodes, workButtonBlocks[2])
nodes["$512_widget_text"] = getWidgetHotKey(nodes, workButtonBlocks[3])
nodes["$513_widget_text"] = getWidgetHotKey(nodes, workButtonBlocks[4])
nodes["$514_widget_text"] = getWidgetHotKey(nodes, workButtonBlocks[5])
nodes["$518_widget_text"] = getWidgetHotKey(nodes, workButtonBlocks[6])
nodes["$519_widget_text"] = getWidgetHotKey(nodes, workButtonBlocks[7])
nodes["$520_widget_text"] = getWidgetHotKey(nodes, workButtonBlocks[8])
nodes["$542_widget_text"] = getWidgetHotKey(nodes, workButtonBlocks[9])
nodes["$215_widget_text"] = getWidgetHotKey(nodes, 9)
nodes["$529_widget_text"] = getHotKey(29)
nodes["$595_widget_text"] = getHotKey(62)
nodes["$460_widget_text"] = getHotKey(107)
nodes["$1406_widget_text"] = getHotKey(109)
nodes["$157_widget_text"] = getWidgetHotKey(nodes, 239)
nodes["$951_widget_text"] = getWidgetHotKey(nodes, 945)
nodes["$120_widget_text"] = getWidgetHotKey(nodes, 119)
nodes["$395_widget_text"] = getWidgetHotKey(nodes, 183)
nodes["$1007_widget_text"] = getWidgetHotKey(nodes, 201)
nodes["$1105_widget_text"] = getWidgetHotKey(nodes, 456)
nodes["$1136_widget_text"] = getWidgetHotKey(nodes, 1133)
nodes["$1135_widget_text"] = getWidgetHotKey(nodes, 1134)
nodes["$234_widget_text"] = getWidgetHotKey(nodes, 217)
nodes["$214_widget_text"] = getWidgetHotKey(nodes, 206)
nodes["$902_widget_text"] = getWidgetHotKey(nodes, 901)
for i = 1, #transformationHotKey do
  id = transformationHotKey[i]
  local node = nodes["@id"]
  node.widget_text = getWidgetHotKey(nodes, transformationButton[i])
end
id = playersListStatus[1]
playerStatusOn = nodes["@id_widget_image"]
id = playersListStatus[2]
playerStatusOff = nodes["@id_widget_image"]
id = playersListStatus[3]
playerStatusMe = nodes["@id_widget_image"]
_ENV["$version"] = true
nodes["$163_widget_text"] = "Early Access - v" .. _ENV["$lastResult"]
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
editorMode = _ENV["$editor"]
HQx = 0
HQy = 0
HQid = nil
timelineType = "all"
lastDamageTimeMe = -100000
lastDamageTimeAlly = -100000
local nodes = getNodes()
local gSes = _ENV["$session_gameplay"]
local storage = gameplay.dataStorage
local streamMode = gSes.streamMode
isModeSingle = streamMode == 0
isModeNetwork = streamMode == 1
isModeReplay = streamMode == 2
nodes["$146_visible"] = not isModeReplay
nodes["$1149_visible"] = isModeReplay and storage.useTimeline ~= nil
nodes["$1151_visible"] = isModeReplay
nodes["$1139_widget_checked"] = false
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
      if editorMode and playerRankings ~= nil then
        playerNames[i] = "(" .. playerRankings[i] .. ") " .. playerNames[i]
      end
      _ENV["$detectLanguage"] = playerNames[i]
      local font = fonts[_ENV["$lastResult"]]
      assert(font ~= nil)
      table.insert(playerFonts, font)
    end
  end
end
local controlledPlayer = gSes.controlledPlayer
local vSession = _ENV["$session_visual"]
local currentFaction = vSession.currentFaction
local currentPlayer = getPlayerOfFaction(currentFaction)
local scene = gameplay.scene_0
local teams = scene.teamsCount
local factionsCount = scene.faction_size
teamMode = teams < factionsCount
updateTeamBlocks()
for pl, pos in pairs(playersListPosition) do
  if 40 < pos then
    break
  end
  id = playersListNames[pos]
  local n = nodes["@id"]
  n.visible = true
  writePlayerToWidget_(pl - 1, n.widget)
  id = playersListStatus[pos]
  local n = nodes["@id"]
  n.visible = true
  if pl - 1 == currentPlayer then
    n.widget_image = playerStatusMe
  else
    n.widget_image = playerStatusOn
  end
end
nodes["$975_visible"] = true
local sFactions = gameplay.scene_0_faction
local players = gameplay.player_size
timelineTeams = {}
timelineTeamsCount = 0
for plId = 1, players do
  local func = function(facId)
    id = facId
    local team = sFactions["@id_team"] + 1
    if timelineTeams[team] == nil then
      timelineTeams[team] = {plId}
    else
      table.insert(timelineTeams[team], plId)
    end
  end
  forEachPlayerFaction(plId - 1, func)
end
for _, _ in pairs(timelineTeams) do
  timelineTeamsCount = timelineTeamsCount + 1
end
nodes["$1389_visible"] = true
nodes["$830_visible"] = false
id = controlledPlayer
local eliminated = gameplay["player_@id_eliminated"]
if eliminated then
  nodes["$471_visible"] = true
  nodes["$230_visible"] = true
end
_ENV["$interface_create"] = {
  "/project/Tools/cameraMove",
  "cameraMove",
  interfaceScale,
  interfaceScale,
  "bordersScroll",
  toBool(_ENV["$storage_bordersScroll"])
}
_ENV["$interface_cameraMove_active"] = true
_ENV["$interface_cameraMove_priority"] = 500
_ENV["$interface_create"] = {
  "/project/Tools/cinematicCamera",
  "cinematic",
  interfaceScale,
  interfaceScale,
  "cbInterfaceHide",
  "session",
  "cbScriptHide",
  82
}
_ENV["$interface_cinematic_priority"] = 80
_ENV["$interface_create"] = {
  "/project/Tools/scene",
  "scene",
  interfaceScale,
  interfaceScale,
  "useFrame",
  true,
  "useSignals",
  true,
  "bottom",
  nodes["$205_sizeY"],
  "signalScript",
  37,
  "addSelectionHotKey",
  addSelectionHotKey,
  "envSignalTags",
  128
}
_ENV["$interface_scene_active"] = true
_ENV["$interface_scene_priority"] = -100
_ENV["$interface_create"] = {
  "/project/Tools/settings",
  "settings",
  interfaceScale,
  interfaceScale,
  "cbInterface",
  interfaceId,
  "cbScript",
  28,
  "healthBarAppDefault",
  2,
  "healthBarAppColored",
  1027,
  "dumpFileName",
  _ENV["$system_localFolder"] .. "/dump.dat"
}
_ENV["$interface_settings_priority"] = 90
id = currentFaction
local chatBanned = gameplay["faction_@id_abilities_18"]
local n = nodes["$11"]
_ENV["$interface_create"] = {
  "/project/Tools/chat",
  "chat",
  interfaceScale,
  interfaceScale,
  "banned",
  chatBanned,
  "playerNames",
  toJson(playerNames),
  "colors",
  toJson(playersColors),
  "cbInterface",
  interfaceId,
  "cbScript",
  73,
  "x",
  n.screenLeft,
  "y",
  n.screenTop,
  "sx",
  n.sizeX,
  "sy",
  n.sizeY,
  "horizontalAlign",
  n.horizontalAlign,
  "verticalAlign",
  n.verticalAlign,
  "sound",
  256
}
_ENV["$interface_chat_active"] = true
_ENV["$interface_chat_priority"] = 70
local n = nodes["$1"]
_ENV["$interface_create"] = {
  "/project/Tools/minimap",
  "minimap",
  interfaceScale,
  interfaceScale,
  "moveScript",
  11,
  "signalScript",
  37,
  "showTerritories",
  false,
  "x",
  n.screenLeft,
  "y",
  n.screenTop,
  "sx",
  n.sizeX,
  "sy",
  n.sizeY,
  "horizontalAlign",
  n.horizontalAlign,
  "verticalAlign",
  n.verticalAlign,
  "targetName",
  "objectsMinimap",
  "textureName",
  "minimapEnvs"
}
_ENV["$interface_minimap_active"] = true
_ENV["$interface_minimap_priority"] = 50
local n = nodes["$1609"]
_ENV["$interface_create"] = {
  "/project/Tools/minimap",
  "bigminimap",
  interfaceScale,
  interfaceScale,
  "moveScript",
  11,
  "signalScript",
  37,
  "showTerritories",
  false,
  "x",
  n.screenLeft,
  "y",
  n.screenTop,
  "sx",
  n.sizeX,
  "sy",
  n.sizeY,
  "horizontalAlign",
  n.horizontalAlign,
  "verticalAlign",
  n.verticalAlign,
  "targetName",
  "minimapObjectsBig",
  "textureName",
  "minimapEnvsBig"
}
_ENV["$interface_bigminimap_priority"] = 50
local data = {
  nationNames = nationNames,
  unitNames = unitNames,
  unitNations = unitNations
}
_ENV["$interface_create"] = {
  "/project/Tools/unitTypes",
  "sessionUnitTypes",
  interfaceScale,
  interfaceScale,
  "data",
  toJson(data)
}
_ENV["$interface_sessionUnitTypes_priority"] = 150
local n = nodes["$46"]
_ENV["$interface_create"] = {
  "/project/Tools/unitsSelectedGroup",
  "unitsSelectedGroup",
  interfaceScale,
  interfaceScale,
  "rightDirection",
  false,
  "x",
  n.screenLeft,
  "y",
  n.screenTop,
  "sx",
  n.sizeX,
  "sy",
  n.sizeY,
  "horizontalAlign",
  n.horizontalAlign,
  "verticalAlign",
  n.verticalAlign,
  "allFactionsAsMy",
  isModeReplay,
  "cbInterface",
  interfaceId,
  "cbScript",
  12
}
_ENV["$interface_unitsSelectedGroup_active"] = true
_ENV["$interface_unitsSelectedGroup_priority"] = 30
if isModeReplay then
  _ENV["$interface_create"] = {
    "/project/Tools/replay",
    "replay",
    interfaceScale,
    interfaceScale,
    "playerNames",
    toJson(playerNames)
  }
  _ENV["$interface_replay_active"] = true
  _ENV["$interface_replay_priority"] = 40
end
updateFactionsColors()
local kickRightsPlayer = tonumber(storage.kickRightsPlayer)
nodes["$378_visible"] = isModeNetwork and kickRightsPlayer ~= nil and kickRightsPlayer == controlledPlayer
nodes["$373_visible"] = storage.playersLocalId ~= nil
id = currentFaction
local abilities = gameplay["faction_@id_abilities"]
local workersDance = abilities.size > 1 and abilities["$1"]
local pikemanAgroDance = abilities.size > 4 and abilities["$4"]
unitCanDance = {
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
  [48] = pikemanAgroDance
}
