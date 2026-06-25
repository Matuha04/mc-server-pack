# /function glowborder:recolor {c:"aqua"}  -> set colour and redraw the preview
$data modify storage glowborder:in color set value "$(c)"
function glowborder:preview
