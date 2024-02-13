execute if score @s mpSleep matches 7.. run function multiplayer_sleep:trigger/use_config
execute if score @s mpSleep matches 1 run function multiplayer_sleep:trigger/index
execute if score @s mpSleep matches 2 run function multiplayer_sleep:trigger/list_sleeping_players
execute if score @s mpSleep matches 3 run function multiplayer_sleep:trigger/config
execute if score @s mpSleep matches 4 run function multiplayer_sleep:trigger/preview_display_boss_bar
title @s[scores={mpSleep=5}] actionbar {"text":"1 / 2 玩家睡著了","color":"yellow"}
tellraw @s[scores={mpSleep=6}] [{"text":"玩家","color":"yellow"},{"text":" 想要睡覺. 1 / 2 玩家睡著了","color":"gold"}]
scoreboard players set @s mpSleep 0
scoreboard players enable @s mpSleep