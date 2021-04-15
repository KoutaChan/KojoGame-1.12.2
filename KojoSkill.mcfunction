#スキル
execute @a[score_Skill1_min=1,score_ironingot_min=1] ~ ~ ~ tellraw @p "§cスキルクールダウン中です！ §f| §6[Skill1]"
execute @a[score_Skill2_min=1,score_goldingot_min=1] ~ ~ ~ tellraw @p "§cスキルクールダウン中です！ §f| §6[Skill2]"
execute @a[score_Skill1=0,tag=SwordMaster,score_ironingot_min=1] ~ ~ ~ effect @p minecraft:strength 10 0 true
execute @a[score_Skill1=0,tag=SwordMaster,score_ironingot_min=1] ~ ~ ~ tellraw @p "§aスキルを発動しました！ §b§l(§bEFFECT§l) §c攻撃力上昇"
execute @a[score_Skill1=0,tag=SwordMaster,score_ironingot_min=1] ~ ~ ~ playsound minecraft:entity.player.levelup player @p ~ ~ ~ 50 2
execute @a[score_Skill1=0,tag=SwordMaster,score_ironingot_min=1] ~ ~ ~ scoreboard players set @p Skill1 45
execute @a[score_Skill2=0,tag=SwordMaster,score_goldingot_min=1] ~ ~ ~ scoreboard players add @p SwordMaster 2
execute @a[score_Skill2=0,tag=SwordMaster,score_goldingot_min=1] ~ ~ ~ tellraw @p "§aスキルを発動しました！ §b§l(§bSKILL§l) §cダメージ軽減(80%防御) §a(+2回)"
execute @a[score_Skill2=0,tag=SwordMaster,score_goldingot_min=1] ~ ~ ~  effect @p minecraft:instant_health 1 50 true
execute @a[score_Skill2=0,tag=SwordMaster,score_goldingot_min=1] ~ ~ ~ playsound minecraft:block.anvil.place player @p ~ ~ ~ 500 2
execute @a[score_Skill2=0,tag=SwordMaster,score_goldingot_min=1] ~ ~ ~ scoreboard players set @p Skill2 45
execute @a[score_Skill1=0,tag=Trapper,score_ironingot_min=1,team=red] ~ ~ ~ /summon creeper ~ ~1 ~ {CustomName:"§9レッドのクリーパー",CustomNameVisible:0,Fuse:9999,Attributes:[{Name:generic.maxHealth,Base:99999}],Health:99999.0f,Team:"red",ActiveEffects:[{Id:1,Amplifier:30,Duration:60,ShowParticles:0b}]}
execute @a[score_Skill1=0,tag=Trapper,score_ironingot_min=1,team=blue] ~ ~ ~ /summon creeper ~ ~1 ~ {CustomName:"§9ブルーのクリーパー",CustomNameVisible:0,Fuse:9999,Attributes:[{Name:generic.maxHealth,Base:99999}],Health:99999.0f,Team:"blue",ActiveEffects:[{Id:1,Amplifier:30,Duration:60,ShowParticles:0b}]}
execute @a[score_Skill1=0,tag=Trapper] ~ ~ ~ scoreboard players set @p[score_ironingot_min=1] Skill1 30
execute @a[score_Skill2=0,tag=Trapper,score_goldingot_min=1] ~ ~ ~ scoreboard players set @p trapper 1
execute @a[score_Skill2=0,tag=Trapper,score_goldingot_min=1] ~ ~ ~ scoreboard players set @p Skill2 55 
execute @a[score_Skill1=0,score_ironingot_min=1,tag=] ~ ~ ~ tellraw @p ["",{"text":"§c[SKILL 1] §b不明なスキルです"},{"text":"\n§c[役職の詳細を見る]","clickEvent":{"action":"run_command","value":"/trigger page1 set 1"},"hoverEvent":{"action":"show_text","value":["",{"text":"以下のコマンドを実行します §l[/trigger page1 set 1]","color":"green"}]}}]
execute @a[score_Skill2=0,score_goldingot_min=1,tag=] ~ ~ ~ tellraw @p ["",{"text":"§c[SKILL 2] §b不明なスキルです"},{"text":"\n§c[役職の詳細を見る]","clickEvent":{"action":"run_command","value":"/trigger page1 set 1"},"hoverEvent":{"action":"show_text","value":["",{"text":"以下のコマンドを実行します §l[/trigger page1 set 1]","color":"green"}]}}]
give @a[score_ironingot_min=1] minecraft:iron_ingot
give @a[score_goldingot_min=1] minecraft:gold_ingot
scoreboard players set @a[score_ironingot_min=1] ironingot 0
scoreboard players set @a[score_goldingot_min=1] goldingot 0

