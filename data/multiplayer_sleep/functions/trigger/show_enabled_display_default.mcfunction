execute if score #display mpSleep.config matches 0 run tellraw @s ["",{"text":"[ ✔ ]","color":"green"}," 顯示: 預設 (隱藏)"]
execute if score #display mpSleep.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green"}," 顯示: 預設 (Boss血條)"]
execute if score #display mpSleep.config matches 2 run tellraw @s ["",{"text":"[ ✔ ]","color":"green"}," 顯示: 預設 (動作欄)"]
execute if score #display mpSleep.config matches 3 run tellraw @s ["",{"text":"[ ✔ ]","color":"green"}," 顯示: 預設 (聊天室)"]