msemenu_debug_saves = {}
EVENT_TAGS = {
  MOMENT = "[Ev]",
  BOSS = "[Bo]",
  ITEM = "[It]",
  CUTSCENE = "[CS]"
}
msemenu_debug_events = {
  ["surface"] = {
    {
      "Planet arrival",
      "s000_surface",
      "surface",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Melee tutorial",
      "s000_surface",
      "surface/surface/meleetutorial",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Morph Ball",
      "s000_surface",
      "surface/surface/morphball",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.ITEM
      }
    },
    {
      "DNA receiver intro",
      "s000_surface",
      "surface/surface/dnareceiverintro",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Scan pulse",
      "s000_surface",
      "surface/surface/scanningpulse",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.ITEM
      }
    },
    {
      "Metroid Larva detection",
      "s000_surface",
      "surface/surface/metroidlarvadetection",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Alpha 1 intro",
      "s000_surface",
      "surface/surface/alpha1",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.BOSS
      }
    },
    {
      "Charge Beam",
      "s000_surface",
      "surface/surface/chargebeam",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "DNA receiver interaction",
      "s000_surface",
      "surface/surface/dnareceiverinteraction",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Teleport station intro",
      "s000_surface",
      "surface/surface/teleportstationintro",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Elevator to area 1",
      "s000_surface",
      "surface/surface/elevatortoarea1",
      {
        EVENT_TAGS.CUTSCENE
      }
    }
  },
  ["area1"] = {
    {
      "Area 1 entrance",
      "s010_area1",
      "area1",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Teleport station activation",
      "s010_area1",
      "area1/area1/teleport",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Bombs",
      "s010_area1",
      "area1/area1/bombs",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Ice Beam",
      "s010_area1",
      "area1/area1/icebeam",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Spider Ball",
      "s010_area1",
      "area1/area1/spiderball",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Alpha 4",
      "s010_area1",
      "area1/area1/alpha4",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 3",
      "s010_area1",
      "area1/area1/alpha3",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 2",
      "s010_area1",
      "area1/area1/alpha2",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 1",
      "s010_area1",
      "area1/area1/alpha1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "DNA receiver interaction",
      "s010_area1",
      "area1/area1/dnareceiverinteraction",
      {
        EVENT_TAGS.CUTSCENE
      }
    }
  },
  ["area2"] = {
    {
      "Alpha 2 Evolved",
      "s028_area2c",
      "area2/area2c/alpha2",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Lightning Armor",
      "s028_area2c",
      "area2/area2c/lightningarmor",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "First internal elevator",
      "s028_area2c",
      "area2/area2c/firstinternalelevator",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "First internal elevator entrance",
      "s020_area2",
      "area2/area2/firstinternalelevatorentrance",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Alpha 6",
      "s020_area2",
      "area2/area2/alpha6",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Arachnus",
      "s020_area2",
      "area2/area2/arachnus",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Spring Ball",
      "s020_area2",
      "area2/area2/springball",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Alpha 1 Evolved",
      "s020_area2",
      "area2/area2/alpha1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Varia Suit",
      "s025_area2b",
      "area2/area2b/variasuit",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.ITEM
      }
    },
    {
      "Gamma 1 intro",
      "s025_area2b",
      "area2/area2b/gamma1",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.BOSS
      }
    },
    {
      "High Jump Boots",
      "s025_area2b",
      "area2/area2b/highjumpboots",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Alpha 7",
      "s020_area2",
      "area2/area2/alpha7",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 3",
      "s020_area2",
      "area2/area2/alpha3",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 4",
      "s020_area2",
      "area2/area2/alpha4",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 5 Evolved",
      "s020_area2",
      "area2/area2/alpha5",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "DNA Receiver interaction",
      "s028_area2c",
      "area2/area2c/dnareceiverinteraction",
      {
        EVENT_TAGS.CUTSCENE
      }
    }
  },
  ["area3"] = {
    {
      "Beam Burst",
      "s030_area3",
      "area3/area3/weaponboost",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Grapple Beam",
      "s030_area3",
      "area3/area3/grapplebeam",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Gamma 5",
      "s030_area3",
      "area3/area3/gamma5",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Gamma 6",
      "s030_area3c",
      "area3/area3c/gamma6",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Gamma 7",
      "s030_area3c",
      "area3/area3c/gamma7",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 1",
      "s030_area3c",
      "area3/area3c/alpha1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 2 Evolved",
      "s030_area3b",
      "area3/area3b/alpha2",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Gamma 1",
      "s030_area3b",
      "area3/area3b/gamma1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 3 Evolved",
      "s030_area3b",
      "area3/area3b/alpha3",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Gamma 3 Evolved",
      "s030_area3b",
      "area3/area3b/gamma3",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Manic Miner activation",
      "s033_area3b",
      "area3/area3b/manicmineractivation",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Gamma 4 Evolved",
      "s030_area3b",
      "area3/area3b/gamma4",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Gamma 2",
      "s030_area3b",
      "area3/area3b/gamma2",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "DNA receiver interaction",
      "s030_area3",
      "area3/area3/dnareceiverinteraction",
      {
        EVENT_TAGS.CUTSCENE
      }
    }
  },
  ["area4-5"] = {
    {
      "Spazer Beam",
      "s040_area4",
      "area4-5/area4/widebeam",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Gamma 1",
      "s040_area4",
      "area4-5/area4/gamma1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "DNA receiver interaction 1",
      "s040_area4",
      "area4-5/area4/dnareceiverinteraction1",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Broken chozo statue",
      "s050_area5",
      "area4-5/area5/brokenchozostatue",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Manic Miner chase",
      "s050_area5",
      "area4-5/area5/manicminerchase",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.BOSS
      }
    },
    {
      "Space Jump",
      "s050_area5",
      "area4-5/area5/spacejump",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Zeta 1 intro",
      "s050_area5",
      "area4-5/area5/zeta1",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.BOSS
      }
    },
    {
      "Super Missile",
      "s050_area5",
      "area4-5/area5/supermissile",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Gamma 2 Evolved",
      "s050_area5",
      "area4-5/area5/gamma2",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Alpha 1 Evolved",
      "s040_area4",
      "area4-5/area4/alpha1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "DNA receiver interaction 2",
      "s040_area4",
      "area4-5/area4/dnareceiverinteraction2",
      {
        EVENT_TAGS.CUTSCENE
      }
    }
  },
  ["area6"] = {
    {
      "Alpha 1 Evolved",
      "s060_area6",
      "area6/area6/alpha1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Phase Drift",
      "s060_area6",
      "area6/area6/phasedisplacement",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Gamma 1 Evolved",
      "s067_area6c",
      "area6/area6c/gamma1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Zeta 2 Evolved",
      "s067_area6c",
      "area6/area6c/zeta2",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Gravity Suit",
      "s067_area6c",
      "area6/area6c/gravitysuit",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.ITEM
      }
    },
    {
      "Screw attack",
      "s065_area6b",
      "area6/area6b/screwattack",
      {
        EVENT_TAGS.ITEM
      }
    },
    {
      "Zeta 1",
      "s065_area6b",
      "area6/area6b/zeta1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Gamma 2 Evolved",
      "s065_area6b",
      "area6/area6b/gamma2",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Gamma 3",
      "s065_area6b",
      "area6/area6b/gamma3",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Gamma 4 Evolved",
      "s060_area6",
      "area6/area6/gamma4",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "DNA receiver interaction",
      "s060_area6",
      "area6/area6/dnareceiverinteraction",
      {
        EVENT_TAGS.CUTSCENE
      }
    }
  },
  ["area7-8"] = {
    {
      "Manic Miner item theft",
      "s070_area7",
      "area7-8/area7/manicmineritemtheft",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Zeta 1",
      "s070_area7",
      "area7-8/area7/zeta1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "DNA receiver interaction 1",
      "s070_area7",
      "area7-8/area7/dnareceiverinteraction1",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Omega 1 intro",
      "s070_area7",
      "area7-8/area7/omega1",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.BOSS
      }
    },
    {
      "DNA receiver interaction 2",
      "s070_area7",
      "area7-8/area7/dnareceiverinteraction2",
      {
        EVENT_TAGS.CUTSCENE
      }
    },
    {
      "Manic Miner battle",
      "s070_area7",
      "area7-8/area7/manicminerbot",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.BOSS
      }
    },
    {
      "Power Bomb",
      "s070_area7",
      "area7-8/area7/powerbomb",
      {
        EVENT_TAGS.ITEM
      }
    }
  },
  ["area9"] = {
    {
      "Omega 1",
      "s090_area9",
      "area9/area9/omega1",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Omega 3",
      "s090_area9",
      "area9/area9/omega3",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "Omega 2 Evolved",
      "s090_area9",
      "area9/area9/omega2",
      {
        EVENT_TAGS.BOSS
      }
    },
    {
      "DNA receiver interaction",
      "s090_area9",
      "area9/area9/dnareceiverinteraction",
      {
        EVENT_TAGS.CUTSCENE
      }
    }
  },
  ["area10"] = {
    {
      "Larva Metroid zone",
      "s100_area10",
      "area10/area10/metroid_hatchling_area",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.BOSS
      }
    },
    {
      "Queen",
      "s100_area10",
      "area10/area10/queen",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.BOSS
      }
    },
    {
      "Metroid hatchling encounter",
      "s100_area10",
      "area10/area10/metroidhatchlingencounter",
      {
        EVENT_TAGS.CUTSCENE,
        EVENT_TAGS.ITEM
      }
    }
  },
  ["surfaceb"] = {
    {
      "Ridley",
      "s110_surfaceb",
      "surfaceb/surfaceb/ridley",
      {
        EVENT_TAGS.BOSS
      }
    }
  }
}
msemenu_debug_locations = {
  s000_surface = {
    {
      "Tutorial melee",
      {
        3909.57,
        1226.6,
        0
      }
    },
    {
      "Morph Ball statue",
      {
        8999.18,
        -3973.4,
        0
      }
    },
    {
      "Save Station",
      {
        11896.65,
        -5173.4,
        0
      }
    },
    {
      "DNA receiver",
      {
        7733.11,
        -5273.4,
        0
      }
    },
    {
      "Bestowal statue",
      {
        1011.32,
        -5073.39,
        0
      }
    },
    {
      "Super Missile door",
      {
        -2977.5,
        -6373.4,
        0
      }
    },
    {
      "Metroid Alpha",
      {
        -4717.72,
        -10258,
        0
      }
    },
    {
      "Charge Beam statue",
      {
        1157.32,
        -9373.4,
        0
      }
    },
    {
      "Teleport",
      {
        8155.3,
        -8073.4,
        0
      }
    },
    {
      "Elevator to area 1",
      {
        7225.92,
        -10473.4,
        0
      }
    }
  },
  s010_area1 = {
    {
      "Save Station",
      {
        -19770.79,
        1626.6,
        0
      }
    },
    {
      "Save Station II",
      {
        -3397,
        2526.6,
        0
      }
    },
    {
      "Save Station III",
      {
        1746.67,
        7726.6,
        0
      }
    },
    {
      "Bombs",
      {
        258.6,
        4726.6,
        0
      }
    },
    {
      "Ice Beam",
      {
        6518.77,
        2526.6,
        0
      }
    },
    {
      "Spider Ball",
      {
        13900.28,
        4326.6,
        0
      }
    },
    {
      "Alpha 4",
      {
        13368.32,
        9026.6,
        0
      }
    },
    {
      "Alpha 3",
      {
        7450.34,
        1426.6,
        0
      }
    },
    {
      "Alpha 2",
      {
        2682.04,
        -373.4,
        0
      }
    },
    {
      "Alpha 1",
      {
        -474.15,
        -273.4,
        0
      }
    },
    {
      "Teleport",
      {
        6615.59,
        6326.6,
        0
      }
    },
    {
      "DNA receiver",
      {
        -12755.77,
        1130.75,
        0
      }
    },
    {
      "Recharge statues (ceiling)",
      {
        6451.29,
        13226.6,
        0
      }
    },
    {
      "Energy Tank",
      {
        11046.65,
        4226.6,
        0
      }
    }
  },
  s028_area2c = {
    {
      "Elevator to area 1",
      {
        21262.29,
        -1373.4,
        0
      }
    },
    {
      "Save Station",
      {
        20324.63,
        -3068.12,
        0
      }
    },
    {
      "DNA Receiver",
      {
        21432.04,
        -4173.4,
        0
      }
    },
    {
      "Elevator to area 3",
      {
        22787.81,
        -9373.4,
        0
      }
    },
    {
      "Teleport",
      {
        15730.09,
        -2773.4,
        0
      }
    },
    {
      "Alpha 2",
      {
        14164.18,
        -773.4,
        0
      }
    },
    {
      "Bestowal",
      {
        6922.97,
        -2273.4,
        0
      }
    },
    {
      "Fleech Swarm",
      {
        12784.32,
        -2173.4,
        0
      }
    },
    {
      "Elevator to area 2",
      {
        7610.5,
        226.6,
        0
      }
    }
  },
  s020_area2 = {
    {
      "Elevator to area 2C",
      {
        7700,
        826.6,
        0
      }
    },
    {
      "Alpha 6",
      {
        -1622.03,
        3326.6,
        0
      }
    },
    {
      "Save Station",
      {
        -4681.26,
        3226.6,
        0
      }
    },
    {
      "Arachnus",
      {
        -476.22,
        5026.6,
        0
      }
    },
    {
      "Alpha 1 Super Missile door",
      {
        -7366.82,
        6526.6,
        0
      }
    },
    {
      "Teleport",
      {
        -8968.15,
        2426.6,
        0
      }
    },
    {
      "Elevator to area 2B",
      {
        -10600.85,
        2026.6,
        0
      }
    },
    {
      "Energy Tank",
      {
        -14811.72,
        -2573.4,
        0
      }
    },
    {
      "Alpha 3",
      {
        -13153.14,
        -5973.4,
        0
      }
    },
    {
      "Alpha 7",
      {
        -7362.49,
        -5973.4,
        0
      }
    },
    {
      "Alpha 4 (Heat)",
      {
        -21506.56,
        -7773.4,
        0
      }
    },
    {
      "Alpha 5 (Heat)",
      {
        -7591.29,
        -7773.4,
        0
      }
    }
  },
  s025_area2b = {
    {
      "Elevator to area 2",
      {
        -10064.07,
        26.6,
        0
      }
    },
    {
      "Save Station",
      {
        -8284.49,
        -173.4,
        0
      }
    },
    {
      "Varia Suit statue",
      {
        -4918.06,
        -473.4,
        0
      }
    },
    {
      "Power Bomb door",
      {
        -6050.73,
        -3773.4,
        0
      }
    },
    {
      "Gamma 1 (intro)",
      {
        -5939.43,
        -4373.4,
        0
      }
    },
    {
      "Wave Beam statue",
      {
        -3092.36,
        1026.6,
        0
      }
    },
    {
      "Teleport",
      {
        3430.6,
        -3271.31,
        0
      }
    },
    {
      "Fleech Swarm",
      {
        1356.92,
        -5973.4,
        0
      }
    },
    {
      "Super Missile door",
      {
        2724.7,
        -6573.4,
        0
      }
    },
    {
      "High Jump Boots statue",
      {
        4985.34,
        -7973.4,
        0
      }
    },
    {
      "Energy Tank",
      {
        -2003.18,
        -7873.4,
        0
      }
    }
  },
  s030_area3 = {
    {
      "Elevator to area 2C",
      {
        -25061.25,
        3926.6,
        0
      }
    },
    {
      "DNA receiver",
      {
        -22253.86,
        2926.6,
        0
      }
    },
    {
      "Save Station",
      {
        -20358,
        4326.6,
        0
      }
    },
    {
      "Bestowal Energy Wave",
      {
        -18224.06,
        8826.6,
        0
      }
    },
    {
      "Elevator to area 3B",
      {
        -11075.46,
        8229.76,
        0
      }
    },
    {
      "Teleport",
      {
        -6062.87,
        8626.6,
        0
      }
    },
    {
      "Grapple Beam statue",
      {
        1451.04,
        13126.6,
        0
      }
    },
    {
      "Save Station II",
      {
        3216.5,
        16626.6,
        0
      }
    },
    {
      "Elevator to area 3C",
      {
        7577.17,
        16726.6,
        0
      }
    },
    {
      "Teleport II",
      {
        10320.46,
        7133.43,
        0
      }
    },
    {
      "Gamma 5C",
      {
        14492.04,
        15726.6,
        0
      }
    },
    {
      "Gamma 5A",
      {
        18440.66,
        15126.6,
        0
      }
    },
    {
      "Gamma 5B",
      {
        17781.4,
        13126.6,
        0
      }
    }
  },
  s033_area3b = {
    {
      "Elevator to area 3",
      {
        -11800,
        6526.6,
        0
      }
    },
    {
      "Alpha 2",
      {
        -13853.21,
        926.6,
        0
      }
    },
    {
      "Gamma 1",
      {
        -11032.74,
        -1473.4,
        0
      }
    },
    {
      "Teleport",
      {
        -8983.27,
        -2973.4,
        0
      }
    },
    {
      "Save Station",
      {
        -10576.04,
        -6173.4,
        0
      }
    },
    {
      "Gamma 2",
      {
        -6627.3,
        -5873.4,
        0
      }
    },
    {
      "Save Station II",
      {
        -1792.78,
        1026.6,
        0
      }
    },
    {
      "Elevator to area 3C",
      {
        7226.33,
        132.15,
        0
      }
    },
    {
      "Energy Tank",
      {
        2690.91,
        -7773.4,
        0
      }
    },
    {
      "Gamma 4C",
      {
        -391.2,
        -17573.4,
        0
      }
    },
    {
      "Gamma 4B",
      {
        -2345.88,
        -17973.4,
        0
      }
    },
    {
      "Gamma 4A",
      {
        -4370.33,
        -16673.4,
        0
      }
    },
    {
      "Teleport II",
      {
        -700.77,
        -10058.65,
        0
      }
    },
    {
      "Oil Wall to Energy Tank",
      {
        -842,
        -3073.4,
        0
      }
    }
  },
  s036_area3c = {
    {
      "Elevator to area 3",
      {
        7349.7,
        15126.6,
        0
      }
    },
    {
      "Special Energy Tank",
      {
        7042,
        13426.6,
        0
      }
    },
    {
      "Super Missile Door",
      {
        7913.48,
        10526.6,
        0
      }
    },
    {
      "Teleport",
      {
        2532.57,
        7227.34,
        0
      }
    },
    {
      "Gamma 6",
      {
        6245.32,
        5026.6,
        0
      }
    },
    {
      "Save Station",
      {
        7705.59,
        3626.6,
        0
      }
    },
    {
      "Elevator to area 3B",
      {
        7160.45,
        2326.6,
        0
      }
    },
    {
      "Fleech Swarm",
      {
        13058.16,
        3226.6,
        0
      }
    },
    {
      "Alpha 1",
      {
        18458,
        4826.6,
        0
      }
    },
    {
      "Gamma 7B",
      {
        6569.75,
        3226.6,
        0
      }
    },
    {
      "Gamma 7A",
      {
        1994.63,
        2426.6,
        0
      }
    },
    {
      "Power Bomb Door",
      {
        -1722.16,
        3026.6,
        0
      }
    }
  },
  s040_area4 = {
    {
      "Elevator to area 3",
      {
        11318.03,
        -2073.4,
        0
      }
    },
    {
      "DNA receiver",
      {
        10378.92,
        -3766.88,
        0
      }
    },
    {
      "Save Station",
      {
        6553.01,
        -1873.4,
        0
      }
    },
    {
      "Teleport",
      {
        3830.61,
        -2071.32,
        0
      }
    },
    {
      "Plasma Door and Fleech Swarm",
      {
        7126.89,
        4326.6,
        -1.4
      }
    },
    {
      "Fleech Swarm",
      {
        4078.58,
        3282.69,
        0
      }
    },
    {
      "Spazer Beam statue",
      {
        -4322.98,
        -3673.4,
        0
      }
    },
    {
      "Gamma 1A",
      {
        1494.82,
        4326.6,
        0
      }
    },
    {
      "Gamma 1B",
      {
        -4047.26,
        2426.6,
        -1.4
      }
    },
    {
      "Gamma 1CNOTYET",
      {}
    },
    {
      "Alpha 1",
      {
        4075.62,
        -6173.4,
        0
      }
    },
    {
      "Elevator to area 5",
      {
        18033.63,
        -4373.4,
        0
      }
    },
    {
      "DNA receiver II",
      {
        14737.25,
        -6173.4,
        0
      }
    },
    {
      "Elevator to area 6",
      {
        13248.06,
        -8573.4,
        0
      }
    }
  },
  s050_area5 = {
    {
      "Elevator to area 4",
      {
        -5397.14,
        -4973.4,
        0
      }
    },
    {
      "Save Station",
      {
        -7228.86,
        -3673.4,
        0
      }
    },
    {
      "Space Jump",
      {
        12480.35,
        -8473.4,
        0
      }
    },
    {
      "Special Energy Tank",
      {
        4342,
        -1973.4,
        0
      }
    },
    {
      "Super Missile Door",
      {
        158.26,
        626.6,
        0
      }
    },
    {
      "Energy Tank",
      {
        -2698.16,
        5726.6,
        0
      }
    },
    {
      "Zeta intro",
      {
        -8562.11,
        4016.24,
        0
      }
    },
    {
      "Power Bomb power-up",
      {
        3142.31,
        3226.6,
        0
      }
    },
    {
      "Plasma Beam Door",
      {
        9.86,
        5426.6,
        0
      }
    },
    {
      "Teleport",
      {
        -846.12,
        -173.4,
        0
      }
    },
    {
      "Super Missile statue",
      {
        2116.51,
        6026.6,
        0
      }
    },
    {
      "Gamma 2B",
      {
        6013.51,
        6726.6,
        0
      }
    },
    {
      "Gamma 2C",
      {
        12096.48,
        7626.6,
        0
      }
    },
    {
      "Gamma 2A",
      {
        14662.73,
        8926.6,
        0
      }
    }
  },
  s060_area6 = {
    {
      "Elevator to area 4",
      {
        20390.82,
        -7664.68,
        0
      }
    },
    {
      "DNA receiver",
      {
        15334.51,
        -8473.4,
        0
      }
    },
    {
      "Save Station",
      {
        12394.89,
        -8364.01,
        0
      }
    },
    {
      "Teleport",
      {
        5919.64,
        -7871.37,
        0
      }
    },
    {
      "Bestowal Phase Displacement",
      {
        -4558.99,
        -6973.4,
        0
      }
    },
    {
      "Save Station II",
      {
        -6809.55,
        -5373.4,
        0
      }
    },
    {
      "Elevator to area 6C",
      {
        -3260.39,
        -1273.4,
        0
      }
    }
  },
  s067_area6c = {
    {
      "Elevator to 6 right",
      {
        -2847.11,
        -473.4,
        0
      }
    },
    {
      "Gamma 1",
      {
        -21803.55,
        4826.6,
        0
      }
    },
    {
      "Save Station",
      {
        -10633.43,
        1026.6,
        0
      }
    },
    {
      "Elevator to 6 left",
      {
        -11801.19,
        426.6,
        0
      }
    },
    {
      "Teleport",
      {
        -6976.58,
        4632.38,
        0
      }
    },
    {
      "Plasma Beam statue",
      {
        -4696.87,
        2026.6,
        0
      }
    },
    {
      "Elevator to 6B left",
      {
        -8770.54,
        9326.6,
        0
      }
    },
    {
      "Zeta 2",
      {
        13589.08,
        2326.6,
        0
      }
    },
    {
      "Gravity Suit statue",
      {
        -4566.33,
        7526.6,
        0
      }
    },
    {
      "Multiple Doors Corridor",
      {
        -4573.46,
        11826.6,
        0
      }
    },
    {
      "Elevator to 6B right",
      {
        -1866.51,
        4326.6,
        0
      }
    },
    {
      "Special Energy Tank",
      {
        9342,
        5326.6,
        0
      }
    }
  },
  s065_area6b = {
    {
      "Elevator to 6C right",
      {
        3742.7,
        -7573.4,
        0
      }
    },
    {
      "Save Station",
      {
        3742.7,
        -7573.4,
        0
      }
    },
    {
      "Plasma Beam Door",
      {
        2171.94,
        -173.37,
        0
      }
    },
    {
      "Screw attack statue",
      {
        -121.39,
        2326.6,
        0
      }
    },
    {
      "Zeta 1",
      {
        -1661.37,
        -573.39,
        0
      }
    },
    {
      "Power Bomb Door",
      {
        5071.16,
        26.64,
        0
      }
    },
    {
      "Teleport",
      {
        -7078.47,
        2426.64,
        0
      }
    },
    {
      "Save Station left",
      {
        -7078.47,
        2426.64,
        0
      }
    },
    {
      "Elevator to 6C left",
      {
        -4324.41,
        -2668.17,
        0
      }
    },
    {
      "Gamma 2",
      {
        7242.17,
        7026.64,
        0
      }
    },
    {
      "Gamma 3",
      {
        8127.46,
        -4273.4,
        0
      }
    }
  },
  s070_area7 = {
    {
      "Elevator to Area 6",
      {
        19148.99,
        -3873.4,
        0
      }
    },
    {
      "Save Station",
      {
        7380.6,
        -1871.31,
        0
      }
    },
    {
      "Save Station II",
      {}
    },
    {
      "Save Station III",
      {
        6419.37,
        2426.6,
        0
      }
    },
    {
      "Save Station IV",
      {
        -9639.76,
        -6772.28,
        0
      }
    },
    {
      "DNA receiver",
      {
        -861.62,
        2126.6,
        0
      }
    },
    {
      "DNA receiver II",
      {
        5548.5,
        -1173.4,
        0
      }
    },
    {
      "Teleport",
      {
        -5166.43,
        -8173.4,
        0
      }
    },
    {
      "Zeta 1",
      {
        3558,
        7626.6,
        0
      }
    },
    {
      "Omega 1 intro",
      {
        2638.38,
        7626.6,
        0
      }
    },
    {
      "FleechSwarmNOTYET",
      {}
    },
    {
      "Missile Door",
      {
        -9468.24,
        6926.6,
        0
      }
    },
    {
      "Wave Beam Door",
      {
        -3215.23,
        -7973.4,
        0
      }
    },
    {
      "Spazer Beam Door",
      {
        -2248.65,
        10826.6,
        0
      }
    },
    {
      "Power Bomb Door",
      {
        -1690.95,
        10126.6,
        0
      }
    },
    {
      "Power Bomb Door II",
      {
        -20723.32,
        -4873.4,
        0
      }
    },
    {
      "Special Energy Tank",
      {
        -4785.37,
        9326.6,
        0
      }
    },
    {
      "Power Bomb",
      {
        -18120.8,
        -7573.4,
        0
      }
    },
    {
      "Elevator to Area 9",
      {
        -13167.73,
        -4373.4,
        0
      }
    }
  },
  s090_area9 = {
    {
      "Elevator to Area 7-8",
      {
        -2479.18,
        -9573.4,
        0
      }
    },
    {
      "Save Station",
      {
        -11869.6,
        -9571.19,
        0
      }
    },
    {
      "Save Station II",
      {
        -19314.18,
        -665.17,
        0
      }
    },
    {
      "Save Station III",
      {
        -6501.31,
        6226.6,
        0
      }
    },
    {
      "DNA receiver",
      {
        -16574.08,
        -9068.71,
        0
      }
    },
    {
      "Teleport",
      {
        -18576.87,
        -5073.4,
        0
      }
    },
    {
      "Teleport II",
      {
        -10258,
        -2673.4,
        0
      }
    },
    {
      "Omega 1",
      {
        -24644.23,
        6926.6,
        0
      }
    },
    {
      "Omega 2",
      {
        -1242,
        -3473.4,
        0
      }
    },
    {
      "Omega 3",
      {
        -15361.61,
        -1773.4,
        0
      }
    },
    {
      "Special Enegy Tank",
      {
        -13248,
        7726.6,
        0
      }
    },
    {
      "Fleech Swarm",
      {}
    },
    {
      "Plasma Beam Door",
      {
        -7908.07,
        1526.6,
        0
      }
    },
    {
      "Spazer Beam Door",
      {
        -2055.93,
        -3473.4,
        0
      }
    },
    {
      "Spazer Beam Door II",
      {
        -10258.03,
        -3073.4,
        0
      }
    },
    {
      "Elevator to Area 10",
      {
        -30002.89,
        -4073.4,
        0
      }
    }
  },
  s100_area10 = {
    {
      "Elevator to Area 9",
      {
        -1241.15,
        -18173.4,
        0
      }
    },
    {
      "Fleech SwarmNOTYET",
      {}
    },
    {
      "Fleech Swarm IINOTYET",
      {}
    },
    {
      "Save Station",
      {
        -399.62,
        -2273.4,
        0
      }
    },
    {
      "Supermissile door",
      {
        -3323.58,
        8226.6,
        0
      }
    },
    {
      "Teleport",
      {
        -4900,
        7834.58,
        0
      }
    },
    {
      "Metroid Larva Area",
      {
        -1927.92,
        9626.6,
        0
      }
    },
    {
      "Queen",
      {
        16.81,
        12526.6,
        0
      }
    },
    {
      "Elevator to SurfaceB",
      {
        6500,
        26834.58,
        0
      }
    }
  }
}
