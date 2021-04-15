tellraw @a "§e試合が開始されました！"
clear @a
effect @a clear


#見えにくいので移動
give @a[tag=SwordMaster] minecraft:diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:552839,UUIDMost:248324,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:715332,UUIDMost:462649,Slot:"mainhand"}],Unbreakable:1,display:{Name:"§a普通のダイヤの剣",Lore:["§a性能は普通"]}}
give @a[tag=Trapper] minecraft:stone_axe 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:534662,UUIDMost:352017,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:9999,Operation:0,UUIDLeast:576784,UUIDMost:96996}],Unbreakable:1,display:{Name:"§a特殊なの石の斧",Lore:["§cダメージ5"]}}
give @a iron_ingot
give @a gold_ingot

scoreboard objectives remove INFO1
scoreboard objectives add INFO1 dummy §a情報 / パネル1
scoreboard objectives setdisplay sidebar INFO1
scoreboard players reset >鉄:§c破壊されています INFO2
scoreboard players reset >§6金:§c破壊されています INFO2
scoreboard players reset >§bダイヤ:§c破壊されています INFO2
scoreboard players tag @e[type=Armor_Stand,name=iron] add started
difficulty normal
scoreboard players tag @e[type=Armor_Stand,name=timer1] add timera
scoreboard players set @e[type=Armor_Stand,name=timer2] time 900
scoreboard players set @e[type=armor_stand,name=pigman] kpigzombie 1500	
execute @a[team=blue] ~ ~ ~ tp @p @e[c=1,type=Armor_Stand,name=bluespawn]
execute @a[team=red] ~ ~ ~ tp @p @e[c=1,type=Armor_Stand,name=redspawn]
give @a minecraft:apple 64
give @a[team=blue] minecraft:wooden_shovel 1 0 {CanDestroy:["minecraft:sponge"],display:{Name:"§aスポンジ破壊用"},Unbreakable:1,ench:[{id:32,lvl:1}]}
give @a minecraft:diamond 1 0 {display:{Name:"§b投げると、スポーン地点に戻れる優れもの"}}
execute @e[type=Armor_Stand,name=iron] ~ ~ ~ setblock ~ ~-1 ~ minecraft:sponge
execute @e[type=Armor_Stand,name=gold] ~ ~ ~ setblock ~ ~-1 ~ minecraft:sponge
execute @e[type=Armor_Stand,name=dia] ~ ~ ~ setblock ~ ~-1 ~ minecraft:sponge
execute @a[team=blue] ~ ~ ~ /spawnpoint @p ~ ~ ~
execute @a[team=red] ~ ~ ~ /spawnpoint @p ~ ~ ~
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 500 1
gamemode 3 @a[team=]
tellraw @a ["",{"text":"～ルール説明～","color":"green"}]
tellraw @a ["",{"text":"1.レッドは防衛側 ブルーは攻め側です","color":"green"}]
tellraw @a ["",{"text":"2.青チームの勝利条件はスポンジをすべて破壊すること","color":"green"}]
tellraw @a ["",{"text":"3.赤チームの勝利条件は時間切れです","color":"green"}]
tellraw @a ["",{"text":"4.ダイヤを捨てることで、チームのスポーンに戻ることができます.","color":"green"}]
effect @a minecraft:regeneration 5 255
effect @a minecraft:saturation 5 255
tellraw @a[team=] ["",{"text":"観戦モードになりました.","color":"green"}]
execute @e[type=Armor_Stand,name=iron] ~ ~ ~ scoreboard players set >鉄:§a破壊されていません INFO2 3
execute @e[type=Armor_Stand,name=gold] ~ ~ ~ scoreboard players set >§6金:§a破壊されていません INFO2 2 
execute @e[type=Armor_Stand,name=dia] ~ ~ ~ scoreboard players set >§bダイヤ:§a破壊されていません INFO2 1
scoreboard players set §aこのパネルは10秒ごとに自動的に変わります INFO2 0
scoreboard players set §bKojoGame2.0 INFO2 0
scoreboard players set §9青の目標:スポンジの破壊 INFO -6
scoreboard players set §c赤の目標:時間切れ INFO -7