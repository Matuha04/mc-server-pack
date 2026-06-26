# Eraser (plain right): wipe everything within 5 blocks of where you're standing
kill @e[type=block_display,tag=gb_edge,distance=..5]
kill @e[type=block_display,tag=gb_mark,distance=..5]
kill @e[type=block_display,tag=gb_wp,distance=..5]
kill @e[type=marker,tag=gb_wallregion,distance=..5]
tellraw @s ["",{"text":"[eraser] ","color":"red"},{"text":"erased nearby"}]
