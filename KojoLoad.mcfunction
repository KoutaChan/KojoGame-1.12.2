tellraw @a ["",{"text":"ご利用いただきありがとうございます。","color":"gold"},{"text":"あなたは管理者ですか？管理者の場合このチャットをクリックしてください","color":"green","clickEvent":{"action":"run_command","value":"/execute @p ~ ~ ~ /scoreboard players tag @p add ItemGet"}}]
tellraw @a ["",{"text":"-------------------------------------------------------------------------------","color":"green"}]
gamerule commandBlockOutput false
gamerule gameLoopFunction kojogame:kojogame
gamerule sendCommandFeedback false
gamerule keepInventory true
gamerule showDeathMessages false
scoreboard objectives add joinserver stat.leaveGame
gamerule mobGriefing false
scoreboard objectives add start dummy
scoreboard objectives add death stat.deaths
scoreboard objectives add respawn stat.timeSinceDeath
scoreboard objectives add count dummy
scoreboard objectives add iron dummy
scoreboard objectives add gold dummy
scoreboard objectives add dia dummy
scoreboard objectives add ironingot stat.drop.minecraft.iron_ingot
scoreboard objectives add goldingot stat.drop.minecraft.gold_ingot
scoreboard objectives add creeper dummy
scoreboard objectives add panelchange dummy
scoreboard objectives add gameend dummy
scoreboard objectives add stimer dummy
scoreboard objectives add time dummy
scoreboard objectives add INFO2 dummy §a情報 / パネル2
scoreboard objectives add team dummy チーム振り分け
scoreboard objectives add Anti dummy Anti1
scoreboard objectives add Anti1 dummy Anti2
scoreboard objectives add Skill1 dummy
scoreboard objectives add Skill2 dummy
scoreboard objectives add SwordMaster dummy
scoreboard objectives add SwordMaster2 stat.damageTaken
scoreboard objectives add trapper dummy
scoreboard objectives add trapper2 dummy
scoreboard objectives add playtime stat.playOneMinute 初期設定
scoreboard objectives add diamondDrop stat.drop.minecraft.diamond
scoreboard objectives add SpongeBreak stat.mineBlock.minecraft.sponge
scoreboard objectives add sword stat.drop.minecraft.stone_sword
scoreboard objectives add bow stat.drop.minecraft.bow
scoreboard objectives add arrow stat.drop.minecraft.arrow
scoreboard objectives add sponge stat.drop.minecraft.sponge
scoreboard objectives add shovel stat.drop.minecraft.wooden_shovel
scoreboard objectives add sugar stat.drop.minecraft.sugar
scoreboard objectives add netherwart stat.drop.minecraft.nether_wart
scoreboard objectives add kpigzombie stat.killEntity.PigZombie
scoreboard objectives add select trigger
scoreboard objectives add page1 trigger
scoreboard objectives add selectrole1 trigger
scoreboard objectives add selectrole2 trigger
scoreboard objectives setdisplay sidebar INFO1
scoreboard teams add red
scoreboard teams add blue
scoreboard teams add join
scoreboard teams add i
scoreboard teams add g
scoreboard teams add d
scoreboard teams option red friendlyfire false
scoreboard teams option blue friendlyfire false
scoreboard teams option red nametagVisibility never
scoreboard teams option blue nametagVisibility never
scoreboard teams option red collisionRule never
scoreboard teams option blue collisionRule never
scoreboard teams option red color red
scoreboard teams option blue color blue
scoreboard teams option g color gold
scoreboard teams option d color aqua
scoreboard teams join i @e[type=Armor_Stand,name=iron]
scoreboard teams join g @e[type=Armor_Stand,name=gold]
scoreboard teams join d @e[type=Armor_Stand,name=dia]