#> ioi-pi:impl/selected_item/get/container/modify
#
#@within function ioi-pi:impl/selected_item/get/container/as_marker


function ioi-pi:impl/selected_item/modify

execute as @a[tag = ioi-pi.player] run function #ioi-pi:api/selected_item/after_modifying


#   Apply the changes made with the contents of the container
data modify block ~ ~ ~ Items set from storage ioi-pi:temp temp.items
