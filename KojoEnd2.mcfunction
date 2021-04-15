tellraw @a ["",{"text":"ゲーム終了...","color":"green"}]
tellraw @a ["",{"text":"\n役職を選択しますか？ §e(ここをクリックしてください) \n","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @p page1 1"}}]
function kojogame:kojoscoreboard
title @a subtitle ["",{"text":"時間切れによる勝利","color":"gray","underlined":true}]
title @a title ["",{"text":"赤チームの勝利","color":"red","bold":true}]
scoreboard players tag @e remove timera
scoreboard players set §c赤チームの勝利 INFO1 -1
scoreboard players set §c時間 INFO1 -2
scoreboard players set §c切れになりました INFO1 -3
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 100000 0 
tp @a @e[c=1,type=Armor_Stand,name=lobby]
title @a times 30 20 30
gamemode 2 @a
scoreboard players set @e[type=Armor_Stand,name=join] jointime 1
scoreboard players set @e[type=Armor_Stand,name=iron] gameend 0
clear @a
scoreboard teams leave @a
scoreboard players tag @e[type=Armor_Stand,name=remove] add remove1
scoreboard players tag @e[type=Armor_Stand,tag=trap] add remove2
kill @e[type=zombie_pigman]
scoreboard players set @e[type=armor_stand,name=pigman] kpigzombie 3601
scoreboard players set @a count 0
spawnpoint @a ~ ~ ~
scoreboard players set @e[type=Armor_Stand,score_time=0,name=timer2] time 900
execute @e[type=Armor_Stand,tag=remove1] ~ ~ ~ fill ~ ~-15 ~ ~ ~-15 ~ minecraft:air 0 replace minecraft:carpet
execute @e[type=Armor_Stand,tag=remove2] ~ ~ ~ fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air 0 replace minecraft:stained_glass_pane
execute @e[type=Armor_Stand,tag=remove2] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ minecraft:air 0 replace minecraft:carpet
execute @e[type=Armor_Stand,tag=remove1] ~ ~ ~ kill @e[type=Armor_Stand,tag=remove1]
execute @e[type=Armor_Stand,tag=remove2] ~ ~ ~ kill @e[type=Armor_Stand,tag=remove2]
scoreboard players set @a Anti 0
scoreboard players set @a Anti1 0
scoreboard players tag @e[type=Armor_Stand,name=iron] remove started
tellraw @a[tag=debug] "§f§l[§r§cDebug§f§l] §a成功"