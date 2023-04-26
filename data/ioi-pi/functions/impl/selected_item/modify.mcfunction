#> ioi-pi:impl/selected_item/modify
#
#   >   Modify the elements from the `root.items` NBT path of the `ioi-pi:tmp` data storage
#
#@within function ioi-pi:impl/selected_item/modify/**


#   Process the elements inside the `root.queue.in` NBT path if it's not empty
execute store result score #impl.selected_item.queue_size ioi-pi if data storage ioi-pi:tmp/general root.queue.in[]

execute if score #impl.selected_item.queue_size ioi-pi matches 1.. run function ioi-pi:impl/selected_item/modify/queue/iterate