#SwordMaster
effect @a[score_SwordMaster_min=1] minecraft:regeneration 1 5 true
effect @a[score_SwordMaster_min=1] minecraft:resistance 1 3 true
scoreboard players set @a[tag=!SwordMaster] SwordMaster2 0
execute @a[score_SwordMaster2_min=1,score_SwordMaster=0] ~ ~ ~ scoreboard players set @p SwordMaster 0
scoreboard players set @a[tag=SwordMaster,score_SwordMaster=0] SwordMaster2 0
execute @a[score_SwordMaster2_min=1] ~ ~ ~ tellraw @p[score_SwordMaster_min=1] "§a[KojoGame] 0.5ダメージ以上を食らったため、ダメージを無効化しました.."
execute @a[score_SwordMaster2_min=1] ~ ~ ~ playsound minecraft:block.anvil.land player @p ~ ~ ~ 50 0
execute @a[score_SwordMaster2_min=1] ~ ~ ~ effect @a[score_SwordMaster_min=1] minecraft:instant_health 1 50 true
execute @a[score_SwordMaster2_min=1] ~ ~ ~ scoreboard players remove @p[score_SwordMaster_min=1] SwordMaster 1
execute @a[score_SwordMaster2_min=1] ~ ~ ~ scoreboard players set @p[score_SwordMaster_min=1] SwordMaster2 0

#RandomTrapper
scoreboard players add @e[type=armor_stand,name=iron] trapper2 1
scoreboard players set @e[type=armor_stand,name=iron,score_trapper2_min=4] trapper2 0
execute @e[type=armor_stand,name=iron,score_trapper2=1] ~ ~ ~ tellraw @a[score_trapper_min=1] "§e発光トラップに決まりました！"
execute @e[type=armor_stand,name=iron,score_trapper2=1] ~ ~ ~ scoreboard players tag @a[score_trapper_min=1,team=blue] add g1
execute @e[type=armor_stand,name=iron,score_trapper2=1] ~ ~ ~ scoreboard players tag @a[score_trapper_min=1,team=red] add g2
execute @e[type=armor_stand,name=iron,score_trapper2=1] ~ ~ ~ scoreboard players set @a[score_trapper_min=1] trapper 0
execute @e[type=armor_stand,name=iron,score_trapper2=2] ~ ~ ~ tellraw @a[score_trapper_min=1] "§a毒トラップにに決まりました！"
execute @e[type=armor_stand,name=iron,score_trapper2=2] ~ ~ ~ scoreboard players tag @a[score_trapper_min=1,team=blue] add p1
execute @e[type=armor_stand,name=iron,score_trapper2=2] ~ ~ ~ scoreboard players tag @a[score_trapper_min=1,team=red] add p2
execute @e[type=armor_stand,name=iron,score_trapper2=2] ~ ~ ~ scoreboard players set @a[score_trapper_min=1] trapper 0
execute @e[type=armor_stand,name=iron,score_trapper2_min=3] ~ ~ ~ tellraw @a[score_trapper_min=1] "§7鈍足トラップ決まりました！"
execute @e[type=armor_stand,name=iron,score_trapper2=3] ~ ~ ~ scoreboard players tag @a[score_trapper_min=1,team=blue] add s1
execute @e[type=armor_stand,name=iron,score_trapper2=3] ~ ~ ~ scoreboard players tag @a[score_trapper_min=1,team=red] add s2
execute @e[type=armor_stand,name=iron,score_trapper2_min=3] ~ ~ ~ scoreboard players set @a[score_trapper_min=1] trapper 0

#creeper
scoreboard players add @e[type=Creeper] creeper 1
entitydata @e[type=Creeper,score_creeper_min=100] {Fuse:0}

