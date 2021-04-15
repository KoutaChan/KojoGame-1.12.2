scoreboard players enable @a page1
scoreboard players enable @a selectrole1
scoreboard players enable @a selectrole2

tellraw @a[score_page1_min=2] ["",{"text":"§a\u5f79\u8077\u9078\u629e Page 2:\n\n"},{"text":"§b\u304a\u3064\u304b\u308c (T\u3092\u62bc\u3057\u3066\u30af\u30ea\u30c3\u30af\u3067\u8a73\u7d30\u3092\u898b\u308b!)","clickEvent":{"action":"run_command","value":"/trigger selectrole1 set 3"}},{"text":"\n\n"},{"text":"§6\u30c6\u30ec\u30dd\u30fc\u30bf\u30fc §b(T\u3092\u62bc\u3057\u3066\u30af\u30ea\u30c3\u30af\u3067\u8a73\u7d30\u3092\u898b\u308b!)","clickEvent":{"action":"run_command","value":"/trigger selectrole1 set 4"}},{"text":"\n\n"},{"text":"§a§l§n-> \u6b21\u306e\u30da\u30fc\u30b8","clickEvent":{"action":"run_command","value":"/trigger page1 set 3"}},{"text":"\n"},{"text":"§c§l§n<- \u30da\u30fc\u30b81\u306b\u623b\u308b","clickEvent":{"action":"run_command","value":"/trigger page1 set 1"}},{"text":"\n "}]
scoreboard players set @a[score_page1_min=2] page1 0
tellraw @a[score_page1_min=1] ["",{"text":"§a\u5f79\u8077\u9078\u629e Page 1:\n\n"},{"text":"§c\u30bd\u30fc\u30c9\u30de\u30b9\u30bf\u30fc §b(T\u3092\u62bc\u3057\u3066\u30af\u30ea\u30c3\u30af\u3067\u8a73\u7d30\u3092\u898b\u308b!)","clickEvent":{"action":"run_command","value":"/trigger selectrole1 set 1"}},{"text":"\n\n"},{"text":"§b\u7f60\u5e2b (T\u3092\u62bc\u3057\u3066\u30af\u30ea\u30c3\u30af\u3067\u8a73\u7d30\u3092\u898b\u308b!)","clickEvent":{"action":"run_command","value":"/trigger selectrole1 set 2"}},{"text":"\n\n"},{"text":"§a§l§n-> NEXT PAGE","clickEvent":{"action":"run_command","value":"/trigger page1 set 2"}},{"text":"\n§c§l§m<- NO PAGE..."}]
scoreboard players set @a[score_page1_min=1] page1 0

