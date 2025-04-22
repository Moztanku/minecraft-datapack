# Updates the bossbar if the boss is active & alive
execute at @e[tag=jac_boss,limit=1] run \
  bossbar set jac:boss_health players @a[distance=..64]
execute store result bossbar jac:boss_health max run \
  attribute @e[tag=jac_boss,limit=1] minecraft:max_health get
execute store result bossbar jac:boss_health value run \
  data get entity @e[tag=jac_boss,limit=1] Health

# Reset the bossbar if the boss is not active
execute unless entity @e[tag=jac_boss,limit=1] run \
  bossbar set jac:boss_health visible false
execute unless entity @e[tag=jac_boss,limit=1] run \
  bossbar set jac:boss_health name "Boss Health"
execute unless entity @e[tag=jac_boss,limit=1] run \
  bossbar set jac:boss_health max 1
execute unless entity @e[tag=jac_boss,limit=1] run \
  data modify storage jac:boss isActive set value False
