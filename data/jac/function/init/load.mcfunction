# This file is part of Jacek Pack
#  it initializes variables and constants necessary for the pack

# Boss bar initialization
bossbar add jac:boss_health "Boss Health"
bossbar set jac:boss_health value 0
bossbar set jac:boss_health max 1
data modify storage jac:boss isActive set value False

# Initialize the time counters and reset them
scoreboard objectives add jac_timer dummy
scoreboard players set #tic_in_sec jac_timer 0
scoreboard players set #sec_in_min jac_timer 0
scoreboard players set #min_in_hour jac_timer 0

# Create triggers for the pack
scoreboard objectives add make_wearable trigger
scoreboard players enable @a make_wearable

say Jacek Pack Loaded
