tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                        多人遊戲睡覺",{"text":" / ","color":"gray"},"資訊                         "]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
execute store result score #percent mpSleep.config run gamerule playersSleepingPercentage
execute if score #percent mpSleep.config matches 0 run tellraw @s ["",{"text":">> ","color":"gray"},"主世界中的 1 名玩家必須睡覺才能跳過黑夜或雨天。"]
execute unless score #percent mpSleep.config matches 0 run tellraw @s ["",{"text":">> ","color":"gray"},{"score":{"name":"#percent","objective":"mpSleep.config"}},"% 主世界的玩家必須睡覺才能跳過黑夜和雨天。"]
tellraw @s ["",{"text":">> ","color":"gold"},{"text":"[ 個人設定 ]","clickEvent":{"action":"run_command","value":"/trigger mpSleep set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"點擊以顯示個人設定。","color":"gray"}}}]
tellraw @s ["",{"text":">> ","color":"gold"},{"text":"[ 列出正在睡覺的玩家 ]","clickEvent":{"action":"run_command","value":"/trigger mpSleep set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"點擊可列出正在睡覺的玩家。","color":"gray"}}}]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}