execute store result score @s item_count run data get storage minecraft:portal_pots skull.skull.prize.archer.Count

# If the last item wasn't picked up by the hopper, add it to the stack...
execute positioned ~ ~-0.625 ~ if entity @e[type=item,tag=portal_pot_item,distance=0..0.5] run function portal_pots:update_pot/skull/skull/prize/archer/loose_item

execute if score @s item_count matches 0 run data remove storage minecraft:portal_pots skull.skull.prize.archer.Item
execute store result storage minecraft:portal_pots skull.skull.prize.archer.Count byte 1 run scoreboard players get @s item_count