#> ioi-pi:impl/changed_dimension
#
#   >   Forceload the MinecraftPhi chunk in the entered dimension
#
#@within advancement ioi-pi:impl/changed_dimension


#   Forceload the MinecraftPhi chunk
forceload remove -30000000 1600

forceload add -30000000 1600

function phi.core:internal/create_burrow


#   Revoke the advancement
advancement revoke @s only ioi-pi:impl/changed_dimension
