#アイテムを与える
clear @a[tag=ItemGet]
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§fロビー"},EntityTag:{id:"minecraft:silverfish",CustomName:"lobby",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§c赤のスポーン地点"},EntityTag:{id:"minecraft:silverfish",CustomName:"redspawn",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§9青のスポーン地点"},EntityTag:{id:"minecraft:silverfish",CustomName:"bluespawn",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§f鉄のスポンジ"},EntityTag:{id:"minecraft:silverfish",CustomName:"ironsponge",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§6金のスポンジ"},EntityTag:{id:"minecraft:silverfish",CustomName:"goldsponge",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§bダイヤのスポンジ"},EntityTag:{id:"minecraft:silverfish",CustomName:"diamondsponge",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§b残り時間アーマースタンド1※関係ないところに置くのをお勧めします"},EntityTag:{id:"minecraft:silverfish",CustomName:"timer1",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§b§b残り時間アーマースタンド2※関係ないところに置くのをお勧めします"},EntityTag:{id:"minecraft:silverfish",CustomName:"timer2",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§bコマンド"},EntityTag:{id:"minecraft:silverfish",CustomName:"cmd",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§b参加アーマースタンド 広さ:r=3"},EntityTag:{id:"minecraft:silverfish",CustomName:"join",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§b不参加アーマースタンド 広さ:r=3"},EntityTag:{id:"minecraft:silverfish",CustomName:"leave",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§bピッグマン(1体まで可能)"},EntityTag:{id:"minecraft:silverfish",CustomName:"pigman",CustomNameVisible:1}}
give @a[tag=ItemGet] minecraft:spawn_egg 1 60 {display:{Name:"§6Villager(動くので注意)"},EntityTag:{id:"minecraft:silverfish",CustomName:"villager",CustomNameVisible:1}}
give @a[tag=ItemGet] written_book 1 0 {pages:["[\"\",{\"text\":\"§c\"},{\"text\":\"\\u30b9\\u30bf\\u30fc\\u30c8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players tag @e[type=Armor_Stand,name=iron] add start\"}}]","[\"\",{\"text\":\"Ver 1.0\\u03b2\",\"bold\":true,\"underlined\":true,\"color\":\"gold\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\" Function\\u3067\\u653b\\u57ce\\u6226\\u3092\\u904a\\u3079\\u308b\\u3088\\u3046\\u306b\\u3057\\u307e\\u3057\\u305f\\n\\n \\u7c21\\u5358\\u306b\\u8a2d\\u5b9a\\u3067\\u304d\\u308b\\u3088\\u3046\\u306b\\u3057\\u307e\\u3057\\u305f\\n\\n \\u30b9\\u30dd\\u30f3\\u30b8\\u304c\\u6d88\\u3048\\u308b\\u554f\\u984c\\u3092\\u4fee\\u6b63\",\"color\":\"green\"},{\"text\":\"\\n \",\"color\":\"reset\"}]","[\"\",{\"text\":\"Ver 1.0\",\"bold\":true,\"underlined\":true,\"color\":\"gold\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\" ActionBar\\u306b\\u30bf\\u30a4\\u30e0\\u3092\\u8868\\u793a\\u3059\\u308b\\u3088\\u3046\\u306b\\u3057\\u307e\\u3057\\u305f\\n \\n \\u30b2\\u30fc\\u30e0\\u304c\\u7d42\\u308f\\u3089\\u306a\\u3044\\u554f\\u984c\\u3092\\u4fee\\u6b63\\u3057\\u307e\\u3057\\u305f\",\"color\":\"green\"},{\"text\":\"\\n\\n \",\"color\":\"reset\"}]","[\"\",{\"text\":\"Ver 1.1\",\"bold\":true,\"underlined\":true,\"color\":\"gold\"},{\"text\":\"\\n\\n §a\\u6368\\u3066\\u308b\\u3068\\u30a2\\u30a4\\u30c6\\u30e0\\u304c\\u306a\\u304f\\u306a\\u308b\\u554f\\u984c\\u3092\\u4fee\\u6b63\\n\\n §a\\u5f13\\u306e\\u8010\\u4e45\\u304c\\u6e1b\\u308b\\u554f\\u984c\\u3092\\u4fee\\u6b63\",\"color\":\"reset\"}]"],title:"攻城戦",author:"攻城戦. gomapon_d"}
scoreboard players tag @a[tag=ItemGet] remove ItemGet

#リスポーンメッセージ
execute @a[score_death_min=1,team=blue,score_respawn_min=1] ~ ~ ~ /tellraw @a[team=blue] ["",{"selector":"@p"},{"text":"はリスポーンしました！","color":"blue"}]
execute @a[score_death_min=1,team=blue,score_respawn_min=1] ~ ~ ~ /playsound minecraft:entity.player.levelup player @a[team=blue] ~ ~ ~ 50000 1 
execute @a[score_death_min=1,team=red,score_respawn_min=1] ~ ~ ~ /tellraw @a ["",{"selector":"@p"},{"text":"はリスポーンしました！","color":"red"}]
execute @a[score_death_min=1,team=red,score_respawn_min=1] ~ ~ ~ /playsound minecraft:entity.player.levelup player @a[team=red] ~ ~ ~ 50000 1 
execute @a[score_death_min=1,team=,score_respawn_min=1] ~ ~ ~  /tellraw @a[team=] ["",{"selector":"@p"},{"text":"はリスポーンしました！","color":"white"}]
scoreboard players set @a[score_death_min=0,score_respawn_min=1] death 0

