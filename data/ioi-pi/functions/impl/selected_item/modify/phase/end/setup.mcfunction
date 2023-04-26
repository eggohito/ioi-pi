#> ioi-pi:impl/selected_item/modify/phase/end/setup
#
#@within function ioi-pi:impl/selected_item/get


#   Get and sort the items from the player's inventory into different sections
function phi.modifyinv:setup/whole_inventory

data modify storage ioi-pi:io root.phase set value "end"


#   Re-iterate through all the processed selected items again
data modify storage ioi-pi:tmp/general root.queue.in set from storage ioi-pi:tmp/special root.processed

function ioi-pi:impl/selected_item/modify
