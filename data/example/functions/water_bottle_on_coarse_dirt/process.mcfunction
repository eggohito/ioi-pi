#   Change the ID of the selected item to `minecraft:dirt` if it's a Coarse Dirt
execute if data storage ioi-pi:output {item: {id: "minecraft:coarse_dirt"}} run data modify storage ioi-pi:output item.id set value "minecraft:dirt"