#effect
effect @a minecraft:night_vision 100000 0 true
execute @e[type=Armor_Stand,name=iron] ~ ~ ~ effect @e[type=Armor_Stand,name=iron] minecraft:glowing 10 0 true
execute @e[type=Armor_Stand,name=gold] ~ ~ ~ effect @e[type=Armor_Stand,name=gold] minecraft:glowing 10 0 true
execute @e[type=Armor_Stand,name=dia] ~ ~ ~ effect @e[type=Armor_Stand,name=dia] minecraft:glowing 10 0 true
#skill1
execute @e[type=Zombie_Pigman] ~ ~ ~ /scoreboard players add @e[type=Zombie_Pigman] kpigzombie 1
execute @e[type=Zombie_Pigman,score_kpigzombie_min=160,tag=!added1] ~ ~ ~ /summon armor_stand ~ ~10 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:"boss1"}
execute @e[type=Zombie_Pigman,score_kpigzombie_min=200,tag=!added1] ~ ~ ~ /tellraw @a[r=30] "§7ボスが技を発動！ 技内容: ??? 概要:雷を落とす！"
execute @e[type=Zombie_Pigman,score_kpigzombie_min=200,tag=!added1] ~ ~ ~ execute @e[type=Armor_Stand,name=boss1] ~ ~ ~ /spreadplayers ~ ~ 0 15 false @e[type=Armor_Stand,name=boss1,c=1]
execute @e[type=Zombie_Pigman,score_kpigzombie_min=200,tag=!added1] ~ ~ ~ execute @e[type=Armor_Stand,name=boss1] ~ ~ ~ tp @e[type=Armor_Stand,name=boss1,c=1] ~ ~10 ~
execute @e[type=Zombie_Pigman,score_kpigzombie_min=200,tag=!added1] ~ ~ ~ /scoreboard players tag @e[type=Zombie_Pigman] add added1
execute @e[type=Zombie_Pigman,score_kpigzombie_min=300,tag=added1] ~ ~ ~ execute @e[type=Armor_Stand,name=boss1] ~ ~ ~ /summon minecraft:lightning_bolt ~ ~-10 ~
execute @e[type=Zombie_Pigman,score_kpigzombie_min=300,tag=added1] ~ ~ ~ kill @e[type=Armor_Stand,name=boss1]
execute @e[type=Zombie_Pigman,score_kpigzombie_min=300,tag=added1] ~ ~ ~ effect @e[type=Zombie_Pigman] minecraft:fire_resistance 50 2 true
#skill1
execute @e[type=Zombie_Pigman,score_kpigzombie_min=550,tag=!added3] ~ ~ ~ /summon armor_stand ~ ~10 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:"boss2"}
execute @e[type=Zombie_Pigman,score_kpigzombie_min=550,tag=!added3b] ~ ~ ~ /tellraw @a "§7ボスが技を発動！ 技内容: ??? 概要:雷を落とす！"
execute @e[type=Zombie_Pigman,score_kpigzombie_min=550,tag=!added3] ~ ~ ~ execute @e[type=Armor_Stand,name=boss2] ~ ~ ~ /spreadplayers ~ ~ 0 15 false @e[type=Armor_Stand,name=boss2,c=1]
execute @e[type=Zombie_Pigman,score_kpigzombie_min=550,tag=!added3] ~ ~ ~ execute @e[type=Armor_Stand,name=boss2] ~ ~ ~ tp @e[type=Armor_Stand,name=boss1,c=1] ~ ~10 ~
execute @e[type=Zombie_Pigman,score_kpigzombie_min=550,tag=!added3] ~ ~ ~ /scoreboard players tag @e[type=Zombie_Pigman] add added3b
execute @e[type=Zombie_Pigman,score_kpigzombie_min=550,tag=added3] ~ ~ ~ execute @e[type=Armor_Stand,name=boss2] ~ ~ ~ /summon minecraft:lightning_bolt ~ ~-10 ~
execute @e[type=Zombie_Pigman,score_kpigzombie_min=550,tag=added3] ~ ~ ~ kill @e[type=Armor_Stand,name=boss2]
execute @e[type=Zombie_Pigman,score_kpigzombie_min=550,tag=added3] ~ ~ ~ effect @e[type=Zombie_Pigman] minecraft:fire_resistance 50 2 true
execute @e[type=Zombie_Pigman,score_kpigzombie_min=570,tag=!added3] ~ ~ ~ /scoreboard players tag @e[type=Zombie_Pigman] add added3
#skill2
execute @e[type=Zombie_Pigman,score_kpigzombie_min=500,tag=!added2] ~ ~ ~ tellraw @a[r=30] "§7ボスが技を発動！ 技内容: 回復 概要:回復"
execute @e[type=Zombie_Pigman,score_kpigzombie_min=500,tag=!added2] ~ ~ ~ execute @e[type=Zombie_Pigman] ~ ~ ~ particle heart ~ ~1 ~ 0 0 0 5 1 force
execute @e[type=Zombie_Pigman,score_kpigzombie_min=500,tag=!added2] ~ ~ ~ effect @e[type=Zombie_Pigman] minecraft:instant_damage 1 3
execute @e[type=Zombie_Pigman,score_kpigzombie_min=500,tag=!added2] ~ ~ ~ /scoreboard players tag @e[type=Zombie_Pigman] add added2
#警告
execute @e[type=Zombie_Pigman,tag=added1,score_kpigzombie_min=200] ~ ~ ~ execute @e[type=Armor_Stand,name=boss1] ~ ~ ~ /particle cloud ~ ~-10 ~ 0 0 0 10
execute @e[type=Armor_Stand,score_time_min=19,name=timer1] ~ ~ ~ execute @e[type=Zombie_Pigman,tag=added1,score_kpigzombie_min=200] ~ ~ ~ execute @e[type=Armor_Stand,name=boss1] ~ ~-10 ~ tellraw @a[r=3] "§cWarning! / 今すぐ逃げてください！"
execute @e[type=Zombie_Pigman,tag=added1,score_kpigzombie_min=200] ~ ~ ~ execute @e[type=Armor_Stand,name=boss1] ~ ~-10 ~ /playsound minecraft:block.note.pling master @a[r=3] ~ ~ ~ 5000 1
#リセット
execute @e[type=Zombie_Pigman,score_kpigzombie_min=1000,tag=added1] ~ ~ ~ /scoreboard players tag @e[type=Zombie_Pigman] remove added1
execute @e[type=Zombie_Pigman,score_kpigzombie_min=1000,tag=added2] ~ ~ ~ /scoreboard players tag @e[type=Zombie_Pigman] remove added2
execute @e[type=Zombie_Pigman,score_kpigzombie_min=1000,tag=added3] ~ ~ ~ /scoreboard players tag @e[type=Zombie_Pigman] remove added3
execute @e[type=Zombie_Pigman,score_kpigzombie_min=1000,tag=added3b] ~ ~ ~ /scoreboard players tag @e[type=Zombie_Pigman] remove added3b
execute @e[type=Zombie_Pigman,score_kpigzombie_min=1000] ~ ~ ~ /scoreboard players set @e[type=Zombie_Pigman] kpigzombie 0

#welcome
execute @a[score_joinserver_min=1] ~ ~ ~ tellraw @p "§aこんにちは お帰りなさい！このゲームは [KOJOGAME] §e(Ver2.0β) §aです。"
execute @a[score_joinserver_min=1] ~ ~ ~ tellraw @p "§c注意してください、このVerはベータ版の為バグがある可能性があります\n"
execute @a[score_joinserver_min=1] ~ ~ ~ tellraw @p ["",{"text":"役職を選択しますか？ §e(ここをクリックしてください) \n","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @p page1 1"}}]
execute @a[score_joinserver_min=1] ~ ~ ~ tellraw @p "§c確認されているバグ: 参加ができないバグ -リピートコマンドで \n§b/scoreboard teams join join @a[team=] §cと打って動力を与えてください.."
execute @a[score_joinserver_min=1] ~ ~ ~ tellraw @p "§c[あーどみん] しらないひと§b: [お知らせ] §b02kareさんにKojoGame(Function)を作ってもらうことになりました"
execute @a[score_joinserver_min=1] ~ ~ ~ scoreboard players set @p joinserver 0

#weather clear
weather clear

function kojogame:kojoskill
function kojogame:kojoskillselect

#初回設定
execute @a[score_playtime=1] ~ ~ ~ scoreboard players set @p Skill1 0
execute @a[score_playtime=1] ~ ~ ~ scoreboard players set @p Skill2 0
execute @a[score_playtime=1] ~ ~ ~ /tellraw @a ["",{"selector":"@a[score_playtime=20]","color":"green"},{"text":"さんが初回参加しました","color":"green"}]
execute @a[score_playtime=1] ~ ~ ~ /playsound minecraft:entity.player.levelup player @a ~ ~ ~ 50000
execute @a[score_playtime=1] ~ ~ ~ /tellraw @a "<02kare> 私が攻城戦作ります！"
execute @a[score_playtime=1] ~ ~ ~ /summon fireworks_rocket ~ ~1 ~ {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;5635840],FadeColors:[I;5635840]}]}}}}
effect @a[score_playtime=1] minecraft:instant_health 1 10
effect @a[score_playtime=1] minecraft:saturationration 1 10
execute @a[score_playtime=1] ~ ~ ~ /tellraw @p ["",{"text":"[game] ヒールしました","color":"green"}]

#dropgive
give @a[score_sword_min=1,team=!] minecraft:stone_sword 1 0 {"Unbreakable":1b,"AttributeModifiers":[{"Name":"HaruEditor","UUIDLeast":1590150226l,"UUIDMost":1590150226l,"Operation":0,"AttributeName":"generic.attackSpeed","Amount":500d,"Slot":"mainhand"},{"Name":"HaruEditor","UUIDLeast":1590150226l,"UUIDMost":1590150226l,"Operation":0,"AttributeName":"generic.attackDamage","Amount":6d,"Slot":"mainhand"}],"HideFlags":63}
give @a[score_bow_min=1,team=!] minecraft:bow 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:51,lvl:1}]}
give @a[score_arrow_min=1,team=!] minecraft:arrow
give @a[score_shovel_min=1,team=blue] minecraft:wooden_shovel 1 0 {CanDestroy:["minecraft:sponge"],display:{Name:"§aスポンジ破壊用"},Unbreakable:1,ench:[{id:32,lvl:1}]}
give @a[score_sponge_min=1,team=!] minecraft:sponge
tellraw @a[score_sword_min=1,team=!] ["",{"text":"アイテムは投げれません","color":"gray"}]
tellraw @a[score_bow_min=1,team=!] ["",{"text":"アイテムは投げれません","color":"gray"}]
tellraw @a[score_arrow_min=1,team=!] ["",{"text":"アイテムは投げれません","color":"gray"}]
tellraw @a[score_shovel_min=1,team=blue] ["",{"text":"アイテムは投げれません","color":"gray"}]
tellraw @a[score_sponge_min=1,team=!] ["",{"text":"アイテムは投げれません","color":"gray"}]
scoreboard players set @a[score_sword_min=1,team=!] sword 0
scoreboard players set @a[score_bow_min=1,team=!] bow 0
scoreboard players set @a[score_arrow_min=1,team=!] arrow 0
scoreboard players remove @a[score_apple_min=1,team=!] apple 1  
scoreboard players set @a[score_shovel_min=1,team=blue] shovel 0
scoreboard players remove @a[score_sponge_min=1,team=!] sponge 1
#罠設置処理
execute @a[score_sugar_min=1,team=!red] ~ ~ ~ tellraw @p ["",{"text":"エラー... チームの指定がおかしいです...","color":"red"}]
execute @a[score_sugar_min=1,team=!red] ~ ~ ~ tellraw @p ["",{"text":"Hint: Redチームに入ることで治ると思うよ! 治らない場合は Kouta1212#1212 までよろしくお願いします","color":"red"}]
execute @a[team=red,score_sugar_min=1] ~ ~ ~ /fill ~ ~ ~ ~ ~ ~ minecraft:carpet 0 replace minecraft:air
tellraw @a[team=red,score_sugar_min=1] ["",{"text":"罠を設置しました.(試合終了後自動的に消去されます)","color":"green"}]
execute @a[team=red,score_sugar_min=1] ~ ~ ~ summon armor_stand ~ ~15 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:"remove"}
scoreboard players set @a[score_sugar_min=1] sugar 0
execute @a[team=red,score_netherwart_min=1] ~ ~ ~ /fill ~ ~ ~ ~ ~ ~ minecraft:carpet 12 replace minecraft:air
execute @a[score_netherwart_min=1,team=!red] ~ ~ ~ tellraw @p ["",{"text":"エラー... チームの指定がおかしいです...","color":"red"}]
execute @a[score_netherwart_min=1,team=!red] ~ ~ ~ tellraw @p ["",{"text":"Hint: Redチームに入ることで治ると思うよ! 治らない場合は Kouta1212#1212 までよろしくお願いします","color":"red"}]
tellraw @a[team=red,score_netherwart_min=1] ["",{"text":"罠を設置しました.(試合終了後自動的に消去されます)","color":"green"}]
execute @a[team=red,score_netherwart_min=1] ~ ~ ~ summon armor_stand ~ ~15 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:"remove"}
scoreboard players set @a[score_netherwart_min=1] netherwart 0
#罠
execute @a[team=blue] ~ ~ ~ detect ~ ~ ~ carpet 0 /effect @p[team=blue] glowing 5 0
execute @a[team=blue] ~ ~ ~ detect ~ ~ ~ carpet 12 /effect @p[team=blue] slowness 4 2

#アーマースタンドに置き換える
execute @e[type=silverfish,name=lobby] ~ ~ ~ /kill @e[type=Armor_Stand,name=lobby]
execute @e[type=silverfish,name=redspawn] ~ ~ ~ /kill @e[type=Armor_Stand,name=redspawn]
execute @e[type=silverfish,name=bluespawn] ~ ~ ~ /kill @e[type=Armor_Stand,name=bluespawn]
execute @e[type=silverfish,name=ironsponge] ~ ~ ~ /kill @e[type=Armor_Stand,name=iron]
execute @e[type=silverfish,name=goldsponge] ~ ~ ~ /kill @e[type=Armor_Stand,name=gold]
execute @e[type=silverfish,name=diamondsponge] ~ ~ ~ /kill @e[type=Armor_Stand,name=dia]
execute @e[type=silverfish,name=timer1] ~ ~ ~ /kill @e[type=Armor_Stand,name=timer1]
execute @e[type=silverfish,name=timer2] ~ ~ ~ /kill @e[type=Armor_Stand,name=timer2]
execute @e[type=silverfish,name=join] ~ ~ ~ /kill @e[type=Armor_Stand,name=join]
execute @e[type=silverfish,name=leave] ~ ~ ~ /kill @e[type=Armor_Stand,name=leave]
execute @e[type=silverfish,name=pigman] ~ ~ ~ /kill @e[type=Armor_Stand,name=pigman]
execute @e[type=silverfish,name=lobby] ~ ~ ~ /summon armor_stand ~ ~1 ~ {CustomName:"lobby",Invisible:1,Invulnerable:1}
execute @e[type=silverfish,name=redspawn] ~ ~ ~ /summon armor_stand ~ ~1 ~ {CustomName:"redspawn",Invisible:1,Invulnerable:1}
execute @e[type=silverfish,name=bluespawn] ~ ~ ~ /summon armor_stand ~ ~1 ~ {CustomName:"bluespawn",Invisible:1,Invulnerable:1}
execute @e[type=silverfish,name=ironsponge] ~ ~ ~ /summon armor_stand ~ ~ ~ {CustomName:"iron",Invisible:1,Invulnerable:1,NoGravity:1b}
execute @e[type=silverfish,name=goldsponge] ~ ~ ~ /summon armor_stand ~ ~ ~ {CustomName:"gold",Invisible:1,Invulnerable:1,NoGravity:1b}
execute @e[type=silverfish,name=diamondsponge] ~ ~ ~ /summon armor_stand ~ ~ ~ {CustomName:"dia",Invisible:1,Invulnerable:1,NoGravity:1b}
execute @e[type=silverfish,name=timer1] ~ ~ ~ /summon armor_stand ~ ~1 ~ {CustomName:"timer1",Invisible:1,Invulnerable:1}
execute @e[type=silverfish,name=timer2] ~ ~ ~ /summon armor_stand ~ ~1 ~ {CustomName:"timer2",Invisible:1,Invulnerable:1}
execute @e[type=silverfish,name=join] ~ ~ ~ /summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"join"}
execute @e[type=silverfish,name=join] ~ ~ ~ /scoreboard players set @e[type=Armor_Stand,name=join] jointime 1
execute @e[type=silverfish,name=join] ~ ~ ~ /summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"§a参加",CustomNameVisible:1b}
execute @e[type=silverfish,name=leave] ~ ~ ~ /summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"leave"}
execute @e[type=silverfish,name=leave] ~ ~ ~ /summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"§7不参加",CustomNameVisible:1b}
execute @e[type=silverfish,name=pigman] ~ ~ ~ /summon armor_stand ~ ~50 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:"pigman"}
execute @e[type=silverfish,name=villager] ~ ~ ~ /summon villager ~ ~1 ~ {CustomName:"§6+§4|§aVillager§4|§6+",CustomNameVisible:1,Profession:0,Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:sponge",Count:1b},sell:{id:"minecraft:iron_pickaxe",Damage:241,Count:1b,tag:{HideFlags:6,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-10,Operation:0,UUIDLeast:616058,UUIDMost:897860,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:0,UUIDLeast:198087,UUIDMost:918571,Slot:"mainhand"}],display:{Name:"§4§l死神の鎌",Lore:["§6超火力を持っているが、持っている間体力が減り、10回しか使えない。"]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:sponge",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{HideFlags:32,display:{Name:"§aﾗﾋﾞｯﾄﾋﾞｰﾙ",Lore:["§6飲むと身体能力が上昇しつつ、酒に酔う。"]},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:600,ShowParticles:0b},{Id:8,Amplifier:2,Duration:600,ShowParticles:0b},{Id:9,Amplifier:1,Duration:900,ShowParticles:0b}],CustomPotionColor:16768046}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:sponge",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{HideFlags:32,display:{Name:"§6秘薬",Lore:["§a飲むと絶対的な回復力を得つつ、攻撃力が低下する。"]},CustomPotionEffects:[{Id:10,Amplifier:1,Duration:19999980,ShowParticles:0b},{Id:18,Amplifier:1,Duration:19999980,ShowParticles:0b}],CustomPotionColor:16730093}}}]},ArmorItems:[{},{},{},{id:"minecraft:birch_fence_gate",Count:1b}],HandItems:[{id:"minecraft:experience_bottle",Count:1b},{}],ArmorDropChances:[0.085F,0.085F,0.085F,0.0F],HandDropChances:[0.0F,0.085F],Invulnerable:1,ActiveEffects:[{Id:11,Amplifier:5,Duration:1999980,ShowParticles:0b}]}

#村人entitydataを置き換え
entitydata @e[type=Villager,name=§6+§4|§aVillager§4|§6+] {CustomName:"§6+§4|§aVillager§4|§6+",CustomNameVisible:1,Profession:0,Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:sponge",Count:1b},sell:{id:"minecraft:iron_pickaxe",Damage:241,Count:1b,tag:{HideFlags:6,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-12,Operation:0,UUIDLeast:616058,UUIDMost:897860,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:13,Operation:0,UUIDLeast:198087,UUIDMost:918571,Slot:"mainhand"}],display:{Name:"§4§l死神の鎌",Lore:["§6超火力を持っているが、持っている間体力が減り、10回しか使えない。"]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:sponge",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{HideFlags:32,display:{Name:"§aﾗﾋﾞｯﾄﾋﾞｰﾙ",Lore:["§6飲むと身体能力が上昇しつつ、酒に酔う。"]},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:600,ShowParticles:0b},{Id:8,Amplifier:2,Duration:600,ShowParticles:0b},{Id:9,Amplifier:1,Duration:900,ShowParticles:0b}],CustomPotionColor:16768046}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:sponge",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{HideFlags:32,display:{Name:"§6秘薬",Lore:["§a飲むと絶対的な回復力を得つつ、攻撃力が低下する。"]},CustomPotionEffects:[{Id:10,Amplifier:1,Duration:19999980,ShowParticles:0b},{Id:18,Amplifier:1,Duration:19999980,ShowParticles:0b}],CustomPotionColor:16730093}}}]},ArmorItems:[{},{},{},{id:"minecraft:birch_fence_gate",Count:1b}],HandItems:[{id:"minecraft:experience_bottle",Count:1b},{}],ArmorDropChances:[0.085F,0.085F,0.085F,0.0F],HandDropChances:[0.0F,0.085F],Invulnerable:1,ActiveEffects:[{Id:11,Amplifier:5,Duration:1999980,ShowParticles:0b}]}

#pigman give
tellraw @a[score_kpigzombie_min=1,team=red] ["",{"text":"\u3042\u306a\u305f\u306f "},{"text":"PIGMAN","color":"gold"},{"text":" \u3092\u5012\u3057\u305f\u305f\u3081\u7f60\u3092\u9078\u3079\u307e\u3059","color":"white"},{"text":"\n"},{"text":"\u767a\u5149(","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger select set -1"}},{"text":"SUGAR","color":"white","clickEvent":{"action":"run_command","value":"/trigger select set -1"}},{"text":")","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger select set -1"}},{"text":" | ","color":"green"},{"text":"\u920d\u8db3(","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger select set 1"}},{"text":"NETHER_WART","color":"white","clickEvent":{"action":"run_command","value":"/trigger select set 1"}},{"text":")","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger select set 1"}},{"text":"\n"},{"text":"T\u3092\u62bc\u3057\u3066\u9078\u629e\u3057\u3066\u304f\u3060\u3055\u3044","color":"green"}]
tellraw @a[score_kpigzombie_min=1,team=blue] ["",{"text":"あなたは §6PIGMAN §rを倒したためスポンジを与えました","color":"white"}]
execute @a[score_kpigzombie_min=1] ~ ~ ~ tellraw @a "§aボスが倒されました 3分後に再召喚されます"
execute @a[score_kpigzombie_min=1] ~ ~ ~ scoreboard players set @e[type=armor_stand,score_kpigzombie=3601] kpigzombie 3600
scoreboard players add @a[score_kpigzombie_min=1] count 1
scoreboard players remove @a[score_kpigzombie_min=1] kpigzombie 1
give @a[score_select_min=1,score_count_min=1,team=red] minecraft:nether_wart
give @a[score_select=-1,score_count_min=1,team=red] minecraft:sugar
tellraw @a[score_select_min=1,score_count_min=1,team=red] ["",{"text":"罠を渡しました NETHER_WARTは投げることで罠は発動可能です。","color":"green"}]
tellraw @a[score_select=-1,score_count_min=1,team=red] ["",{"text":"罠を渡しました SUGARは投げることで罠は発動可能です。","color":"green"}]
scoreboard players remove @a[score_select_min=1,score_count_min=1,team=red] count 1 
scoreboard players remove @a[score_select=-1,score_count_min=1,team=red] count 1 
scoreboard players set @a[score_select_min=1,team=red] select 0
scoreboard players set @a[score_select=-1,team=red] select 0 
give @a[score_count_min=1,team=blue] sponge
scoreboard players remove @a[score_count_min=1,team=blue] count 1 

#trigger ON
scoreboard players enable @a select
scoreboard players enable @a selectskill
scoreboard players enable @a next