tellraw @a[score_selectrole1_min=4] ["",{"text":"§6(\u5f79\u8077:\u30c6\u30ec\u30dd\u30fc\u30bf\u30fc)\n§6T\u3092\u62bc\u3057\u3066\u30c1\u30e3\u30c3\u30c8\u306b\u30ab\u30fc\u30bd\u30eb\u3092\u5408\u308f\u305b\u308b\u3053\u3068\u3067\u30b9\u30ad\u30eb\u306e\u5185\u5bb9\u3092\u78ba\u8a8d\uff01\n"},{"text":"§a\u30b9\u30ad\u30eb\u52b9\u679c\u78ba\u8a8d(\u30b9\u30ad\u30eb1) ","hoverEvent":{"action":"show_text","value":"§e\u30b9\u30ad\u30eb1\u52b9\u679c: §a\u30e9\u30f3\u30c0\u30e0\u306a\u5730\u70b9\u306b\u30c6\u30ec\u30dd\u30fc\u30c8\u3059\u308b§a(\u30af\u30fc\u30eb\u30c0\u30a6\u30f340\u79d2)"}},{"text":"\n"},{"text":"§a\u30b9\u30ad\u30eb\u52b9\u679c\u78ba\u8a8d(\u30b9\u30ad\u30eb2)","hoverEvent":{"action":"show_text","value":"§e\u7279\u6b8a\u767a\u52d5:\u30c0\u30a4\u30e4\u306eTP\u6642\u9593\u304c2.5\u79d2\u306b\u306a\u308b§a(\u30af\u30fc\u30eb\u30c0\u30a6\u30f3 0\u79d2)"}},{"text":"\n\n§a\u521d\u671f\u88c5\u5099:\n§aStone Sword\n§aEnder Pearl §7(10\u79d2\u306b1\u56de\u88dc\u5145)\n§bLeather Helmet\n§bIron Chestplate\n§bIron Leggins\n§bIron Boots\n§a\u9632\u5177\u306bHP\u4e0a\u6607\u304c\u5408\u8a08§e§l\u300c+5HP\u300d§a\u3064\u3044\u3066\u3044\u308b\u3002\n§a概要:テレポートを実行し、相手の裏を取れ！\n\n"},{"text":"§b§l> §a\u3053\u306e\u5f79\u8077\u3092\u9078\u629e\u3059\u308b","clickEvent":{"action":"run_command","value":"/trigger selectrole2 set 4"}},{"text":"\n"},{"text":"§c§l< §6\u307b\u304b\u306e\u5f79\u8077\u3092\u9078\u629e\u3059\u308b","clickEvent":{"action":"run_command","value":"/trigger page1 set 2"}}]
scoreboard players set @a[score_selectrole1_min=4] selectrole1 0

tellraw @a[score_selectrole1_min=2] ["",{"text":"§6(\u5f79\u8077:\u30c8\u30e9\u30c3\u30d1\u30fc)\n§6T\u3092\u62bc\u3057\u3066\u30c1\u30e3\u30c3\u30c8\u306b\u30ab\u30fc\u30bd\u30eb\u3092\u5408\u308f\u305b\u308b\u3053\u3068\u3067\u30b9\u30ad\u30eb\u306e\u5185\u5bb9\u3092\u78ba\u8a8d\uff01\n"},{"text":"§a\u30b9\u30ad\u30eb\u52b9\u679c\u78ba\u8a8d(\u30b9\u30ad\u30eb1) ","hoverEvent":{"action":"show_text","value":"§e\u30b9\u30ad\u30eb1\u52b9\u679c: §a\u30af\u30ea\u30fc\u30d1\u30fc\u3092\u53ec\u559a\u3055\u305b\u30015\u79d2\u5f8c\u7206\u767a\u3055\u305b\u308b§a(\u30af\u30fc\u30eb\u30c0\u30a6\u30f330\u79d2)"}},{"text":"\n"},{"text":"§a\u30b9\u30ad\u30eb\u52b9\u679c\u78ba\u8a8d(\u30b9\u30ad\u30eb2)","hoverEvent":{"action":"show_text","value":"§e\u30b9\u30ad\u30eb2\u52b9\u679c: §a\u30e9\u30f3\u30c0\u30e0\u306a \u767a\u5149/\u6bd2/\u920d\u8db3 \u30c8\u30e9\u30c3\u30d7\u3092\u7f6e\u304f§a(\u30af\u30fc\u30eb\u30c0\u30a6\u30f3 55\u79d2)"}},{"text":"\n\n§a\u521d\u671f\u88c5\u5099:\n§aStone Axe\n§bLeather Helmet\n§bLeather Chestplate\n§bLeather Leggins\n§bLeather Boots\n§b\u3059\u3079\u3066\u306b\u30c0\u30e1\u30fc\u30b8\u8efd\u6e1b1\u3068\u7206\u767a\u8010\u60271\u304c\u3064\u3044\u3066\u3044\u308b\u3002\n§a概要:罠で敵を足止めしろ！ 発光/鈍足/スローネスで敵を足止めする\n\n"},{"text":"§b§l> §a\u3053\u306e\u5f79\u8077\u3092\u9078\u629e\u3059\u308b","clickEvent":{"action":"run_command","value":"/trigger selectrole2 set 2"}},{"text":"\n"},{"text":"§c§l< §6\u307b\u304b\u306e\u5f79\u8077\u3092\u9078\u629e\u3059\u308b","clickEvent":{"action":"run_command","value":"/trigger page1 set 1"}}]
scoreboard players set @a[score_selectrole1_min=2] selectrole1 0

