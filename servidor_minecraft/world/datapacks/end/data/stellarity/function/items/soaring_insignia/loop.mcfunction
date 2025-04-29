execute if entity @s[predicate=kohara:player/is_sneaking] at @s unless block ~ ~ ~ #kohara:liquids run function stellarity:items/soaring_insignia/checks_sneaking
execute if entity @s[tag=stellarity.insignia.flying] run function stellarity:items/soaring_insignia/gravity_0
execute if entity @s[predicate=!kohara:player/is_sneaking,tag=stellarity.insignia.flying] run function stellarity:items/soaring_insignia/hover

execute if data entity @s[tag=stellarity.insignia.flying] {OnGround:1b} run function stellarity:items/soaring_insignia/stop_flight
execute at @s if block ~ ~ ~ #kohara:liquids run function stellarity:items/soaring_insignia/stop_flight
