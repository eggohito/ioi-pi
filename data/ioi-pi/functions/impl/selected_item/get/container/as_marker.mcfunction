#> ioi-pi:impl/selected_item/get/container/as_marker
#
#   > Execute as the marker for the container block
#
#@within function ioi-pi:impl/selected_item/get/container


#   Do some clean up before processing
function ioi-pi:impl/selected_item/clean_up


#   Get the contents of the container and process it
data modify storage ioi-pi:temp temp.items set from block ~ ~ ~ Items

execute if data storage ioi-pi:temp temp.items[{tag: {ioi-pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/get/container/modify
