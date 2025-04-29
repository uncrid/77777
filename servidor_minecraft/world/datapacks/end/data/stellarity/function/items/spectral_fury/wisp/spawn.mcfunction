summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.wisp"]}
execute as @n[type=marker,tag=stellarity.wisp] at @s rotated as @p[predicate=stellarity:items/holding/spectral_fury] run tp @s ^ ^ ^ ~ ~ 

# Get power bonus
execute store result score #arrow_damage stellarity.misc run data get entity @s damage 100
scoreboard players set #150 stellarity.misc 150
scoreboard players set #100 stellarity.misc 100
# Damage: 5 + 150% of base arrow damage
scoreboard players operation #arrow_damage stellarity.misc *= #150 stellarity.misc
scoreboard players operation #arrow_damage stellarity.misc /= #100 stellarity.misc

scoreboard players set #wisp_damage stellarity.misc 500
scoreboard players operation #wisp_damage stellarity.misc += #arrow_damage stellarity.misc

scoreboard players operation @n[type=marker,tag=stellarity.wisp] stellarity.items.spectral_fury.damage = #wisp_damage stellarity.misc

playsound minecraft:entity.wither.ambient player @a[distance=0..] ~ ~ ~ 0.1 2

kill @s