#testfor コマンド
execute @e[type=silverfish,name=cmd] ~ ~ ~ setblock ~ ~1 ~ minecraft:repeating_command_block 1 replace {auto:0b,Command:"/execute @e[type=Armor_Stand,name=iron] ~ ~ ~ /testforblock ~ ~-1 ~ air"}
execute @e[type=silverfish,name=cmd] ~ ~ ~ /setblock ~ ~2 ~ minecraft:chain_command_block 9 replace {auto:1b,powered:1b,conditionMet:1b,Command:"/execute @e[type=Armor_Stand,name=iron] ~ ~ ~ /scoreboard players set @e[type=Armor_Stand,name=iron] iron 1",TrackOutput:1b}
execute @e[type=silverfish,name=cmd] ~ ~ ~ setblock ~ ~3 ~ minecraft:redstone_block
execute @e[type=silverfish,name=cmd] ~ ~ ~ setblock ~ ~4 ~ minecraft:repeating_command_block 1 replace {auto:0b,Command:"/execute @e[type=Armor_Stand,name=gold] ~ ~ ~ /testforblock ~ ~-1 ~ air"}
execute @e[type=silverfish,name=cmd] ~ ~ ~ /setblock ~ ~5 ~ minecraft:chain_command_block 9 replace {auto:1b,powered:1b,conditionMet:1b,Command:"/execute @e[type=Armor_Stand,name=iron] ~ ~ ~ /scoreboard players set @e[type=Armor_Stand,name=gold] gold 1",TrackOutput:1b}
execute @e[type=silverfish,name=cmd] ~ ~ ~ setblock ~ ~6 ~ minecraft:redstone_block
execute @e[type=silverfish,name=cmd] ~ ~ ~ setblock ~ ~7 ~ minecraft:repeating_command_block 1 replace {auto:0b,Command:"/execute @e[type=Armor_Stand,name=dia] ~ ~ ~ /testforblock ~ ~-1 ~ air"}
execute @e[type=silverfish,name=cmd] ~ ~ ~ /setblock ~ ~8 ~ minecraft:chain_command_block 9 replace {auto:1b,powered:1b,conditionMet:1b,Command:"/execute @e[type=Armor_Stand,name=iron] ~ ~ ~ /scoreboard players set @e[type=Armor_Stand,name=dia] dia 1",TrackOutput:1b}
execute @e[type=silverfish,name=cmd] ~ ~ ~ setblock ~ ~ ~ minecraft:redstone_block
execute @e[type=silverfish,name=cmd] ~ ~ ~ /setblock ~ ~9 ~ minecraft:chain_command_block 1 replace {auto:1b,Command:"execute @e[type=Armor_Stand,name=leave] ~ ~ ~ /scoreboard teams leave join @a[team=!,r=3]"}
execute @e[type=silverfish,name=cmd] ~ ~ ~ /setblock ~ ~10 ~ minecraft:chain_command_block 1 replace {auto:1b,Command:"execute @e[type=Armor_Stand,name=join,score_jointime_min=1] ~ ~ ~ /scoreboard teams join join @a[team=,r=3]"}
kill @e[type=silverfish]

#スタートタイマー
scoreboard players add @e[tag=start,type=Armor_Stand,name=iron] stimer 1
execute @e[score_stimer_min=1] ~ ~ ~ /scoreboard players set @e[type=Armor_Stand,name=join] jointime 0
execute @e[score_stimer_min=1,tag=!count5] ~ ~ ~ /tellraw @a "§aチームを振り分け中..."
execute @e[score_stimer_min=1] ~ ~ ~ /scoreboard players tag @a[team=join] add joined
execute @a[tag=!joined] ~ ~ ~ /scoreboard players set @e[type=Armor_Stand,name=iron,score_stimer_min=1] team 0
execute @a[tag=joined] ~ ~ ~ /scoreboard players set @e[type=Armor_Stand,name=iron] team 1
execute @e[score_stimer_min=1] ~ ~ ~ /scoreboard players set @e[type=Armor_Stand,name=iron,tag=stop] team 5
execute @e[type=Armor_Stand,name=iron,score_team=0] ~ ~ ~ tellraw @a "§l✔ §aチームの振り分けが完了しました！"
execute @e[type=Armor_Stand,name=iron,score_team=0] ~ ~ ~ /scoreboard players tag @e[score_stimer_min=1] add stop
execute @e[score_stimer_min=2] ~ ~ ~ /scoreboard teams join blue @r[team=join]
execute @e[score_stimer_min=2] ~ ~ ~ /scoreboard teams join red @r[team=join]
execute @a[tag=joined] ~ ~ ~ /scoreboard players tag @a[team=red] remove joined
execute @a[tag=joined] ~ ~ ~ /scoreboard players tag @a[team=blue] remove joined
execute @e[score_stimer_min=1,tag=!count5] ~ ~ ~ /tellraw @a "§e試合開始まで§a5秒"
execute @e[score_stimer_min=1,tag=!count5] ~ ~ ~ /playsound minecraft:block.note.pling player @a ~ ~ ~ 50 1
execute @e[score_stimer_min=1,tag=!count5] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] add count5
execute @e[score_stimer_min=20,tag=!count4] ~ ~ ~ /tellraw @a "§e試合開始まで4秒"
execute @e[score_stimer_min=20,tag=!count4] ~ ~ ~ /playsound minecraft:block.note.pling player @a ~ ~ ~ 50 1
execute @e[score_stimer_min=20,tag=!count4] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] add count4
execute @e[score_stimer_min=40,tag=!count3] ~ ~ ~ /tellraw @a "§e試合開始まで§c3秒"
execute @e[score_stimer_min=40,tag=!count3] ~ ~ ~ /playsound minecraft:block.note.pling player @a ~ ~ ~ 50 1
execute @e[score_stimer_min=40,tag=!count3] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] add count3
execute @e[score_stimer_min=60,tag=!count2] ~ ~ ~ /tellraw @a "§e試合開始まで§c2秒"
execute @e[score_stimer_min=60,tag=!count2] ~ ~ ~ /playsound minecraft:block.note.pling player @a ~ ~ ~ 50 1
execute @e[score_stimer_min=60,tag=!count2] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] add count2
execute @e[score_stimer_min=80,tag=!count1] ~ ~ ~ /tellraw @a "§e試合開始まで§c1秒"
execute @e[score_stimer_min=80,tag=!count1] ~ ~ ~ /playsound minecraft:block.note.pling player @a ~ ~ ~ 50 1
execute @e[score_stimer_min=80,tag=!count1] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] add count1
execute @e[score_stimer_min=100] ~ ~ ~ /function kojogame:kojostart
execute @e[score_stimer_min=100] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] remove count1
execute @e[score_stimer_min=100] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] remove count2
execute @e[score_stimer_min=100] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] remove count3
execute @e[score_stimer_min=100] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] remove count4
execute @e[score_stimer_min=100] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] remove count5
scoreboard players tag @e[tag=start,type=Armor_Stand,name=iron,score_stimer_min=100] remove stop
scoreboard players tag @e[tag=start,type=Armor_Stand,name=iron,score_stimer_min=100] remove start
scoreboard players set @e[type=Armor_Stand,name=iron,score_stimer_min=100] stimer 0

