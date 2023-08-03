# Portal Pots

This datapack requires the 1.20 snapshot datapack to function!

This datapack turns decorated pots into item transporters! Create a set of matching pots (without any bricks).  
Drop an eye of ender on top of a pot to activate it. If it's working, a row of colored lines should appear around the neck. These lines correspond to the shards used in the pot.  
Because there are 20 shard types and 4 sides to a decorated pot, there are 160000 item transport channels.  
Each channel works across all loaded chunks in all dimensions.

Placing a hopper above a portal pot will start filling it. Each channel can buffer up to 64 of an item (*currently ignores max stack sizes*).  
Placing a hopper below a portal pot will grab items from the buffer.  

Multiple inputs and outputs can be connected on the same channel.  
As long as there's space in the buffer, all inputs will add items from hopper into the buffer.  
As long as there are items in the buffer, all outputs will place items into hoppers.  
If there isn't enough room/items in the buffer inputs/outputs will be chosen randomly.

Breaking a portal pot returns your eye of ender.
