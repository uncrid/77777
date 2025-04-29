data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# Coal, Charcoal
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_a_id:"coal",buy_a_count:18,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:3}

execute if score #trade stellarity.misc matches 2 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_a_id:"charcoal",buy_a_count:24,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:3}

# Grilled Enderman Flesh or Frozen Carpaccio
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
	function stellarity:mobs/villager/trade_editor/add_loot_table_to_loot_table {xp:5,max_uses:8,price_multiplier:0.05,buy_a_count:3,buy_b_count:2,sell_count:3,loot_table:"stellarity:items/food/enderman_flesh",loot_table_2:"stellarity:items/food/grilled_enderman_flesh"}

execute if score #trade stellarity.misc matches 2 run \
	function stellarity:mobs/villager/trade_editor/add_loot_table_to_loot_table {xp:5,max_uses:8,price_multiplier:0.05,buy_a_count:3,buy_b_count:2,sell_count:3,loot_table:"stellarity:items/food/enderman_flesh",loot_table_2:"stellarity:items/food/frozen_carpaccio"}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
