# Macro: convert the preview into a numbered region
$tag @e[type=block_display,tag=gb_preview] add gb_region$(id)
tag @e[type=block_display,tag=gb_preview] remove gb_preview
