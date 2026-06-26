# sub-block point: p4 = a*4 + d*i/steps + 2 (quarter units, +2 centres on the block); cube at p4*0.25
scoreboard players operation #p4x gb = #dx gb
scoreboard players operation #p4x gb *= #i gb
scoreboard players operation #p4x gb /= #steps gb
scoreboard players operation #ax4 gb = #ax gb
scoreboard players operation #ax4 gb *= #four gb
scoreboard players operation #p4x gb += #ax4 gb
scoreboard players add #p4x gb 2
scoreboard players operation #p4y gb = #dy gb
scoreboard players operation #p4y gb *= #i gb
scoreboard players operation #p4y gb /= #steps gb
scoreboard players operation #ay4 gb = #ay gb
scoreboard players operation #ay4 gb *= #four gb
scoreboard players operation #p4y gb += #ay4 gb
scoreboard players add #p4y gb 2
scoreboard players operation #p4z gb = #dz gb
scoreboard players operation #p4z gb *= #i gb
scoreboard players operation #p4z gb /= #steps gb
scoreboard players operation #az4 gb = #az gb
scoreboard players operation #az4 gb *= #four gb
scoreboard players operation #p4z gb += #az4 gb
scoreboard players add #p4z gb 2
execute store result storage glowborder:pt x double 0.25 run scoreboard players get #p4x gb
execute store result storage glowborder:pt y double 0.25 run scoreboard players get #p4y gb
execute store result storage glowborder:pt z double 0.25 run scoreboard players get #p4z gb
function glowborder:put_cube_d with storage glowborder:pt
scoreboard players add #i gb 1
execute if score #i gb <= #imax gb run function glowborder:line_step
