# Macro: hide a side panel (scale 0) only if it was shown, to avoid re-render
$data modify entity @e[type=block_display,tag=gb_wr$(id),tag=$(st),tag=gb_on,limit=1] transformation.scale set value [0f,0f,0f]
$tag @e[type=block_display,tag=gb_wr$(id),tag=$(st)] remove gb_on
