#> ioi-pi:impl/selected_item/modify/queue/iterate
#
#   >   Iterate through each element of the `root.queue.in` NBT path of the `ioi-pi:tmp` data storage
#
#@within
#   function ioi-pi:impl/selected_item/modify
#   function ioi-pi:impl/selected_item/modify/queue/iterate


#   Modify the current element if it's selected
execute if data storage ioi-pi:tmp/general root.queue.in[-1].tag{ioi_pi: {selected: 1b}} unless data storage ioi-pi:tmp/general root.queue.in[-1].tag{ioi_pi: {type: "using_item"}} run function ioi-pi:impl/selected_item/modify/queue/peek


#   Remove the `ioi_pi` NBT compound from the current element
data remove storage ioi-pi:tmp/general root.queue.in[-1].tag.ioi_pi


#   Remove the `tag` NBT compound from the current element if it's empty
execute store result score #impl.selected_item.tags ioi-pi run data get storage ioi-pi:tmp/general root.queue.in[-1].tag

execute unless score #impl.selected_item.tags ioi-pi matches 1.. run data remove storage ioi-pi:tmp/general root.queue.in[-1].tag


#   Move the current element from `root.queue.in` to `root.queue.out`
data modify storage ioi-pi:tmp/general root.queue.out prepend from storage ioi-pi:tmp/general root.queue.in[-1]

data remove storage ioi-pi:tmp/general root.queue.in[-1]


#   Loop this function until the queue is empty
scoreboard players remove #impl.selected_item.queue_size ioi-pi 1

execute if score #impl.selected_item.queue_size ioi-pi matches 1.. run function ioi-pi:impl/selected_item/modify/queue/iterate
