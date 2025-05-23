advancement revoke @s only stellarity:events/items/shoot_clockwork_crossbow

#tellraw @a {"score":{"name": "@s","objective": "stellarity.items.clockwork_crossbow.should_save"},"color":"green"}

## Unconserved arrow (non-critical)
# Side Multishot arrows
execute if score @s stellarity.items.clockwork_crossbow.should_save matches 0 \
	anchored eyes positioned ^ ^ ^ \
	as @e[type=arrow,limit=3,sort=nearest,distance=..1,tag=!stellarity.aware,nbt={pickup:2b}] run \
	data merge entity @s {damage:1d,pickup:2b,crit:0b,life:600}

# Regular arrow
execute if score @s stellarity.items.clockwork_crossbow.should_save matches 0 \
	anchored eyes positioned ^ ^ ^ \
	as @n[type=arrow,distance=..1,tag=!stellarity.aware,nbt={pickup:1b}] run \
	data merge entity @s {damage:1d,pickup:1b,crit:0b,life:600}

## Conserved arrow (critical)
# Side Multishot arrows
execute if score @s stellarity.items.clockwork_crossbow.should_save matches 1 \
	anchored eyes positioned ^ ^ ^ \
	as @e[type=arrow,limit=3,sort=nearest,distance=..1,tag=!stellarity.aware,nbt={pickup:2b}] run \
	data merge entity @s {damage:1d,pickup:2b,crit:1b,life:600}

# Regular arrow
execute if score @s stellarity.items.clockwork_crossbow.should_save matches 1 \
	anchored eyes positioned ^ ^ ^ \
	as @n[type=arrow,distance=..1,tag=!stellarity.aware,nbt={pickup:1b}] run \
	data merge entity @s {damage:1d,pickup:2b,crit:1b,life:600}

#tellraw @a {"score":{"name": "@s","objective": "stellarity.items.clockwork_crossbow.should_save"},"color":"red"}

playsound minecraft:block.anvil.place player @a[distance=0..] ~ ~1.1 ~ 0.25 1.08

stopsound @a[distance=0..16] player minecraft:item.crossbow.shoot
playsound minecraft:item.crossbow.shoot player @a[distance=0..] ~ ~1.1 ~ 1 0.8

execute anchored eyes positioned ^ ^-0.287 ^ run function stellarity:items/clockwork_crossbow/smoke

attribute @s generic.movement_speed modifier add stellarity:clockwork_crossbow.slowdown -0.3 add_multiplied_total
scoreboard players set @s stellarity.items.clockwork_crossbow.time_since_last_shot 22
#scoreboard players set @s stellarity.items.clockwork_crossbow.should_save 0
