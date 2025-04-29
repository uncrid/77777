data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

# First Trade
function stellarity:mobs/villager/trade_editor/add_enderite_sell {xp:2,max_uses:4,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"shears",sell_count:1}

# Second Trade
function stellarity:mobs/villager/trade_editor/add_enderite_buy {xp:3,max_uses:6,price_multiplier:0.05,buy_a_id:"white_wool",buy_a_count:14,buy_b_id:"air",buy_b_count:1,sell_count:1}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades