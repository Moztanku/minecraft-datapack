# Summon a skeleton with full netherite armor
#   set custom tag "worked_on"
summon minecraft:wither_skeleton ~ ~ ~ {Tags:["worked_on"]}

# Set the skeleton's custom name to "Dark Skeleton"
data modify entity @n[tag=worked_on] CustomName set value '{"text":"Dark Skeleton","color":"dark_red","bold":true}'

# Set their health to 100 (50 hearts)
attribute @n[tag=worked_on] minecraft:max_health base set 100
data modify entity @n[tag=worked_on] Health set value 100

# Give the skeleton full netherite armor with protection 5
#  boots
item replace entity @n[tag=worked_on] armor.feet with minecraft:netherite_boots[ \
  minecraft:enchantments={protection:5}, \
  minecraft:enchantment_glint_override=false \
]

#  leggings
item replace entity @n[tag=worked_on] armor.legs with minecraft:netherite_leggings[ \
  minecraft:enchantments={protection:5}, \
  minecraft:enchantment_glint_override=false \
]

#  chestplate
item replace entity @n[tag=worked_on] armor.chest with minecraft:netherite_chestplate[ \
  minecraft:enchantments={protection:5}, \
  minecraft:enchantment_glint_override=false \
]

#  helmet
item replace entity @n[tag=worked_on] armor.head with minecraft:netherite_helmet[ \
  minecraft:enchantments={protection:5}, \
  minecraft:enchantment_glint_override=false \
]

# Give the skeleton netherite axes with enchantment glint
#  main hand
item replace entity @n[tag=worked_on] weapon.mainhand with minecraft:netherite_axe[minecraft:enchantment_glint_override=true]
#  off hand
item replace entity @n[tag=worked_on] weapon.offhand with minecraft:netherite_axe[minecraft:enchantment_glint_override=true]

# Make the items non-droppable
data modify entity @n[tag=worked_on] ArmorDropChances set value [0.0f, 0.0f, 0.0f, 0.0f]
data modify entity @n[tag=worked_on] HandDropChances set value [0.0f, 0.0f]

# Make their size match normal skeletons
attribute @n[tag=worked_on] minecraft:scale base set 0.80

# Set skeleton as a boss, and bossbar name to "Dark Skeleton" (unless there's already another boss)
#   set bossbar name to "Dark Skeleton"
execute unless entity @e[tag=jac_boss,limit=1] run \
  bossbar set jac:boss_health name "The Dark Skeleton"
#   set boss to active
execute unless entity @e[tag=jac_boss,limit=1] run \
  data modify storage jac:boss isActive set value True
#   set bossbar visible
execute unless entity @e[tag=jac_boss,limit=1] run \
  bossbar set jac:boss_health visible true
#   add tag "jac_boss" to the skeleton
execute unless entity @e[tag=jac_boss,limit=1] run \
  tag @n[tag=worked_on] add jac_boss

# Remove the custom tag "worked_on"
tag @n[tag=worked_on] remove worked_on
