# Mark corner 1 at the given player's block position (block-aligned)
kill @e[type=marker,tag=gb_pos1]
$execute at $(player) align xyz run summon marker ~ ~ ~ {Tags:["gb_pos1"]}
$tellraw $(player) ["",{"text":"[border] ","color":"green"},{"text":"corner 1 set"}]
