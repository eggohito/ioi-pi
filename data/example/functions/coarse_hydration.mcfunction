execute if data storage ioi-pi:io {root: {phase: "start", item: "minecraft:coarse_dirt"}} if entity @s[tag = example.coarse_hydration] run function example:coarse_hydration/modify/phase/start

execute if data storage ioi-pi:io {root: {phase: "end", item: "minecraft:coarse_dirt"}} if entity @s[tag = example.coarse_hydration] run function example:coarse_hydration/modify/phase/end
