#スコアリセット
#そのまま消して追加します
scoreboard objectives remove SwordMaster dummy
scoreboard objectives add SwordMaster dummy
scoreboard players set @e[type=Armor_Stand,name=iron] panelchange 0
tellraw @a "§aリセットしました！"
tellraw @a "§c§n注意:完全にリセットできていない場合があります\n§a万が一の為データを入れなおすことを推奨します・・・"