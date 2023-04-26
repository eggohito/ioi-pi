#> ioi-pi:impl/selected_item/clear
#
#   >   Clear the contents of MinecraftPhi's Yellow Shulker Box and the `ioi-pi:tmp` data storage
#
#@within function ioi-pi:impl/selected_item/**


function phi.core:clear_shulker_box

data remove storage ioi-pi:tmp/general root
