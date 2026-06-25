# /function glowborder:setcolor {c:"aqua"}  -> colour used by the next /function glowborder:show
$data modify storage glowborder:in color set value "$(c)"
$tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"colour set to "},{"text":"$(c)"}]
