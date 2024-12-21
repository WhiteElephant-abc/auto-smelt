function dfl:lib/things_count {name:"raw_iron"}
function dfl:lib/things_count {name:"coal_block"}
execute \
    if score @s dfl_raw_iron_num matches 9.. \
    if score @s dfl_coal_block_num matches 1.. \
    if score @s xp matches 9.. run \
    tag @s add raw_iron_coal_block
give @s[tag=raw_iron_coal_block] iron_ingot 9
clear @s[tag=raw_iron_coal_block] raw_iron 9
clear @s[tag=raw_iron_coal_block] coal_block 1
xp add @s[tag=raw_iron_coal_block] -9
tag @s remove raw_iron_coal_block


function dfl:lib/things_count {name:"raw_iron"}
function dfl:lib/things_count {name:"coal"}
execute \
    if score @s dfl_raw_iron_num matches 1.. \
    if score @s dfl_coal_num matches 1.. \
    if score @s xp matches 1.. run \
    tag @s add raw_iron_coal
give @s[tag=raw_iron_coal] iron_ingot
clear @s[tag=raw_iron_coal] raw_iron 1
clear @s[tag=raw_iron_coal] coal 1
xp add @s[tag=raw_iron_coal] -1
tag @s remove raw_iron_coal


function dfl:lib/things_count {name:"raw_iron"}
function dfl:lib/things_count {name:"charcoal"}
execute \
    if score @s dfl_raw_iron_num matches 1.. \
    if score @s dfl_charcoal_num matches 1.. \
    if score @s xp matches 1.. run \
    tag @s add raw_iron_charcoal
give @s[tag=raw_iron_charcoal] iron_ingot
clear @s[tag=raw_iron_charcoal] raw_iron 1
clear @s[tag=raw_iron_charcoal] charcoal 1
xp add @s[tag=raw_iron_charcoal] -1
tag @s remove raw_iron_charcoal