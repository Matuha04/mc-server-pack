function glowborder:circle_plot8
execute if score #err gb matches ..0 run function glowborder:circle_incy
execute if score #err gb matches 1.. run function glowborder:circle_decx
execute if score #qx gb >= #qy gb run function glowborder:circle_loop