tellraw @a[score_selectrole1_min=1] ["",{"text":"§6(\u5f79\u8077:\u30bd\u30fc\u30c9\u30de\u30b9\u30bf\u30fc)\n§6T\u3092\u62bc\u3057\u3066\u30c1\u30e3\u30c3\u30c8\u306b\u30ab\u30fc\u30bd\u30eb\u3092\u5408\u308f\u305b\u308b\u3053\u3068\u3067\u30b9\u30ad\u30eb\u306e\u5185\u5bb9\u3092\u78ba\u8a8d\uff01\n"},{"text":"§a\u30b9\u30ad\u30eb\u52b9\u679c\u78ba\u8a8d(\u30b9\u30ad\u30eb1) ","hoverEvent":{"action":"show_text","value":"§e\u30b9\u30ad\u30eb1\u52b9\u679c: §a\u653b\u6483\u529b\u4e0a\u66071§e(\u52b9\u679c\u6642\u9593 10sec(\u79d2))§a(\u30af\u30fc\u30eb\u30c0\u30a6\u30f345\u79d2)"}},{"text":"\n"},{"text":"§a\u30b9\u30ad\u30eb\u52b9\u679c\u78ba\u8a8d(\u30b9\u30ad\u30eb2)","hoverEvent":{"action":"show_text","value":"§e\u30b9\u30ad\u30eb2\u52b9\u679c: §a\u6b21\u306e\u30c0\u30e1\u30fc\u30b8\u3092\u98df\u3089\u3046\u307e\u3067\u3001\u9632\u5fa1+80%§a(\u30af\u30fc\u30eb\u30c0\u30a6\u30f3 45\u79d2)"}},{"text":"\n\n§a\u521d\u671f\u88c5\u5099:\n§aIron Sword\n§bLeather Helmet\n§bIron Chestplate\n§bChainMail Leggins\n§bIron Boots\n§a概要:ダメージを無効にし、相手を倒していけ！\n§a     ソードマスターで敵を倒していこう！\n\n"},{"text":"§b§l> §a\u3053\u306e\u5f79\u8077\u3092\u9078\u629e\u3059\u308b","clickEvent":{"action":"run_command","value":"/trigger selectrole2 set 1"}},{"text":"\n"},{"text":"§c§l< §6\u307b\u304b\u306e\u5f79\u8077\u3092\u9078\u629e\u3059\u308b","clickEvent":{"action":"run_command","value":"/trigger page1 set 1"}}]
scoreboard players set @a[score_selectrole1_min=1] selectrole1 0

execute @a[score_selectrole2_min=1] ~ ~ ~ scoreboard players tag @p add removetag
#remove
execute @e[type=Armor_Stand,name=iron,tag=started] ~ ~ ~ tellraw @a[score_selectrole2_min=1] "§c申し訳ありませんが、試合が既に開始されているので役職は変更できません"
execute @e[type=Armor_Stand,name=iron,tag=started] ~ ~ ~ scoreboard players tag @a[score_selectrole2_min=1] remove removetag
execute @e[type=Armor_Stand,name=iron,tag=started] ~ ~ ~ playsound minecraft:block.anvil.place master @a[score_selectrole2_min=1] ~ ~ ~ 500000 0
execute @e[type=Armor_Stand,name=iron,tag=started] ~ ~ ~ scoreboard players set @a[score_selectrole2_min=1] selectrole2 0
scoreboard players tag @a[tag=removetag] remove teleporter
scoreboard players tag @a[tag=removetag] remove SwordMaster
scoreboard players tag @a[tag=removetag] remove 02kare
scoreboard players tag @a[tag=removetag] remove Trapper
scoreboard players tag @a[tag=removetag] remove removetag

