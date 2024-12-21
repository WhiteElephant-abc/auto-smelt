function dfl:lib/things_count {name:"coal_block"}
execute if score @s dfl_raw_iron_num matches 9.. if score @s dfl_coal_block_num matches 9.. if score @s xp matches 9.. run \
    tag @s add raw_iron
give @s[tag=raw_iron] iron_ingot 9
clear @s[tag=raw_iron] raw_iron 9
clear @s[tag=raw_iron] coal_block 9
xp add @s[tag=raw_iron] -9
tag @s remove raw_iron
execute if score @s dfl_raw_iron_num matches 9.. if score @s dfl_coal_block_num matches 9.. if score @s xp matches 9.. run \
    function auto_smelt:smelt {name:"raw_iron",to:"iron_ingot"}



function dfl:lib/things_count {name:"coal"}
function dfl:lib/things_count {name:"raw_iron"}
execute if score @s dfl_raw_iron_num matches 1.. if score @s dfl_coal_num matches 1.. if score @s xp matches 1.. run \
    tag @s add raw_iron
give @s[tag=raw_iron] iron_ingot
clear @s[tag=raw_iron] raw_iron 1
clear @s[tag=raw_iron] coal 1
xp add @s[tag=raw_iron] -1
tag @s remove raw_iron
execute if score @s dfl_raw_iron_num matches 1.. if score @s dfl_coal_num matches 1.. if score @s xp matches 1.. run \
    function auto_smelt:smelt {name:"raw_iron",to:"iron_ingot"}



function dfl:lib/things_count {name:"charcoal"}
execute if score @s dfl_raw_iron_num matches 1.. if score @s dfl_charcoal_num matches 1.. if score @s xp matches 1.. run \
    tag @s add raw_iron
give @s[tag=raw_iron] iron_ingot
clear @s[tag=raw_iron] raw_iron 1
clear @s[tag=raw_iron] charcoal 1
xp add @s[tag=raw_iron] -1
tag @s remove raw_iron
execute if score @s dfl_raw_iron_num matches 1.. if score @s dfl_charcoal_num matches 1.. if score @s xp matches 1.. run \
    function auto_smelt:smelt {name:"raw_iron",to:"iron_ingot"}