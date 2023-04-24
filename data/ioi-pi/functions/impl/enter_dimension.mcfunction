#> ioi-pi:impl/enter_dimension
#
#   > Forceload the MinecraftPhi chunk upon entering a dimension
#
#@within advancement ioi-pi:impl/enter_dimension


#   Forceload the MinecraftPhi chunk
function ioi-pi:private/minecraftphi/forceload_chunk


#   Revoke the advancement
advancement revoke @s only ioi-pi:impl/enter_dimension
