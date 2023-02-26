# Set comparator b before calling
data modify storage comparator a set from block ~ ~-1 ~ Items[0]
data remove storage minecraft:comparator a.Slot
data remove storage minecraft:comparator a.Count
data remove storage minecraft:comparator b.Slot
data remove storage minecraft:comparator b.Count
execute store success entity @s data.slot_0_below byte 1 run data modify storage minecraft:comparator a set from storage minecraft:comparator b
