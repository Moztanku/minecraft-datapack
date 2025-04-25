# This function makes held banner items wearable
# black_banner, blue_banner, brown_banner, cyan_banner, gray_banner, green_banner,
# light_blue_banner, light_gray_banner, lime_banner, magenta_banner, orange_banner,
# pink_banner, purple_banner, red_banner, white_banner, yellow_banner

# We have to check for each possible banner color separately since
#   they all have different item IDs
#   we also check if the item already has the custom data tag
execute \
    unless items entity @s weapon.mainhand black_banner \
    unless items entity @s weapon.mainhand blue_banner \
    unless items entity @s weapon.mainhand brown_banner \
    unless items entity @s weapon.mainhand cyan_banner \
    unless items entity @s weapon.mainhand gray_banner \
    unless items entity @s weapon.mainhand green_banner \
    unless items entity @s weapon.mainhand light_blue_banner \
    unless items entity @s weapon.mainhand light_gray_banner \
    unless items entity @s weapon.mainhand lime_banner \
    unless items entity @s weapon.mainhand magenta_banner \
    unless items entity @s weapon.mainhand orange_banner \
    unless items entity @s weapon.mainhand pink_banner \
    unless items entity @s weapon.mainhand red_banner \
    unless items entity @s weapon.mainhand white_banner \
    unless items entity @s weapon.mainhand yellow_banner \
    run tellraw @s {"text":"You can only make banners wearable!","color":"red"}

execute \
    if items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run tellraw @s {"text": "Item already wearable!", "color":"red"}

execute if items entity @s weapon.mainhand black_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand blue_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand brown_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand cyan_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand gray_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand green_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand light_blue_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand light_gray_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand lime_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand magenta_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand orange_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand pink_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand red_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand white_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable
execute if items entity @s weapon.mainhand yellow_banner \
    unless items entity @s weapon.mainhand *[custom_data={"wearable":True}] \
    run item modify entity @s weapon.mainhand jac:wearable

scoreboard players set @s make_wearable 0
scoreboard players enable @s make_wearable
