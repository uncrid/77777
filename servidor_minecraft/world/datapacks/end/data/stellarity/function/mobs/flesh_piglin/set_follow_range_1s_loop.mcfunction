scoreboard players set #count stellarity.misc 0
execute as @e[type=zombified_piglin,tag=stellarity.flesh_piglin,distance=..12] if data entity @s AngryAt run scoreboard players add #count stellarity.misc 1

execute if score #count stellarity.misc matches 0 run function stellarity:mobs/flesh_piglin/readd_follow_range
execute if score #count stellarity.misc matches 0 run return 0

execute as @e[type=zombified_piglin,tag=stellarity.flesh_piglin,distance=..20] run attribute @s generic.follow_range modifier remove stellarity:mob_stat
