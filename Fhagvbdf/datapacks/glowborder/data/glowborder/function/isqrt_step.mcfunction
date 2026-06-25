scoreboard players operation #isq_t gb = #isq_out gb
scoreboard players add #isq_t gb 1
scoreboard players operation #isq_sq gb = #isq_t gb
scoreboard players operation #isq_sq gb *= #isq_t gb
execute if score #isq_sq gb <= #isq_in gb run function glowborder:isqrt_inc
