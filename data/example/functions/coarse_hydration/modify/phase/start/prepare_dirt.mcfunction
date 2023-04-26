#   Subtract 1 from the current count of the Coarse Dirt item that is being modified
execute store result storage ioi-pi:io root.item.Count byte 1 run scoreboard players remove #coarse_dirts coarse_hydration 1


#   Prepare the item to be given later
data modify storage example:coarse_hydration root.item set from storage ioi-pi:io root.item

data modify storage example:coarse_hydration root.item.id set value "minecraft:dirt"

data modify storage example:coarse_hydration root.item.Count set value 1b

data remove storage example:coarse_hydration root.item.tag.ioi_pi
