# Macro: glide the W/E panel to the player (set scale only on first show to avoid re-render)
$tp @e[type=block_display,tag=gb_wr$(id),tag=$(st),limit=1] ~ ~-2 ~-2
$data modify entity @e[type=block_display,tag=gb_wr$(id),tag=$(st),tag=!gb_on,limit=1] transformation.scale set value [0.05f,5f,5f]
$tag @e[type=block_display,tag=gb_wr$(id),tag=$(st)] add gb_on
