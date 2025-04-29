data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# First Trade
function stellarity:mobs/villager/trade_editor/add_from_loot_table {xp:8,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:villager/shepherd/banner",sell_count:1}

# Second Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_from_loot_table {xp:6,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:villager/shepherd/wool",sell_count:2}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_from_loot_table {xp:6,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:villager/shepherd/dye",sell_count:3}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades