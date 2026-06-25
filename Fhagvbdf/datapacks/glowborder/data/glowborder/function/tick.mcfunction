# tick down the wand cooldown
scoreboard players remove @a[scores={gbCd=1..}] gbCd 1
# proximity walls: drive each region's persistent panels (show/hide/follow)
execute as @e[type=marker,tag=gb_wallregion] run function glowborder:wallregion with entity @s data
