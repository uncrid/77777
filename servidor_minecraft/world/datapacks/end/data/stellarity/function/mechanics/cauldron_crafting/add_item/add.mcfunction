scoreboard players add @s stellarity.mechanics.cauldron_crafting.items_inside 1

# Summon the item display that orbits the Cauldrn
summon item_display ~ ~ ~ {item:{id:"minecraft:light",count:1},item_display:"ground",teleport_duration:5,Tags:["stellarity.brewing.item_display"],billboard:"vertical"}
data modify entity @n[type=item_display,tag=stellarity.brewing.item_display,nbt={item:{id:"minecraft:light"}}] item set from storage stellarity:temp cauldron_crafting.item

# Summon the interaction used to retrieve the item
summon interaction ~ ~ ~ {width:0.3f,height:0.3f,Tags:["stellarity.brewing.interaction"],response:1b}

# Tag them accordingly
function stellarity:mechanics/cauldron_crafting/add_item/tag_displays

# Repeat until #to_add is equal to 0
scoreboard players remove #to_add stellarity.misc 1
execute unless score #to_add stellarity.misc matches ..0 run function stellarity:mechanics/cauldron_crafting/add_item/add
