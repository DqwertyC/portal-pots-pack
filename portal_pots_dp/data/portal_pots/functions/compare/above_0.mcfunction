# Set comparator b before calling
data modify storage comparator a set from block ~ ~1 ~ Items[{Slot:0b}]
data remove storage minecraft:comparator a.Slot
data remove storage minecraft:comparator a.Count
data remove storage minecraft:comparator b.Slot
data remove storage minecraft:comparator b.Count

# Command will fail if the items are the same, i.e. 1 is failure, 0 is success
execute store success entity @s data.slot_0_above byte 1 run data modify storage minecraft:comparator a set from storage minecraft:comparator b

# If pot is empty, force success
execute if score @s item_count matches 0 run data modify entity @s data.slot_0_above set value 0b

# If block is empty, force failure
execute unless data block ~ ~1 ~ Items[{Slot:0b}] run data modify entity @s data.slot_0_above set value 1b