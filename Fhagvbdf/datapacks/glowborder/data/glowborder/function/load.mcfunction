# Glow Border setup: scoreboard + one team per glow colour
scoreboard objectives add gb dummy

team add gbcolor_red
team modify gbcolor_red color red
team add gbcolor_gold
team modify gbcolor_gold color gold
team add gbcolor_yellow
team modify gbcolor_yellow color yellow
team add gbcolor_lime
team modify gbcolor_lime color green
team add gbcolor_green
team modify gbcolor_green color dark_green
team add gbcolor_aqua
team modify gbcolor_aqua color aqua
team add gbcolor_blue
team modify gbcolor_blue color blue
team add gbcolor_light_purple
team modify gbcolor_light_purple color light_purple
team add gbcolor_white
team modify gbcolor_white color white

# default colour if /border show is used without one
execute unless data storage glowborder:in color run data modify storage glowborder:in color set value "white"
execute unless data storage glowborder:in walls run data modify storage glowborder:in walls set value 1b

# wand detection: track stick "use" (the wand is a consumable stick)
scoreboard objectives add gbWand minecraft.used:minecraft.spyglass
scoreboard objectives add gbWandPrev dummy
