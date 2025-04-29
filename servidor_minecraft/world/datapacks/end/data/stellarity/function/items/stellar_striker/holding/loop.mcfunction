execute if entity @s[tag=!stellarity.holding_stellar_striker] run function stellarity:items/stellar_striker/holding/start

execute if entity @s[predicate=kohara:player/is_sneaking] run function stellarity:items/stellar_striker/holding/sneak/loop
execute if entity @s[tag=stellarity.holding_stellar_striker.sneaking,predicate=!kohara:player/is_sneaking] run function stellarity:items/stellar_striker/holding/sneak/stop

execute unless score @s stellarity.items.stellar_striker.cooldown matches 1.. \
	unless score @s stellarity.items.stellar_striker.stars.collect_time matches 10000.. run \
	scoreboard players add @s stellarity.items.stellar_striker.stars.collect_time 4
scoreboard players set @s[scores={stellarity.items.stellar_striker.stars.collect_time=10000..}] stellarity.items.stellar_striker.stars.collect_time 10000

scoreboard players set @s stellarity.items.stellar_striker.stars.amount 0
scoreboard players add @s[scores={stellarity.items.stellar_striker.stars.collect_time=1000..}] stellarity.items.stellar_striker.stars.amount 1
scoreboard players add @s[scores={stellarity.items.stellar_striker.stars.collect_time=2000..}] stellarity.items.stellar_striker.stars.amount 1
scoreboard players add @s[scores={stellarity.items.stellar_striker.stars.collect_time=4500..}] stellarity.items.stellar_striker.stars.amount 1
scoreboard players add @s[scores={stellarity.items.stellar_striker.stars.collect_time=7000..}] stellarity.items.stellar_striker.stars.amount 1
scoreboard players add @s[scores={stellarity.items.stellar_striker.stars.collect_time=10000}] stellarity.items.stellar_striker.stars.amount 1

function stellarity:items/stellar_striker/holding/actionbar

scoreboard players remove @s[scores={stellarity.items.stellar_striker.cooldown=1..}] stellarity.items.stellar_striker.cooldown 1
