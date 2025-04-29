data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:6,price_multiplier:0.05,buy_a_id:"chorus_fruit",buy_a_count:24,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:5}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_a_id:"chorus_flower",buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:8}

# Second Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:6,price_multiplier:0.2,loot_table:"stellarity:items/food/chorus_pie",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:2,xp:15}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"shroomlight",sell_count:2,xp:4}


data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades