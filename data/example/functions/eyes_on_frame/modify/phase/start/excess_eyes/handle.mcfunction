#   Get the difference between the amount of Ender Eyes to be added to the End Portal Frame and the max amount of Ender Eyes the End Portal Frame item can store
scoreboard players operation #eyes.max_excess_amount eyes_on_frame = #eyes.total_amount eyes_on_frame

scoreboard players operation #eyes.max_excess_amount eyes_on_frame -= #eyes.max_amount eyes_on_frame


#   Use the score of the `#eyes.max_amount` score holder as the maximum value of the `#eyes.to_add` score holder
scoreboard players operation #eyes.total_amount eyes_on_frame = #eyes.max_amount eyes_on_frame


#   Call the `example:eyes_on_frame/modify/on/get_eyes` function to 
function example:eyes_on_frame/modify/phase/start/excess_eyes/decrement
