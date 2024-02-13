execute as @a[gamemode=!spectator,predicate=multiplayer_sleep:overworld] if data entity @s SleepingX run tag @s add mpSleep.sleeping
execute store success score #sleeping mpSleep.dummy if entity @a[tag=mpSleep.sleeping]
execute if score #sleeping mpSleep.dummy matches 0 run tellraw @s {"text":"沒有睡覺的玩家。","color":"red"}
execute unless score #sleeping mpSleep.dummy matches 0 run tellraw @s [{"text":"睡覺著的玩家: ","color":"gold"},{"selector":"@a[tag=mpSleep.sleeping]","color":"yellow"}]
tag @a remove mpSleep.sleeping