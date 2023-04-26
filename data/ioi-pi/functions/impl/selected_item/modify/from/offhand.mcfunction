#> ioi-pi:impl/selected_item/modify/from/offhand
#
#   >   Modify the selected item(s) from the offhand slot of the player
#
#@within function ioi-pi:impl/selected_item/get/from/offhand


#   Prepare and modify the selected item(s)
data modify storage ioi-pi:tmp/general root.queue.in set from storage phi.modifyinv:temp offhand

function ioi-pi:impl/selected_item/modify

data modify storage phi.modifyinv:temp offhand set from storage ioi-pi:tmp/general root.queue.out


#   Apply the changes to the selected item(s) in the offhand slot of the player and do some clean up
function phi.modifyinv:load/offhand

function phi.modifyinv:apply/offhand

function ioi-pi:impl/selected_item/clear
