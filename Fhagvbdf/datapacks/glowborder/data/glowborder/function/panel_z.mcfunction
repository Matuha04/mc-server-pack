# Macro: 5x5 glass window on a Z-facing side at z=$(fz), centred on the player (runs at player)
$execute positioned ~ ~ $(fz) run summon block_display ~-2 ~-2 ~ {Tags:["gb_wp"],brightness:{block:15,sky:15},block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[5f,5f,0.05f],right_rotation:[0f,0f,0f,1f]}}
