scoreboard players set #damage kohara.misc 60

tag @p[predicate=stellarity:items/holding/stellar_striker] add kohara.attacker

function kohara:damage/calculate {armor_penetration:50,damage_boost_efficiency:80,ap_damage_type:"kohara:armor_piercing",damage_type:"kohara:ignores_iframes",tag:"stellarity.damage.stellar_striker"}