#スポンジ破壊検知
execute @e[type=Armor_Stand,score_iron_min=1] ~ ~ ~ tellraw @a ["",{"text":"鉄のスポンジが破壊されました...!","color":"white"}]
scoreboard players tag @e[type=Armor_Stand,name=iron,score_iron_min=1] add break1
execute @e[type=Armor_Stand,score_iron_min=1] ~ ~ ~ scoreboard players reset >鉄:§a破壊されていません
execute @e[type=Armor_Stand,score_iron_min=1] ~ ~ ~ scoreboard players set >鉄:§c破壊されています INFO2 3
execute @e[type=Armor_Stand,score_iron_min=1] ~ ~ ~ setblock ~ ~-1 ~ minecraft:bedrock
scoreboard players set @e[type=Armor_Stand,name=iron,score_iron_min=1] iron 0
execute @e[type=Armor_Stand,score_gold_min=1] ~ ~ ~ tellraw @a ["",{"text":"金のスポンジが破壊されました...!","color":"gold"}]
execute @e[type=Armor_Stand,name=gold,score_gold_min=1] ~ ~ ~ scoreboard players tag @e[type=Armor_Stand,name=iron] add break2
execute @e[type=Armor_Stand,score_gold_min=1] ~ ~ ~ scoreboard players reset >§6金:§a破壊されていません
execute @e[type=Armor_Stand,score_gold_min=1] ~ ~ ~ scoreboard players set >§6金:§c破壊されています INFO2 2
execute @e[type=Armor_Stand,score_gold_min=1] ~ ~ ~ setblock ~ ~-1 ~ minecraft:bedrock
scoreboard players set @e[type=Armor_Stand,name=gold,score_gold_min=1] gold 0
execute @e[type=Armor_Stand,score_dia_min=1] ~ ~ ~ tellraw @a ["",{"text":"ダイヤのスポンジが破壊されました...!","color":"aqua"}]
execute @e[type=Armor_Stand,name=dia,score_dia_min=1] ~ ~ ~ scoreboard players tag @e[type=Armor_Stand,name=iron] add break3
execute @e[type=Armor_Stand,score_dia_min=1] ~ ~ ~ scoreboard players reset >§bダイヤ:§a破壊されていません
execute @e[type=Armor_Stand,score_dia_min=1] ~ ~ ~ scoreboard players set >§bダイヤ:§c破壊されています INFO2 1
execute @e[type=Armor_Stand,score_dia_min=1] ~ ~ ~ setblock ~ ~-1 ~ minecraft:bedrock
scoreboard players set @e[type=Armor_Stand,name=dia,score_dia_min=1] dia 0

#テレポート^q^
scoreboard players add @a[score_diamondDrop_min=1] diamondDrop 1
kill @e[type=Item]
effect @a[score_diamondDrop_min=1] minecraft:weakness 1 255
effect @a[score_diamondDrop_min=1] minecraft:slowness 1 255
effect @a[score_diamondDrop_min=150] minecraft:instant_health 1 10
effect @a[score_diamondDrop_min=150] minecraft:/effect @p minecraft:saturationration 1 10
execute @a[score_diamondDrop_min=150] ~ ~ ~ /tellraw @p ["",{"text":"[game] ヒールしました","color":"green"}]
execute @a[score_diamondDrop_min=150,team=red] ~ ~ ~ tp @p @e[c=1,type=Armor_Stand,name=redspawn]
tellraw @a[score_diamondDrop_min=150,team=red] ["",{"text":"red拠点にTPしました。","color":"green"}]
execute @a[score_diamondDrop_min=150,team=blue] ~ ~ ~ tp @p @e[c=1,type=Armor_Stand,name=bluespawn]
tellraw @a[score_diamondDrop_min=150,team=blue] ["",{"text":"blue拠点にTPしました。","color":"green"}]
tellraw @a[score_diamondDrop_min=150,team=] ["",{"text":"エラー... チームに入っていないためTP されません","color":"red"}]
tellraw @a[score_diamondDrop_min=150,team=] ["",{"text":"Hint: このエラーはチームに入ることで解決します (blue , red)","color":"red"}]
give @a[score_diamondDrop_min=150] minecraft:diamond 1
scoreboard players set @a[score_diamondDrop_min=150] diamondDrop 0

#いもり対策 [ANTI システム]
execute @e[type=Armor_Stand,name=iron] ~ ~ ~ effect @a[r=15,team=red] minecraft:weakness 3 0 true
execute @e[type=Armor_Stand,name=gold] ~ ~ ~ effect @a[r=15,team=red] minecraft:weakness 3 0 true
execute @e[type=Armor_Stand,name=dia] ~ ~ ~ effect @a[r=15,team=red] minecraft:weakness 3 0 true
execute @e[type=Armor_Stand,name=iron] ~ ~ ~ scoreboard players add @a[r=15,team=red] Anti 1
execute @e[type=Armor_Stand,name=gold] ~ ~ ~ scoreboard players add @a[r=15,team=red] Anti 1
execute @e[type=Armor_Stand,name=dia] ~ ~ ~ scoreboard players add @a[r=15,team=red] Anti 1
execute @e[type=Armor_Stand,name=iron] ~ ~ ~ scoreboard players add @a[r=5,team=red] Anti1 1
execute @e[type=Armor_Stand,name=gold] ~ ~ ~ scoreboard players add @a[r=5,team=red] Anti1 1
execute @e[type=Armor_Stand,name=dia] ~ ~ ~ scoreboard players add @a[r=5,team=red] Anti1 1
execute @a[score_Anti_min=400] ~ ~ ~ effect @p minecraft:glowing 20 0 true
tellraw @a[score_Anti_min=400] ["",{"text":"Game >> §e発光§bが付与されました!","color":"green"}]
tellraw @a[score_Anti_min=400] ["",{"text":"§bダイヤ/金/鉄のスポンジの近くに§l20秒§r§bいると§e発光§bが付与されます","color":"green"}]
execute @a[score_Anti_min=400] ~ ~ ~ scoreboard players set @p Anti 0
execute @a[score_Anti1_min=1000] ~ ~ ~ effect @p minecraft:instant_damage 1 1 true
tellraw @a[score_Anti1_min=1000] ["",{"text":"Game >> §cインスタントダメージ§bが付与されました!","color":"green"}]
tellraw @a[score_Anti1_min=1000] ["",{"text":"§bダイヤ/金/鉄のスポンジの近くに§l50秒§r§bいると§cインスタントダメージ§bが付与されます","color":"green"}]
execute @a[score_Anti1_min=1000] ~ ~ ~ scoreboard players set @p Anti1 0

