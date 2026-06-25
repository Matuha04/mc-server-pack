# vertical circle: pick X-Y plane (faces Z) or Z-Y plane (faces X) by the larger horizontal axis
execute if score #adx gb >= #adz gb run scoreboard players set #plane gb 1
execute if score #adx gb >= #adz gb run scoreboard players operation #cr2 gb = #adx gb
execute if score #adx gb >= #adz gb run scoreboard players operation #cr2 gb > #ady gb
execute if score #adx gb < #adz gb run scoreboard players set #plane gb 2
execute if score #adx gb < #adz gb run scoreboard players operation #cr2 gb = #adz gb
execute if score #adx gb < #adz gb run scoreboard players operation #cr2 gb > #ady gb
