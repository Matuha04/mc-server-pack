# Compute the outer box from the two corner markers and draw it
execute unless entity @e[type=marker,tag=gb_pos1] run return fail
execute unless entity @e[type=marker,tag=gb_pos2] run return fail

# read marker block positions into scores
execute store result score #x1 gb run data get entity @e[type=marker,tag=gb_pos1,limit=1] Pos[0] 1
execute store result score #y1 gb run data get entity @e[type=marker,tag=gb_pos1,limit=1] Pos[1] 1
execute store result score #z1 gb run data get entity @e[type=marker,tag=gb_pos1,limit=1] Pos[2] 1
execute store result score #x2 gb run data get entity @e[type=marker,tag=gb_pos2,limit=1] Pos[0] 1
execute store result score #y2 gb run data get entity @e[type=marker,tag=gb_pos2,limit=1] Pos[1] 1
execute store result score #z2 gb run data get entity @e[type=marker,tag=gb_pos2,limit=1] Pos[2] 1

# Horizontal (X/Z) edges sit ON the blocks you stand on (no +1).
# Vertical (Y) keeps +1 so the box has height.
scoreboard players operation #mnx gb = #x1 gb
scoreboard players operation #mnx gb < #x2 gb
scoreboard players operation #mxx gb = #x1 gb
scoreboard players operation #mxx gb > #x2 gb
scoreboard players operation #mny gb = #y1 gb
scoreboard players operation #mny gb < #y2 gb
scoreboard players operation #mxy gb = #y1 gb
scoreboard players operation #mxy gb > #y2 gb
scoreboard players add #mxy gb 1
scoreboard players operation #mnz gb = #z1 gb
scoreboard players operation #mnz gb < #z2 gb
scoreboard players operation #mxz gb = #z1 gb
scoreboard players operation #mxz gb > #z2 gb

# edge lengths
scoreboard players operation #lx gb = #mxx gb
scoreboard players operation #lx gb -= #mnx gb
scoreboard players operation #ly gb = #mxy gb
scoreboard players operation #ly gb -= #mny gb
scoreboard players operation #lz gb = #mxz gb
scoreboard players operation #lz gb -= #mnz gb

# new region id
scoreboard players add #nextid gb 1

# pack everything into storage for the macro draw
execute store result storage glowborder:box mnx int 1 run scoreboard players get #mnx gb
execute store result storage glowborder:box mny int 1 run scoreboard players get #mny gb
execute store result storage glowborder:box mnz int 1 run scoreboard players get #mnz gb
execute store result storage glowborder:box mxx int 1 run scoreboard players get #mxx gb
execute store result storage glowborder:box mxy int 1 run scoreboard players get #mxy gb
execute store result storage glowborder:box mxz int 1 run scoreboard players get #mxz gb
execute store result storage glowborder:box lx int 1 run scoreboard players get #lx gb
execute store result storage glowborder:box ly int 1 run scoreboard players get #ly gb
execute store result storage glowborder:box lz int 1 run scoreboard players get #lz gb
execute store result storage glowborder:box id int 1 run scoreboard players get #nextid gb
data modify storage glowborder:box color set from storage glowborder:in color

function glowborder:draw with storage glowborder:box
tellraw @a ["",{"text":"[border] ","color":"green"},{"text":"region drawn"}]
