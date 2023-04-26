#> ioi-pi:impl/selected_item/modify/from/inventory/block
#
#   >   Modify the selected item(s) from the inventory of nearby blocks
#
#@within function ioi-pi:impl/selected_item/get/from/inventory/block


#   Prepare and modify the selected items
data modify storage ioi-pi:tmp/general root.queue.in set from block ~ ~ ~ Items

execute if data storage ioi-pi:tmp/general root.queue.in[{tag: {ioi_pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/modify


#   Do some clean up afterwards
function ioi-pi:impl/selected_item/clear