#addskilltag
execute @a[score_selectrole2_min=4] ~ ~ ~ tellraw @p "§aテレポーターを選択しました"
execute @a[score_selectrole2_min=4] ~ ~ ~ tellraw @p "§b使いやすさ: §e★★★★★ MAX:5 §c強さ: §e★★★★★ MAX:5 \n§e総合評価:★★★★★★ (★6 MAX6)"
title @a[score_selectrole2_min=4] title ["",{"text":"§b役職を選択しました！"}]
title @a[score_selectrole2_min=4] subtitle ["",{"text":"§a役職:§6§lテレポーター"}]
execute @a[score_selectrole2_min=4] ~ ~ ~ playsound minecraft:entity.player.levelup player @p ~ ~ ~ 50 1
execute @a[score_selectrole2_min=4] ~ ~ ~ scoreboard players tag @p add teleporter
execute @a[score_selectrole2_min=4] ~ ~ ~ scoreboard players set @p selectrole2 0
execute @a[score_selectrole2_min=3] ~ ~ ~ tellraw @p "§aおつかれを選択しました"
execute @a[score_selectrole2_min=3] ~ ~ ~ tellraw @p "§b使いやすさ: §e★★★ MAX:5 §c強さ: §e★★ MAX:5 \n§e総合評価:★★★ (★3 MAX6)"
title @a[score_selectrole2_min=3] title ["",{"text":"§b役職を選択しました！"}]
title @a[score_selectrole2_min=3] subtitle ["",{"text":"§a役職:§b§lおつかれ"}]
execute @a[score_selectrole2_min=3] ~ ~ ~ playsound minecraft:entity.player.levelup player @p ~ ~ ~ 50 1
execute @a[score_selectrole2_min=3] ~ ~ ~ scoreboard players tag @p add 02kare
execute @a[score_selectrole2_min=3] ~ ~ ~ scoreboard players set @p selectrole2 0
execute @a[score_selectrole2_min=2] ~ ~ ~ tellraw @p "§aトラッパーを選択しました"
execute @a[score_selectrole2_min=2] ~ ~ ~ tellraw @p "§b使いやすさ: §e★ MAX:5 §c強さ: §e★ MAX:5 \n§e総合評価:★ (★1 MAX 6)" 
title @a[score_selectrole2_min=2] title ["",{"text":"§b役職を選択しました！"}]
title @a[score_selectrole2_min=2] subtitle ["",{"text":"§a役職:§lトラッパー"}]
execute @a[score_selectrole2_min=2] ~ ~ ~ playsound minecraft:entity.player.levelup player @p ~ ~ ~ 50 1
execute @a[score_selectrole2_min=2] ~ ~ ~ scoreboard players tag @p add Trapper
execute @a[score_selectrole2_min=2] ~ ~ ~ scoreboard players set @p selectrole2 0
execute @a[score_selectrole2_min=1] ~ ~ ~ tellraw @p "§aソードマスターを選択しました"
execute @a[score_selectrole2_min=1] ~ ~ ~ tellraw @p "§b使いやすさ: §e★★★ MAX:5 §c強さ: §e★★★★ MAX:5 \n§e総合評価:★★★★ (★4 MAX 6)"
title @a[score_selectrole2_min=1] title ["",{"text":"§b役職を選択しました！"}]
title @a[score_selectrole2_min=1] subtitle ["",{"text":"§a役職:§c§lソードマスター"}]
execute @a[score_selectrole2_min=1] ~ ~ ~ playsound minecraft:block.comparator.click player @p ~ ~ ~ 50 1
execute @a[score_selectrole2_min=1] ~ ~ ~ scoreboard players tag @p add SwordMaster
execute @a[score_selectrole2_min=1] ~ ~ ~ scoreboard players set @p selectrole2 0