playsound minecraft:item.armor.equip_gold player @a[distance=..30] ~ ~ ~ 4 0.85 0.75
item replace entity @s weapon.mainhand with minecraft:potion[potion_contents={potion:"minecraft:strong_healing"}]
tag @s add in.strong_healing
tag @s add in.chose_action
tag @s add in.mainhand_item