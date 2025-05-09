scoreboard players set @s stellarity.items.prismatic_pearl.cooldown 100

stopsound @a neutral minecraft:entity.ender_pearl.throw
playsound minecraft:entity.ender_eye.launch neutral @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:block.amethyst_cluster.break neutral @a[distance=0..] ~ ~ ~ 1 0.75
playsound minecraft:block.respawn_anchor.charge player @a[distance=0..] ~ ~ ~ .4 1.4

execute as @n[type=ender_pearl] run tag @s add stellarity.prismatic_pearl
execute if entity @s[name="Bush_Lord",predicate=kohara:chance/50percent] as @n[type=ender_pearl] run tag @s add stellarity.prismatic_pearl.bush