#bluetrap
execute @a[tag=g1,team=blue] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ minecraft:stained_glass_pane 4 replace minecraft:air
execute @a[tag=g1,team=blue] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ minecraft:carpet 11 replace minecraft:air
execute @a[tag=g1,team=blue] ~ ~ ~ summon armor_stand ~ ~1 ~ {CustomName:"trapper1",Tags:["trap"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute @a[tag=g1,team=blue] ~ ~ ~ scoreboard players tag @p remove g1
execute @a[tag=p1,team=blue] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ minecraft:stained_glass_pane 5 replace minecraft:air
execute @a[tag=p1,team=blue] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ minecraft:carpet 11 replace minecraft:air
execute @a[tag=p1,team=blue] ~ ~ ~ summon armor_stand ~ ~1 ~ {CustomName:"trapper3",Tags:["trap"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute @a[tag=p1,team=blue] ~ ~ ~ scoreboard players tag @p remove p1
execute @a[tag=s1,team=blue] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ minecraft:stained_glass_pane 8 replace minecraft:air
execute @a[tag=s1,team=blue] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ minecraft:carpet 11 replace minecraft:air
execute @a[tag=s1,team=blue] ~ ~ ~ summon armor_stand ~ ~1 ~ {CustomName:"trapper5",Tags:["trap"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute @a[tag=s1,team=blue] ~ ~ ~ scoreboard players tag @p remove s1

#redtrap
execute @a[tag=g2,team=red] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ minecraft:stained_glass_pane 4 replace minecraft:air
execute @a[tag=g2,team=red] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ minecraft:carpet 14 replace minecraft:air
execute @a[tag=g2,team=red] ~ ~ ~ summon armor_stand ~ ~1 ~ {CustomName:"trapper2",Tags:["trap"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute @a[tag=g2,team=red] ~ ~ ~ scoreboard players tag @p remove g2
execute @a[tag=p2,team=red] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ minecraft:stained_glass_pane 5 replace minecraft:air
execute @a[tag=p2,team=red] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ minecraft:carpet 14 replace minecraft:air
execute @a[tag=p2,team=red] ~ ~ ~ summon armor_stand ~ ~1 ~ {CustomName:"trapper4",Tags:["trap"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute @a[tag=p2,team=red] ~ ~ ~ scoreboard players tag @p remove p2
execute @a[tag=s2,team=red] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ minecraft:stained_glass_pane 8 replace minecraft:air
execute @a[tag=s2,team=red] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ minecraft:carpet 14 replace minecraft:air
execute @a[tag=s2,team=red] ~ ~ ~ summon armor_stand ~ ~1 ~ {CustomName:"trapper6",Tags:["trap"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute @a[tag=s2,team=red] ~ ~ ~ scoreboard players tag @p remove s2


#trap
execute @e[type=armor_stand,tag=trap] ~ ~ ~ particle totem ~ ~ ~ -0.5 1 -0.5 1 1
execute @e[type=armor_stand,name=trapper1] ~ ~ ~ effect @a[team=red,r=6] minecraft:glowing 3 255 true
execute @e[type=armor_stand,name=trapper1] ~ ~ ~ tellraw @a[team=red,r=6,tag=debug] "§f§l[§r§cDebug§f§l] §a成功 / トラップの範囲に入っています！(1sec 20message)"
execute @e[type=armor_stand,name=trapper2] ~ ~ ~ effect @a[team=blue,r=6] minecraft:glowing 3 255 true
execute @e[type=armor_stand,name=trapper2] ~ ~ ~ tellraw @a[team=blue,r=6,tag=debug] "§f§l[§r§cDebug§f§l] §a成功 / トラップの範囲に入っています！(1sec 20message)"
execute @e[type=armor_stand,name=trapper3] ~ ~ ~ effect @a[team=red,r=4] minecraft:poison 3 3 true
execute @e[type=armor_stand,name=trapper3] ~ ~ ~ tellraw @a[team=red,r=4,tag=debug] "§f§l[§r§cDebug§f§l] §a成功 / トラップの範囲に入っています！(1sec 20message)"
execute @e[type=armor_stand,name=trapper4] ~ ~ ~ effect @a[team=blue,r=4] minecraft:poison 3 3 true
execute @e[type=armor_stand,name=trapper4] ~ ~ ~ tellraw @a[team=blue,r=4,tag=debug] "§f§l[§r§cDebug§f§l] §a成功 / トラップの範囲に入っています！(1sec 20message)"
execute @e[type=armor_stand,name=trapper5] ~ ~ ~ effect @a[team=red,r=5] minecraft:slowness 3 3 true
execute @e[type=armor_stand,name=trapper5] ~ ~ ~ tellraw @a[team=red,r=5,tag=debug] "§f§l[§r§cDebug§f§l] §a成功 / トラップの範囲に入っています！(1sec 20message)"
execute @e[type=armor_stand,name=trapper6] ~ ~ ~ effect @a[team=blue,r=5] minecraft:slowness 3 3 true
execute @e[type=armor_stand,name=trapper6] ~ ~ ~ tellraw @a[team=blue,r=5,tag=debug] "§f§l[§r§cDebug§f§l] §a成功 / トラップの範囲に入っています！(1sec 20message)"

#SwordMaster_Armor
replaceitem entity @a[tag=SwordMaster,team=] slot.armor.head minecraft:leather_helmet 1 0 {HideFlags:63,Unbreakable:1,display:{Name:"§a普通の皮ヘルメット",Lore:["§c§mなぜか脱げない... §r§7§nこれは実はサンプル..?"]},ench:[{id:10,lvl:1}]}
replaceitem entity @a[tag=SwordMaster] slot.armor.chest minecraft:iron_chestplate 1 0 {HideFlags:63,Unbreakable:1,display:{Name:"§a普通の鉄チェストプレート",Lore:["§c§mなぜか脱げない..."]},ench:[{id:10,lvl:1}]}
replaceitem entity @a[tag=SwordMaster] slot.armor.legs minecraft:chainmail_leggings 1 0 {HideFlags:63,Unbreakable:1,display:{Name:"§a普通のチェーンレギンス",Lore:["§c§mなぜか脱げない..."]},ench:[{id:10,lvl:1}]}
replaceitem entity @a[tag=SwordMaster] slot.armor.feet minecraft:iron_boots 1 0 {HideFlags:63,Unbreakable:1,display:{Name:"§a普通の鉄ブーツ",Lore:["§c§mなぜか脱げない...§a 実は落下体制X がついていたり・・・"]},ench:[{id:2,lvl:10},{id:10,lvl:1}]}

#Trapper_Armor
replaceitem entity @a[tag=Trapper,team=red] slot.armor.chest minecraft:leather_chestplate 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:0,lvl:1},{id:3,lvl:1},{id:10,lvl:1}],display:{Name:"§a普通の§c赤§aの皮のチェストプレート",Lore:["§aProtection I §7Blast Protection I  §7§lUnbreakable I"],color:16711680}}
replaceitem entity @a[tag=Trapper,team=red] slot.armor.legs minecraft:leather_leggings 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:0,lvl:1},{id:3,lvl:1},{id:10,lvl:1}],display:{Name:"§a普通の§c赤§aの皮のレギンス",Lore:["§aProtection I §7Blast Protection I  §7§lUnbreakable I"],color:16711680}}
replaceitem entity @a[tag=Trapper,team=red] slot.armor.feet minecraft:leather_boots 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:0,lvl:1},{id:3,lvl:1},{id:10,lvl:1}],display:{Name:"§a普通の§c赤§aの皮のブーツ",Lore:["§aProtection I §7Blast Protection I  §7§lUnbreakable I"],color:16711680}}
replaceitem entity @a[tag=Trapper,team=blue] slot.armor.chest minecraft:leather_chestplate 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:0,lvl:1},{id:3,lvl:1},{id:10,lvl:1}],display:{Name:"§a普通の§9青§aの皮のチェストプレート",Lore:["§aProtection I §7Blast Protection I  §7§lUnbreakable I"],color:255}}
replaceitem entity @a[tag=Trapper,team=blue] slot.armor.legs minecraft:leather_leggings 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:0,lvl:1},{id:3,lvl:1},{id:10,lvl:1}],display:{Name:"§a普通の§9青§aの皮のレギンス",Lore:["§aProtection I §7Blast Protection I  §7§lUnbreakable I"],color:255}}
replaceitem entity @a[tag=Trapper,team=blue] slot.armor.feet minecraft:leather_boots 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:0,lvl:1},{id:3,lvl:1},{id:10,lvl:1}],display:{Name:"§a普通の§9青§aの皮のブーツ",Lore:["§aProtection I §7Blast Protection I  §7§lUnbreakable I"],color:255}}

#赤
replaceitem entity @a[team=red] slot.armor.head minecraft:leather_helmet 1 0 {HideFlags:63,Unbreaking:1,ench:[{id:0,lvl:1},{id:3,lvl:1},{id:10,lvl:1}],display:{Name:"§a普通の§c赤帽子",Lore:["§aProtection I §7Blast Protection I  §7§lUnbreakable I"],color:16711680}}
#青
replaceitem entity @a[team=blue] slot.armor.head minecraft:leather_helmet 1 0 {HideFlags:63,Unbreaking:1,ench:[{id:0,lvl:1},{id:3,lvl:1},{id:10,lvl:1}],display:{Name:"§a普通の§9青帽子",Lore:["§aProtection I §7Blast Protection I  §7§lUnbreakable I"],color:255}}

