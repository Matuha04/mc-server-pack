# place a glowing waypoint pillar at the player's block
execute at @s align xyz run summon block_display ~0.35 ~ ~0.35 {Tags:["gb_mark"],Glowing:1b,brightness:{block:15,sky:15},block_state:{Name:"minecraft:yellow_concrete"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.3f,2f,0.3f],right_rotation:[0f,0f,0f,1f]}}
tellraw @s ["",{"text":"[marker] ","color":"gold"},{"text":"placed"}]
