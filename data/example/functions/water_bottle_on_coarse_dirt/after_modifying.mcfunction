data modify block -30000000 0 1602 Items append from storage example:water_bottle_on_coarse_dirt temp.item

loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}


data remove block -30000000 0 1602 Items

data remove storage example:water_bottle_on_coarse_dirt temp
