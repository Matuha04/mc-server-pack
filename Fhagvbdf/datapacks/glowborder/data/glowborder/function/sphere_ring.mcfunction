# draw one latitude ring at height scy+sh with radius isqrt(r^2 - sh^2), then step up
scoreboard players operation #isq_in gb = #sr gb
scoreboard players operation #isq_in gb *= #sr gb
scoreboard players operation #tmp2 gb = #sh gb
scoreboard players operation #tmp2 gb *= #sh gb
scoreboard players operation #isq_in gb -= #tmp2 gb
function glowborder:isqrt
scoreboard players operation #ringy gb = #scy gb
scoreboard players operation #ringy gb += #sh gb
execute store result storage glowborder:circ cx int 1 run scoreboard players get #scx gb
execute store result storage glowborder:circ cy int 1 run scoreboard players get #ringy gb
execute store result storage glowborder:circ cz int 1 run scoreboard players get #scz gb
execute store result storage glowborder:circ r int 1 run scoreboard players get #isq_out gb
execute if score #isq_out gb matches 1.. run function glowborder:circle_draw
scoreboard players operation #sh gb += #sstep gb
execute if score #sh gb <= #sr gb run function glowborder:sphere_ring
