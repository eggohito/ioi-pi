#> ioi-pi:private/dhp
#
#   >   A function for declaring stuff to be used for Datapack Helper Plus
#
#@private


#>  Data storages (internal)
#   -   `ioi-pi:tmp`    =   Used for processing temporary data
#@internal
    #declare storage ioi-pi:tmp/general
    #declare storage ioi-pi:tmp/special


#>  Data storages (public)
#   -   `ioi-pi:io`     =   Used for storing the selected item
#@public
    #declare storage ioi-pi:io


#>  Score holders
#   -   `#impl.selected_item.inaccessible`  =   Determines whether the selected item(s) cannot be accessed via NBT
#   -   `#impl.selected_item.queue_size`    =   Determines the size of the queue of selected item(s) to modify
#@internal
    #declare score_holder #impl.selected_item.inaccessible
    #declare score_holder #impl.selected_item.queue_size


#>  Scoreboard tags
#   -   `ioi-pi.player`                 =   Used to refer to the player in some scenarios where the context of the executor is changed
#   -   `ioi-pi.block_with_inventory`   =   Used for marking a block with an inventory
#   -   `ioi-pi.entity_with_inventory`  =   Used to refer to the entity with an inventory
#@internal
    #declare tag ioi-pi.player
    #declare tag ioi-pi.block_with_inventory
    #declare tag ioi-pi.entity_with_inventory


#>  Block positions
#   -   `-30000000 0 1602`  =   MinecraftPhi's Yellow Shulker Box
#   -   `-30000000 0 1603`  =   MinecraftPhi's Oak Wall Sign
#@public
    #alias vector "MinecraftPhi's Yellow Shulker Box" -30000000 0 1602
    #alias vector "MinecraftPhi's Oak Wall Sign" -30000000 0 1603