data remove entity @s attack

execute if score @p stellarity.items.stellar_striker.stars.amount matches 1.. as @n[type=marker,tag=stellarity.stellar_striker,distance=..0.5] at @s run function stellarity:items/stellar_striker/star/launch_as_marker