#スポンジ壊した時にスポンジを与える
give @a[score_SpongeBreak_min=1] sponge
tellraw @a[score_SpongeBreak_min=1] ["",{"text":"スポンジを壊したため、スポンジを与えました","color":"green"}]
scoreboard players set @a[score_SpongeBreak_min=1] SpongeBreak 0
#



#BOSS召喚
execute @e[type=Armor_Stand,score_kpigzombie=3600,name=pigman] ~ ~ ~ /scoreboard players remove @e[type=armor_stand,score_kpigzombie=3600] kpigzombie 1
execute @e[type=Armor_Stand,score_kpigzombie=1,name=pigman] ~ ~ ~ /summon zombie_pigman ~ ~-50 ~ {CustomName:"§6+§4|§aBOSS§4|§6+",CustomNameVisible:1,IsBaby:1,PersistenceRequired:1,ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Unbreakable:1,ench:[{id:0,lvl:1},{id:2,lvl:9999},{id:4,lvl:1}]}},{id:"minecraft:golden_leggings",Count:1b,tag:{Unbreakable:1,ench:[{id:0,lvl:1},{id:4,lvl:1},{id:7,lvl:1}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Unbreakable:1,ench:[{id:0,lvl:1},{id:4,lvl:1},{id:7,lvl:1}]}},{id:"minecraft:observer",Count:1b}],HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Unbreakable:1,ench:[{id:16,lvl:1},{id:19,lvl:1},{id:20,lvl:1}]}},{id:"minecraft:double_plant",Damage:4,Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:40},{Name:generic.movementSpeed,Base:0.15}],ActiveEffects:[{Id:7,Amplifier:1,Duration:20,ShowParticles:0b},{Id:8,Amplifier:255,Duration:199980,ShowParticles:0b},{Id:10,Amplifier:1,Duration:1999980,ShowParticles:0b}]}
execute @e[type=Armor_Stand,score_kpigzombie=1,name=pigman] ~ ~ ~ tellraw @a ["",{"text":"Game >> §eBOSSがスポーンしました ","color":"green"},{"text":"(","color":"yellow"},{"score":{"name":"@e[type=armor_stand,name=timer2]","objective":"time"},"color":"yellow"},{"text":"sec)","color":"yellow"}]
execute @e[type=Armor_Stand,score_kpigzombie=1,name=pigman] ~ ~ ~ tellraw @a ["",{"text":"§e§lTIP: §aピッグマンを倒すことで以下のものがもらえます:","color":"white"}]
execute @e[type=Armor_Stand,score_kpigzombie=1,name=pigman] ~ ~ ~ tellraw @a ["",{"text":"§cRED: trap §e| §9BLUE: Sponge","color":"white"}]
execute @e[type=Armor_Stand,score_kpigzombie=1,name=pigman] ~ ~ ~ playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 500000000 2
scoreboard players set @e[type=armor_stand,score_kpigzombie=1] kpigzombie 3601

#タイマー処理
execute @e[tag=timera] ~ ~ ~ scoreboard players add @e[type=Armor_Stand,name=timer1] time 1
execute @e[type=Armor_Stand,score_time_min=20,name=timer1] ~ ~ ~ /scoreboard players remove @e[type=Armor_Stand,name=timer2] time 1
execute @e[type=Armor_Stand,score_time_min=20,name=timer1] ~ ~ ~ /scoreboard players add @e[type=Armor_Stand,name=iron] panelchange 1
scoreboard players operation §a残り時間: INFO1 = @e[type=Armor_Stand,name=timer2] time
execute @e[type=Armor_Stand,score_time_min=20,name=timer1] ~ ~ ~ /scoreboard players remove @a[score_Skill1_min=1] Skill1 1
execute @e[type=Armor_Stand,score_time_min=20,name=timer1] ~ ~ ~ /scoreboard players remove @a[score_Skill2_min=1] Skill2 1
execute @e[type=Armor_Stand,score_time_min=20,name=timer1] ~ ~ ~ /scoreboard players set @e[type=Armor_Stand,name=timer1] time 0
execute @a ~ ~ ~ /title @p actionbar ["",{"text":"残り時間:","bold":true,"underlined":false,"color":"gold"},{"score":{"name":"@e[type=Armor_Stand,name=timer2]","objective":"time"},"bold":true,"underlined":false,"color":"gold"},{"text":" / ","color":"yellow"},{"text":"スキル1: ","color":"gold"},{"score":{"name":"@p","objective":"Skill1"},"bold":true,"color":"gold"},{"text":" スキル2: ","color":"gold"},{"score":{"name":"@p","objective":"Skill2"},"bold":true,"color":"gold"}]
execute @e[type=Armor_Stand,score_panelchange=9,name=iron] ~ ~ ~ scoreboard objectives setdisplay sidebar INFO1
execute @e[type=Armor_Stand,score_panelchange_min=10,name=iron] ~ ~ ~ scoreboard objectives setdisplay sidebar INFO2
execute @e[type=Armor_Stand,score_panelchange_min=20,name=iron] ~ ~ ~ scoreboard players set @e[type=Armor_Stand,name=iron] panelchange 0

#t-end
execute @e[type=Armor_Stand,score_time=0,name=timer2] ~ ~ ~ /function kojogame:kojoend2


#破壊判定
execute @e[type=Armor_Stand,name=iron,tag=break1] ~ ~ ~ /scoreboard players add @e[type=Armor_Stand,name=iron] gameend 1
execute @e[type=Armor_Stand,name=iron,tag=break2] ~ ~ ~ /scoreboard players add @e[type=Armor_Stand,name=iron] gameend 1
execute @e[type=Armor_Stand,name=iron,tag=break3] ~ ~ ~ /scoreboard players add @e[type=Armor_Stand,name=iron] gameend 1
execute @e[type=Armor_Stand,name=iron,tag=break1] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] remove break1
execute @e[type=Armor_Stand,name=iron,tag=break2] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] remove break2
execute @e[type=Armor_Stand,name=iron,tag=break3] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=iron] remove break3
#b-end
execute @e[type=Armor_Stand,name=iron,score_gameend_min=3] ~ ~ ~ /function kojogame:kojoend1