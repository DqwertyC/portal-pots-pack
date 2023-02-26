execute store result score @s item_count run data get storage minecraft:portal_pots archer.archer.archer.arms_up.Count

# Reset checks for each slot above us
data merge entity @s {data:{slot_0_above:1b,slot_1_above:1b,slot_2_above:1b,slot_3_above:1b,slot_4_above:1b,grabbed:0b}}

# Try to grab something from a hopper above us
execute if score @s item_count < BUFFER item_count run data modify storage comparator b set from storage minecraft:portal_pots archer.archer.archer.arms_up.Item
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:compare/above_0
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_0_above:0b}}] run function portal_pots:update_pot/archer/archer/archer/arms_up/add_item_0

execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:compare/above_1
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_1_above:0b}}] run function portal_pots:update_pot/archer/archer/archer/arms_up/add_item_1

execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:compare/above_2
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_2_above:0b}}] run function portal_pots:update_pot/archer/archer/archer/arms_up/add_item_2

execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:compare/above_3
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_3_above:0b}}] run function portal_pots:update_pot/archer/archer/archer/arms_up/add_item_3

execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:compare/above_4
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_4_above:0b}}] run function portal_pots:update_pot/archer/archer/archer/arms_up/add_item_4

execute if score @s item_count matches 0 run data remove storage minecraft:portal_pots archer.archer.archer.arms_up.Item
execute store result storage minecraft:portal_pots archer.archer.archer.arms_up.Count byte 1 run scoreboard players get @s item_count