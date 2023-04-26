#> ioi-pi:impl/selected_item/modify/queue/peek
#
#   >   Modify the current element
#
#@within function ioi-pi:impl/selected_item/modify/queue/iterate


#   Clone the current element to the `root.item` NBT path of the `ioi-pi:io` data storage
data modify storage ioi-pi:io root.item set from storage ioi-pi:tmp/general root.queue.in[-1]

data remove storage ioi-pi:io root.item.Slot


#   Modify the current element if it's accessible via NBT
execute if score #impl.selected_item.inaccessible ioi-pi matches 0 if data storage ioi-pi:io {root: {phase: "start"}} as @a[tag = ioi-pi.player] run function ioi-pi:impl/selected_item/modify/phase/start

execute if score #impl.selected_item.inaccessible ioi-pi matches 0 if data storage ioi-pi:io {root: {phase: "end"}} as @a[tag = ioi-pi.player] run function ioi-pi:impl/selected_item/modify/phase/end


#   Replace the current element with the clone
data modify storage ioi-pi:tmp/general root.item.Slot set from storage ioi-pi:tmp/general root.queue.in[-1].Slot

data modify storage ioi-pi:tmp/general root.queue.in[-1] set from storage ioi-pi:io root.item
