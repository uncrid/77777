data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# First Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell_with_modifier {xp:10,max_uses:3,price_multiplier:0.05,buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell:"iron_axe",sell_count:1,modifier:"stellarity:villager/toolsmith/2/1/1"}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell_with_modifier {xp:10,max_uses:3,price_multiplier:0.05,buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell:"iron_pickaxe",sell_count:1,modifier:"stellarity:villager/toolsmith/2/1/2"}

# Second Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
	function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:6,price_multiplier:0.2,loot_table:"stellarity:items/materials/hallowed_ingot",buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:10}

execute if score #trade stellarity.misc matches 2 run \
	function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:8,price_multiplier:0.2,loot_table:"stellarity:items/materials/chorus_plating",buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:10}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades