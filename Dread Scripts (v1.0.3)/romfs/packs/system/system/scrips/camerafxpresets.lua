CameraFXPresets = {}
CameraFXPresets.tPresets = {
  { sID = "STEADY_CAMERA", sClass = "CCameraFX_SteadyCamera", tParams = {fMinAngleXAxis = "0.0001",fMaxAngleXAxis = "0.001",fMinAngleYAxis = "0.0002",fMaxAngleYAxis = "0.002",sFunction = "s" }},
  { sID = "DAMAGE_STRENGTH_HARD", sClass = "CCameraFX_RotationShake", tParams = {
                                                                                 fTime = "0.55",
                                                                                 fAmplitude = "0.45",
                                                                                 sFunction = "SqooooooszI"
                                                                                }
  },
  { sID = "SPRSHOT_WEAPON_BOOST", sClass = "CCameraFX_RandShake", tParams = {fTime = "0.2", fDistance = "8.0"} },
  { sID = "HYPER_BEAM_COMMANDERX", sClass = "CCameraFX_RandShake", tParams = {fTime = "-1.0", fDistance = "6.0"} },
  { sID = "HYPER_BEAM_CHARGE_COMMANDERX", sClass = "CCameraFX_RandShake", tParams = {fTime = "-1.0", fDistance = "1.0"} },
  { sID = "MELEE", sClass = "CCameraFX_RandShake", tParams = {fTime = "0.200", fDistance = "16.0"} },
  { sID = "MELEE_02", sClass = "CCameraFX_RandShake", tParams = { fTime = "0.300", fDistance = "8.0", sFunction = "aia" } },
  { sID = "MELEE_03", sClass = "CCameraFX_RandShake", tParams = { fTime = "0.400", fDistance = "10.0", sFunction = "aia"} },
  { sID = "MELEE_04", sClass = "CCameraFX_RandShake", tParams = { fTime = "0.900", fDistance = "10.0", sFunction = "aia"} },
  { sID = "MELEE_05", sClass = "CCameraFX_RandShake", tParams = { fTime = "0.500", fDistance = "10.0", sFunction = "aia"} },
  { sID = "MELEE_COUNTER", sClass = "CCameraFX_RandShake", tParams = {fTime = "0.2", fDistance = "10.0"} }, 
  { sID = "MELEE_KILL", sClass = "CCameraFX_RandShake", tParams = {fTime = "0.300", fDistance = "16.0"} },
  { sID = "MELEE_BLOCKED_WITH_IMPACT", sClass = "CCameraFX_RandShake", tParams = {fTime = "0.1", fDistance = "5.0"}},
  { sID = "IMPACT_LOW", sClass = "CCameraFX_RotationShake", tParams = {
                                                                       fTime = "0.15",
                                                                       fAmplitude = "0.15",
                                                                       sFunction = "SqooooooszI"
                                                                      }
  },
  { sID = "IMPACT_MEDIUM",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                fTime = "0.25",
                                                                                fAmplitude = "0.25",
                                                                                sFunction = "SqooooooszI"
                                                                               }
  },
  { sID = "IMPACT_HARD",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                              fTime = "0.35",
                                                                              fAmplitude = "0.35",
                                                                              sFunction = "SqooooooszI"
                                                                             }
  },
  { sID = "IMPACT_SUPER_MISSILE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.2", fDistance = "3.5"}  },
  { sID = "IMPACT_ICE_MISSILE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.1", fDistance = "5.0"}  },
  { sID = "IMPACT_SP_MISSILE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.1", fDistance = "5.0"}  },
  { sID = "IMPACT_LOCKON",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.35", fDistance = "2.0"}  },
  { sID = "BLOCK_SYNCHRO",    sClass = "CCameraFX_RandShake",    tParams = {fDistance = "2.5", fTwist = "0.01"}  },
  { sID = "ALPHA_DEATH",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "30.0"}  },
  { sID = "ALPHA_GRAB",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "7.0"}  },
  { sID = "GAMMA_DEATH",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "30.0"}  },
  { sID = "GAMMA_WALL_COLLISON",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                      fTime = "0.45",
                                                                                      fAmplitude = "0.45",
                                                                                      sFunction = "SqoooooiszI"
                                                                                     }
  },
  { sID = "ZETA_DEATH",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "30.0"}  },
  { sID = "ZETA_LAND",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "10.0"}  },
  { sID = "OMEGA_DEATH_INIT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "30.0"}  },
  { sID = "OMEGA_DEATH",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "30.0"}  },
  { sID = "OMEGA_LAND",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "10.0"}  },
  { sID = "OMEGA_ANGRY",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.2", fDistance = "10.0"}  },
  { sID = "OMEGA_STAGGER",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.2", fDistance = "10.0"}  },
  { sID = "OMEGA_RECOVER_CORE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.2", fDistance = "10.0"}  },
  { sID = "OMEGA_EARTHQUAKE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.2", fDistance = "25.0"}  },
  { sID = "OMEGA_PLASMA",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "1.5",      fDistance = "3.5",      fTwist = "0.003"    }  },
  { sID = "OMEGA_PLASMA_END",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.5",      fDistance = "2.5",      fTwist = "0.001"    }  },
  { sID = "QUEEN_SPAWN",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "4.0", fDistance = "10.0"}  },
  { sID = "QUEEN_SHAKING_JUMP",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "1.2",      fDistance = "50.0",      sFunction = "i"    }  },
  { sID = "QUEEN_PLASMA_1sec",    sClass = "CCameraFX_RotationShake",    tParams = {      fTime = "1",      fAmplitude = "0.08",      sFunction = "ooooosz"    }  },
  { sID = "QUEEN_PLASMA_2secs",    sClass = "CCameraFX_RotationShake",    tParams = {      fTime = "2",      fAmplitude = "0.08",      sFunction = "ooooosz"    }  },
  { sID = "QUEEN_PLASMA_5secs",    sClass = "CCameraFX_RotationShake",    tParams = {      fTime = "5",      fAmplitude = "0.08",      sFunction = "ooooosz"    }  },
  { sID = "QUEEN_PLASMA_END",    sClass = "CCameraFX_RotationShake",    tParams = {      fTime = "0.5",      fAmplitude = "0.08",      sFunction = "oooiszI"    }  },
  { sID = "QUEEN_INSIDE_MAX_TIME",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                        fTime = "2.3",
                                                                                        fAmplitude = "0.45",
                                                                                        sFunction = "SsSqoooooosz"
                                                                                       }
  },
  { sID = "ARACHNUS_RAM_WALL_COLLISON",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                             fTime = "0.45",
                                                                                             fAmplitude = "0.45",
                                                                                             sFunction = "SqooooooszI"
                                                                                            }
  },
  { sID = "ARACHNUS_JUMP_INIT",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                     fTime = "0.35",
                                                                                     fAmplitude = "0.25",
                                                                                     sFunction = "SqooooooszI"
                                                                                    }
  },
  { sID = "HALZYN_STOMP_SHAKE",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                     fTime = "0.45",
                                                                                     fAmplitude = "0.45",
                                                                                     sFunction = "SqoooooiszI"
                                                                                    }
  },
  { sID = "MANIC_MINER_BOT_CHUSHING_DRILLS_1",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.6", fDistance = "20.0"}  },
  { sID = "MANIC_MINER_BOT_CHUSHING_DRILLS_2",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.6", fDistance = "20.0"}  },
  { sID = "MANIC_MINER_BOT_CHUSHING_DRILLS_3",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.7", fDistance = "30.0"}  },
  { sID = "MANIC_MINER_BOT_ROCK_THROWING_INIT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.6", fDistance = "20.0"}  },
  { sID = "MANIC_MINER_BOT_ROCK_THROWING",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "100", fDistance = "7.0"}  },
  { sID = "MANIC_MINER_BOT_SHAKE",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                        fTime = "3.0",
                                                                                        fAmplitude = "0.35",
                                                                                        sFunction = "SqooooooszII"
                                                                                       }
  },
  { sID = "MANIC_MINER_BOT_DISASSEMBLY",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "2.0",      fDistance = "7.5",      fTwist = "0.01"    }  },
  { sID = "SPIDER_IMPULSE_END",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.20",      fDistance = "20",      fTwist = "0.01"    }  },
  { sID = "POWER_BOMB",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "2.0", fDistance = "10.0"}  },
  { sID = "DNA_ABSORBTION",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "100.0", fDistance = "2.5"}  },
  { sID = "DNA_ABSORBTION2",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "100.0", fDistance = "5.0"}  },
  { sID = "DNA_ABSORBTION3",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.4", fDistance = "7.5"}  },
  { sID = "METROID_KNOCK_BACK",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.8", fDistance = "25.0"}  },
  { sID = "CHOZO_WARRIOR_BREAKSHIELD",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.6",      fDistance = "20.0",      sFunction = "osqqII"    }  },
  { sID = "CHOZO_WARRIOR_TRANSFORMATION",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.8", fDistance = "6.0"}  },
  { sID = "CHOZO_WARRIOR_LAND",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.5",      fDistance = "5.0",      sFunction = "2i"    }  },
  { sID = "CHOZO_WARRIOR_TAKEOFF",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.4", fDistance = "1.5"}  },
  { sID = "CHOZO_WARRIOR_SPEAR",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.05", fDistance = "7.0"}  },
  { sID = "CHOZO_WARRIOR_SPAWNLAND",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.3",      fDistance = "2.5",      sFunction = "2i"    }  },
  { sID = "CHOZOROBOTSOLDIER_LANDUP",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "3.0"}  },
  { sID = "CHOZOROBOTSOLDIER_LANDDOWNSOFT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "4.0"}  },
  { sID = "CHOZOROBOTSOLDIER_SPAWNSANCT",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.15",      fDistance = "8.0",      sFunction = "sia"    }  },
  { sID = "CHOZOROBOTSOLDIER_SPAWNSANCT2",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.2",      fDistance = "8.0",      sFunction = "sia"    }  },
  { sID = "CHOZOROBOTSOLDIER_LANDDOWNHARD",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "8.0"}  },
  { sID = "CHOZOROBOTSOLDIER_SPAWNFOREST",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.3",      fDistance = "10.0",      sFunction = "sia"    }  },
  { sID = "CHOZOROBOTSOLDIER_SPAWNAQUA_1",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.2",      fDistance = "08.0",      sFunction = "sia"    }  },
  { sID = "CHOZOROBOTSOLDIER_SPAWNAQUA_2",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.2",      fDistance = "08.0",      sFunction = "sia"    }  },
  { sID = "CHOZOROBOTSOLDIER_DEATH_EXPLOSION",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "1.3",      fDistance = "08.0",      sFunction = "ia2osqi"    }  },
  { sID = "CHOZOROBOTSOLDIER_DEATH_EXPLOSION_END",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.8",      fDistance = "20.0",      sFunction = "aai"    }  },
  { sID = "SCORPIUS_STEP",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                fTime = "0.7",
                                                                                fAmplitude = "0.07",
                                                                                sFunction = "SqqqqoooooszI"
                                                                               }
  },
  { sID = "SCORPIUS_STRONG_STEP",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                       fTime = "0.6",
                                                                                       fAmplitude = "0.1",
                                                                                       sFunction = "SqqqqoooooszI"
                                                                                      }
  },
  { sID = "COOLDOWNX_BODYSLAM",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "6.0"}  },
  { sID = "COOLDOWNX_BODYIMPACT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.2", fDistance = "6.0"}  },
  { sID = "COOLDOWNX_BODYSWOOSH",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.1", fDistance = "2.0"}  },
  { sID = "COOLDOWNX_STEP",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.2", fDistance = "1.0"}  },
  { sID = "COOLDOWNX_REAPERPREPARE",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.7",      fDistance = "0.75",      sFunction = "ii2"    }  },
  { sID = "COOLDOWNX_REAPER",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.6",      fDistance = "12.0",      sFunction = "i2"    }  },
  { sID = "COOLDOWNX_REAPERDOUBLESWIPE",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.6",      fDistance = "16.0",      sFunction = "i2"    }  },
  { sID = "COOLDOWNX_LASERSTART",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "1.0",      fDistance = "8.0",      sFunction = "i"    }  },
  { sID = "COOLDOWNX_LASERRUMBLE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "-1.0", fDistance = "2.0"}  },
  { sID = "COOLDOWNX_LAVADROPSPREPARE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "-1.0", fDistance = "1.0"}  },
  { sID = "COOLDOWNX_LAVADROPSIMPACT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.2", fDistance = "10.0"}  },
  { sID = "COOLDOWNX_LASERBITE",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.5",      fDistance = "14.0",      sFunction = "i22"    }  },
  { sID = "COOLDOWNX_WINDTUNNELPREPARE",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "2.0",      fDistance = "1.0",      sFunction = "s"    }  },
  { sID = "COOLDOWNX_WINDTUNNELSTART",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "1.0",      fDistance = "16.0",      sFunction = "i2"    }  },
  { sID = "COOLDOWNX_WINDTUNNELWINDUP",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "3.0",      fDistance = "7.0",      sFunction = "os"    }  },
  { sID = "COOLDOWNX_WINDTUNNELWINDRUMBLE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "-1.0", fDistance = "1.0"}  },
  { sID = "KRAID_IMPACT",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.3",      fDistance = "10.0",      sFunction = "i2"    }  },
  { sID = "KRAID_IMPACT_WEAK",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.5",      fDistance = "6.0",      sFunction = "i2"    }  },
  { sID = "KRAID_ROAR_STRONG",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "2.0",      fDistance = "7.0",      sFunction = "osqI"    }  },
  { sID = "KRAID_ROAR_WEAK",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "2.0",      fDistance = "4.0",      sFunction = "osqI"    }  },
  { sID = "KRAID_ROAR_SHORT",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "1.0",      fDistance = "4.0",      sFunction = "osqI"    }  },
  { sID = "KRAID_SPECIALACTION_A",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.1",      fDistance = "3.0",      sFunction = "i"    }  },
  { sID = "KRAID_SPECIALACTION_B",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.45",      fDistance = "2.0",      sFunction = "s"    }  },
  { sID = "KRAID_SPECIALACTION_C",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.15",      fDistance = "2.0",      sFunction = "is"    }  },
  { sID = "KRAID_ACIDBLOBS_START",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.2", fDistance = "2.0"}  },
  { sID = "KRAID_ACIDBLOBS_LOOP",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "-1.0", fDistance = "1.0"}  },
  { sID = "KRAID_SPINNINGNAILS_THROW",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.35",      fDistance = "3.0",      sFunction = "osqI"    }  },
  { sID = "KRAID_SPINNINGNAILS_IMPACT",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.1",      fDistance = "1.0",      sFunction = "i2"    }  },
  { sID = "KRAID_TRIPLEFLYINGSPIKE_PREPARE",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "1.5",      fDistance = "2.0",      sFunction = "qs"    }  },
  { sID = "KRAID_TRIPLEFLYINGSPIKE_FIRE",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.3",      fDistance = "15.0",      sFunction = "i"    }  },
  { sID = "KRAID_TRIPLEFLYINGSPIKE_WALL",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.5",      fDistance = "40.0",      sFunction = "i"    }  },
  { sID = "KRAID_SHOCKERSPLASH_SHOOT",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.2",      fDistance = "3.0",      sFunction = "i"    }  },
  { sID = "KRAID_BOUNCINGCREATURES_SHOOT",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.2",      fDistance = "2.0",      sFunction = "i"    }  },
  { sID = "KRAID_FLYINGSPIKES_RUMBLE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "-1.0", fDistance = "0.6"}  },
  { sID = "KRAID_FLYINGSPIKES_SHOOT",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.3",      fDistance = "4.0",      sFunction = "i"    }  },
  { sID = "KRAID_FLYINGSPIKES_WALL",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.5",      fDistance = "8.0",      sFunction = "i2"    }  },
  { sID = "KRAID_FIERCESWIPE_IMPACT",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.5",      fDistance = "20.0",      sFunction = "i"    }  },
  { sID = "KRAID_BACKSLAP_SWING",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.5",      fDistance = "15.0",      sFunction = "osqI"    }  },
  { sID = "KRAID_ENTRANCE",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.3",      fDistance = "6.0",      sFunction = "i2"    }  },
  { sID = "GOLIATHX_STEP",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                fTime = "0.15",
                                                                                fAmplitude = "0.06",
                                                                                sFunction = "SqqqqoooooszI",
                                                                                fAttMinRange = "1000",     
                                                                                fAttMaxRange = "3500",      
                                                                                sAttRangeFunction = "s" 
                                                                               }  
  },
  { sID = "GOLIATHX_STEP_STRONG",    sClass = "CCameraFX_RotationShake",    tParams = {
                                                                                       fTime = "0.15",
                                                                                       fAmplitude = "0.1",
                                                                                       sFunction = "SqqqqoooooszI",
                                                                                       fAttMinRange = "1000",
                                                                                       fAttMaxRange = "3500",
                                                                                       sAttRangeFunction = "s"
                                                                                      }  
  },
  { sID = "CONSTANT_RUMBLE_VERYLOW",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "-1.0", fDistance = "0.75"}  },
  { sID = "CONSTANT_RUMBLE_LOW",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "-1.0", fDistance = "1.0"}  },
  { sID = "CONSTANT_RUMBLE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "-1.0", fDistance = "3.5"}  },
  { sID = "CONSTANT_RUMBLE_STRONGER",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "-1.0", fDistance = "5.0"}  },
  { sID = "ALPHA_SPAWN22",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.0", fDistance = "10.0"}  },
  { sID = "OMEGA_PLASMA_STREAM",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.5", fDistance = "5.0"}  },
  { sID = "OMEGA_SPAWN",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "25.0"}  },
  { sID = "OMEGA_SPAWN92",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.4", fDistance = "16.0"}  },
  { sID = "GAMMA_PULSE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.0", fDistance = "25.0"}  },
  { sID = "QUEEN_CRUSHING",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "20.0"}  },
  { sID = "QUEEN_SYNCHRO",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "15.0"}  },
  { sID = "QUEEN_STAGGER_INIT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.0", fDistance = "20.0"}  },
  { sID = "QUEEN_STAGGER_INIT2",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "15.0"}  },
  { sID = "QUEEN_STAGGER_IMPULSE",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.0", fDistance = "40.0"}  },
  { sID = "QUEEN_STAGGER_IMPULSE2",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "15.0"}  },
  { sID = "QUEEN_STUN_INIT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "15.0"}  },
  { sID = "RIDLEY_GRAB_WALL",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "25.0"}  },
  { sID = "RIDLEY_TAIL_SWEEP",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "1.5",      fDistance = "3.5",      fTwist = "0.003"    }  },
  { sID = "RIDLEY_TAIL_SWEEP_WALL",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "25.0"}  },
  { sID = "ZETA_DEATH_IN_GRAB",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "25.0"}  },
  { sID = "ZETA_DEATH_WALL",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "25.0"}  },
  { sID = "ZETA_YANK_FALL_END",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.0", fDistance = "25.0"}  },
  { sID = "PROP01",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.0", fDistance = "5.0"}  },
  { sID = "PROP02",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "2.0", fDistance = "10.0"}  },
  { sID = "PROP03",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "3.0", fDistance = "5.0"}  },
  { sID = "PROP04",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "2.0", fDistance = "5.0"}  },
  { sID = "PROP05",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "5.0"}  },
  { sID = "PROP06",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "2.0"}  },
  { sID = "CUT_INTRO_ZETA_SAMUS",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "1.0", fDistance = "6.0"}  },
  { sID = "DEMOLITION_BLOCK",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.7", fDistance = "3.0"}  },
  { sID = "DEMOLITION_BLOCK_IMPACT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.1", fDistance = "5.0"}  },
  { sID = "DEMOLITION_BLOCK_DEAD",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.6",      fDistance = "15",      sFunction = "i2"    }  },
  { sID = "EVACUATION_SOFT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "100.0", fDistance = "2.5"}  },
  { sID = "EVACUATION_HARD",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "100.0", fDistance = "5.0"}  },
  { sID = "EVACUATION_DEATH",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "2.0", fDistance = "7.5"}  },
  { sID = "CHAINREACTION_SOFT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "100.0", fDistance = "2.0"}  },
  { sID = "CHAINREACTION_SMALL_EXP",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.75", fDistance = "2.0"}  },
  { sID = "CHAINREACTION_MED_EXP",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.75", fDistance = "3.0"}  },
  { sID = "CHAINREACTION_BIG_EXP",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.5", fDistance = "5.0"}  },
  { sID = "CENTRAL_UNIT_DOOR_IMPACT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.3", fDistance = "5.0"}  },
  { sID = "SPEEDBOOSTER_START",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.4",      fDistance = "15.0",      sFunction = "i2"    }  },
  { sID = "SPEEDBOOSTER_KILL",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.3",      fDistance = "10.0",      sFunction = "i2"    }  },
  { sID = "SPEEDBOOSTER_BREAK_TILE",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.1",      fDistance = "5.0",      sFunction = "i2"    }  },
  { sID = "SPEEDBOOSTER_STOP",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.6",      fDistance = "8.0",      sFunction = "i2"    }  },
  { sID = "SHINESPARK_KILL",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.3",      fDistance = "10.0",      sFunction = "i2"    }  },
  { sID = "SHINESPARK_BREAK_TILE",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.15",      fDistance = "8.0",      sFunction = "i2"    }  },
  { sID = "MELEEFAIL_WEAK",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.2",      fDistance = "4.5",      sFunction = "i2"    }  },
  { sID = "MELEEFAIL_STRONG",    sClass = "CCameraFX_RandShake",    tParams = {      fTime = "0.3",      fDistance = "7.0",      sFunction = "i2"    }  },
  { sID = "HYPER_SUIT_CONTACT",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.2", fDistance = "6.0"}  },
  { sID = "HYPER_SUIT_CONTACT_SWARM",    sClass = "CCameraFX_RandShake",    tParams = {fTime = "0.2", fDistance = "2.0"}  }}

function CameraFXPresets.main()
  CameraFXPresets.InitCameraFXPresets(CameraFXPresets.tPresets)
end


function CameraFXPresets.InitCameraFXPresets(_ARG_0_)
   
  for _FORV_4_, _FORV_5_ in ipairs(_ARG_0_) do
    Game.AddCameraFXPreset(_FORV_5_.sID, _FORV_5_.sClass, _FORV_5_.tParams)
  end  
end
