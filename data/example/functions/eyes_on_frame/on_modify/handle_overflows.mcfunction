#   Get the difference of the `#items_to_add` score holder and the `#max_eyes` score holder to use as the count for the Ender Eye item
scoreboard players operation #set_extra_eyes_to example = #items_to_add example

scoreboard players operation #set_extra_eyes_to example -= #max_eyes example


#   Cap the score of the `#items_to_add` score holder to the score of the `#max_eyes` score holder
scoreboard players operation #items_to_add example = #max_eyes example


#   Call the `example:eyes_on_frame/on_modify/set_extra_eyes` recursive function to set the count of the Ender Eye
function example:eyes_on_frame/on_modify/set_extra_eyes
