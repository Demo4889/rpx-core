IC = {}
IC.MaxPlayers                           = GetConvarInt('sv_maxClients', 128)
IC.DefaultPosition                      = vector3(0.0,0.0,0.0)
IC.CitizenIDLength                      = 8
IC.DeploymentType                       = "dev"         -- dev, prod
                                                        -- This dictates whether or not to print all debug traces in all RPX resources to the console.
                                                        -- This is especially useful if you don't want your console spammed with debug messages or random bullshit on client and server side.

IC.MaxCharactersPerPlayer               = 4

IC.Player = {}
IC.Player.StartingCash                  = 50
IC.Player.StartingBank                  = 100
IC.Player.DefaultAge                    = 18            -- Default DefaultAge
IC.Player.DefaultGender                 = 1             -- 1 = Male, 0 = Female
IC.Player.DefaultHeight                 = 60            -- Can be between 48-84 inches
IC.Player.MaxHealthCore                 = 5             -- 50% max health core
IC.Player.MaxStaminaCore                = 5             -- 50% max stamina core
IC.Player.UpdateRate                    = 5             -- Minutes
IC.Player.StatusRate                    = 5000          -- Seconds
IC.Player.HungerRate                    = 4.2           -- Rate at which hunger increases.
IC.Player.ThirstRate                    = 3.8           -- Rate at which thirst increases.
IC.Player.CanLogout                     = true          -- Set to false to disable the ability to logout.

IC.Game = {}                                            -- These are game modifications to improve the RP/multiplayer experience.
IC.Game.EnablePVP                       = true          -- Whether or not to enable PVP/friendly fire.
IC.Game.AnonymousNames                  = true          -- Set to true to make all players have anonymous target names ["Stranger (PlayerID)"]
IC.Game.DisableChallengeNotifications   = true          -- Set to true to disable challenge notifications (base game)
IC.Game.MapCrossName                    = "No Blip Name"    -- Set the BLIP_NAME when a player is hovered over a non-existant blip on the map (base game)
IC.Game.DisableLootPrompts              = true          -- Set to true to disable random loot boxes/prompts (base game)
IC.Game.DisableAimAssist                = true          -- Set to true to disable aim assist on controllers (unfair for RP servers)
IC.Game.RevealMap                       = true          -- Set to true to disable the fog of war and reveal the entire game map.
IC.Game.HideHUD                         = true          -- Set to true to hide the main game HUD. (Great if you have a custom HUD)
IC.Game.EnableEagleEye                  = false         -- Set to true to enable eagle eye (base game)

-----------------------------------------------------------------------------------------
-------------------------------------  Internal Config  ---------------------------------
-----------------------------------------------------------------------------------------

GlobalState.DeploymentType           = IC.DeploymentType           -- Push the framework's deployment type to the global state. Don't touch this!

Internal_Config = IC

GlobalState.RPXConfig = Internal_Config