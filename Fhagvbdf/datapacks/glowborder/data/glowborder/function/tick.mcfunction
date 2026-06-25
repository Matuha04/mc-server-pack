# tick down the wand cooldown
scoreboard players remove @a[scores={gbCd=1..}] gbCd 1
# proximity walls: clear last cycle's window panels, then redraw near players
kill @e[type=block_display,tag=gb_wp]
execute as @e[type=marker,tag=gb_wallregion] run function glowborder:wallregion with entity @s data
