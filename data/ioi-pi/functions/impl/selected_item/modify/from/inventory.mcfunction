#> ioi-pi:impl/selected_item/modify/from/inventory
#
#   >   Modify the selected item(s) from the inventory slots of the player
#
#@within function ioi-pi:impl/selected_item/get/from/inventory


#   Prepare and modify the selected item(s)
data modify storage ioi-pi:tmp/general root.queue.in set from storage phi.modifyinv:temp inventory

function ioi-pi:impl/selected_item/modify

data modify storage phi.modifyinv:temp inventory set from storage ioi-pi:tmp/general root.queue.out


#   Apply the changes to the selected item(s) in the armor slots of the player and do some clean up
function phi.modifyinv:load/inventory

function phi.modifyinv:apply/inventory

function ioi-pi:impl/selected_item/clear
