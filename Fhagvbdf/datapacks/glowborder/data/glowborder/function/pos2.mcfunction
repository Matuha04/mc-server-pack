# Mark corner 2 at the given player's block position (block-aligned)
kill @e[type=marker,tag=gb_pos2]
$execute at $(player) align xyz run summon marker ~ ~ ~ {Tags:["gb_pos2"]}
$tellraw $(player) ["",{"text":"[border] ","color":"green"},{"text":"corner 2 set"}]
