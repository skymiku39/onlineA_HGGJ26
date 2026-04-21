> 文件根目錄：dialogic/story_docs
> 文件角色：審查報告（不定義 canon）
> 可否定義新設定：不可以
> 上游來源：00_DOCUMENT_SYSTEM.md / canon/*.md / LOOP_OUTLINE.md / loops/* / scenarios/* / characters/* / production/*
> 下游同步對象：修稿排程 / 對白撰寫 / Dialogic timelines
> 最後一次已對齊的主檔：本次審查依目前工作區內容

# 公主事件／場景／決策邏輯審查報告

## 審查結論

整體上，艾蓮娜的主弧線成立：她從 17 歲、被隔離保護的無知王女，靠死亡記憶逐步學會觀察、偽裝、求證、同步揭露，最後成為能整合兵、民、術、證的繼承者。A 線與 B 線的「她為何這樣選」大多符合身分、知識階段與權力限制；終章 D 的新版場景也清楚避免了主角光環式信任。

但目前文件存在幾個會影響實作一致性的高風險同步問題：

1. 時間基準混用：「城破前三個月」與「Day 1 到 Day 180 / 半年前」同時存在，會直接影響公主是否有足夠時間完成 B-1、C-0、C-2。
2. 達爾身分衝突：`canon/00_Canon_Line.md`、`canon/00_Timeline.md`、`characters/dal.md` 定義他已失明、失職、躲在下城區；但 `LOOP_OUTLINE.md`、`scenario_C_outline.md`、`scenario_D_outline.md` 把他寫成仍可上課、巡視陣區、擁有助手與工作室的技術負責人。
3. 國王登場規則衝突：角色真源說國王直到最終輪迴才直接出現在公主面前，但 A-2 與 C-2 已有直接朝堂／書房面見。
4. 終章舊稿漂移：`loops/loop_final/hidden.md` 與 `loops/loop_final/surface.md` 仍保留失敗分支、替代結局、紙本密令、撕碎密令、直接收服暴民等舊版節點，與新版「終章無 Bad End、口頭密令、同步落地」衝突。

## 公主基準

- 身分：17 歲王室公主，但實質上被王室、宰相、軍務、民怨與沉默體系當作棋子。
- 初期限制：無政治經驗、被保護性隔離、沒有自由離宮權限，會依賴看起來溫柔可靠的大人。
- 成長來源：不是天生布局，而是跨輪死亡記憶、感官細節、他人反應與行動後果的比較。
- 後期能力：可精準安排誰何時知道什麼，但其他 NPC 不保留輪迴記憶，因此信任必須由本輪可核對資訊換來。
- 寫作底線：她後期的冷靜是疲憊後的節制，不是傲慢；終章不是全知宣講，而是分配時機、風險與責任。

## 審查矩陣

| 節點 | 文件位置 | 事件/場景/決策 | 公主當下應有狀態 | 判定 | 問題原因 | 修稿方向 | 需同步文件 |
|---|---|---|---|---|---|---|---|
| 全局 | `LOOP_OUTLINE.md:10`, `scenario_A_outline.md:65`, `canon/00_Timeline.md:38` | 輪迴起點被寫成「城破前三個月」，但時間線真源是 Day 1 到 Day 180 / 半年前 | 她每輪回到同一日期，且能跨輪累積 180 天內的事件理解 | 需修正 | 三個月版本會壓縮 B-1 連日偽裝、C-0 兩個月默背、C-2 半年高塔，與 Day 45/120/150/180 節點不相容 | 統一為「城破前約 180 天 / 半年前 / Day 1」；若要保留三個月，必須重寫整條 timeline 與所有月份節點 | `LOOP_OUTLINE.md`, `scenarios/*`, `canon/00_Timeline.md`, `production/game_framework.md` |
| 全局 | `canon/00_Canon_Line.md:100`, `canon/00_Timeline.md:37`, `canon/00_Timeline.md:100` | 達爾失明時間同時出現在前史「6 個月又 3 天前」與 Month 2 Day 45 | 公主需要知道達爾是在本輪可接觸前已被害，還是可在 Day 45 前救到 | 需修正 | 失明時點不穩會讓公主能否合理接觸達爾、是否能以學生身分學術語、是否能保護他全部失去基準 | 決定單一版本：若沿現行 C 線，需回寫 canon 把達爾改成仍在陣區任職；若沿角色真源，需重寫 C/D 達爾場景 | `canon/00_Canon_Line.md`, `canon/00_Timeline.md`, `characters/dal.md`, `scenario_C_outline.md`, `scenario_D_outline.md` |
| 全局 | `characters/dal.md:7`, `scenario_C_outline.md:73`, `scenario_D_outline.md:299` | 達爾是「盲眼藏匿工匠」還是「陣區技術負責人、有助手與工作室」 | 公主不能憑身分直接取得術式核心，只能靠前置情報與技術門檻打開路 | 需修正 | 目前角色真源與 C/D 場景使用的達爾是兩個互斥版本；這是最高風險矛盾 | 建議二擇一：A. 回寫 canon，明確達爾仍是可接觸的術式負責人且失明設定改掉；B. 保留盲眼達爾，另設「陣區副手/技術官」承擔助手、工作室與毒茶戲 | `canon/00_Characters.md`, `characters/dal.md`, `LOOP_OUTLINE.md`, `scenario_C_outline.md`, `scenario_D_outline.md`, `production/art_handoff.md` |
| 全局 | `canon/00_Characters.md:297`, `characters/king.md:51`, `scenario_A_outline.md:399`, `scenario_C_outline.md:290` | 國王角色卡說直到終章才直接出現在公主面前，但 A-2/C-2 有直接面見 | A-2/C-2 的核心正是她正面求助王權卻失敗 | 需修正 | 角色卡有舊版「缺席父親」絕對句，已被新版 A-2/C-2 推翻 | 改成「國王多數時間缺席；A-2/C-2 會直接出現，但仍無法有效接住她；終章才公開接上合法性」 | `canon/00_Characters.md`, `characters/king.md` |
| Loop 0 | `LOOP_OUTLINE.md:69`, `loops/loop_0_prologue/surface.md:15`, `scenario_D_outline.md:466` | 亡國夜、賽拉斯含淚執行口頭密令、公主第一次死亡 | 無知、恐懼、等待被救；完全不具行動能力 | OK | 符合她「被保護的對象反成被處決的對象」起點 | 保留；只需同步時間基準用語為 Day 180 / 半年前回溯 | `LOOP_OUTLINE.md`, `loops/loop_0_prologue/*` |
| A-0 | `scenario_A_outline.md:83` | 三選後決定找宰相 | 剛死過一次，怕賽拉斯、不知如何找父王，會抓住溫柔大人 | OK | 行動符合 17 歲無政治經驗、以善意判可信度的初期狀態 | 保留「她不是笨，是恐懼中抓答案」的內心註記 | `scenario_A_outline.md`, `characters/princess_elena.md` |
| A-0 | `scenario_A_outline.md:113` | 宰相書房、帳本與人證、偷密令 | 看不懂帳本全貌，只能被宰相清楚敘事牽引 | OK | 以公主身分偷密令雖冒險，但在恐懼依賴宰相的狀態下成立 | 對白可補「她以為自己只是幫忙確認，不是在背叛父王」以降低跳躍感 | `scenario_A_outline.md` |
| A-0 | `scenario_A_outline.md:151` | 毒茶死亡，記住道歉與氣味 | 茫然，不足以判定宰相主謀 | OK | 情報獲得只到感官記憶，沒有過早全知 | 保留；此處是後續毒茶連結的合理種子 | `scenario_A_outline.md`, `princess_knowledge_arc.md` |
| A-1 | `scenario_A_outline.md:181` | 拒項鍊、質問賽拉斯 | 已不敢信宰相，但尚未學會隱藏觀察 | OK | 宰相透過項鍊與庭院反應讀到異常，非全知 | 保留「拒項鍊」作為可見異常；不要讓她完全演得住 | `scenario_A_outline.md`, `canon/00_Loop_Response_Matrix.md` |
| A-1 | `scenario_A_outline.md:221` | 直接問賽拉斯密令 | 有序章記憶與 A-0 疑點，會抓可驗證人物 | OK | 賽拉斯否認但語速異常，符合 NPC 本輪只根據當下反應行動 | 保留；可補他不是不信她，而是被職責壓住 | `scenario_A_outline.md`, `characters/silas.md` |
| A-1 | `scenario_A_outline.md:273` | 軟禁、城破提前、賽拉斯含淚回來 | 她觀察暴露，世界收緊；仍只能被動承受 | 需補強 | 「城破提前兩個月」在大綱中成立為宰相加速，但與外患 Day 170/180 真實壓力需再對齊 | 補一句此處不是鄰國主力提前總攻，而是宰相私軍/內亂提前引爆、導致局面提前崩盤 | `LOOP_OUTLINE.md`, `scenario_A_outline.md`, `canon/00_Timeline.md` |
| A-2 | `scenario_A_outline.md:343` | 決定正式見父王 | 確認宰相危險，誤以為最高權力能提供安全 | OK | 符合 A-2 濾鏡「王權知道就能救」 | 保留；但同步國王登場規則 | `scenario_A_outline.md`, `characters/king.md` |
| A-2 | `scenario_A_outline.md:399` | 朝堂攤牌後被架走 | 公主掌握碎片，還沒有證據鏈與同步同盟 | OK | 國王以父親想信、以國王判斷她是破口，符合角色 | 保留；不要讓國王顯得純粹不愛她 | `scenario_A_outline.md`, `characters/king.md` |
| A-2 | `scenario_A_outline.md:459` | 小房間毒茶，連結 A-0 氣味 | 已有足夠感官線索確認毒茶與宰相手段 | OK | 這是合理的跨輪比較，不是突發推理 | 保留；可補她拿起茶是憤怒與疲憊後的失誤，不是智力下降 | `scenario_A_outline.md` |
| B-0 | `scenario_B_outline.md:72` | 三選後決定找女僕與下城區 | 已知正面找大人失敗，轉向身邊善意與民間痛苦 | OK | 符合她仍在找「可信通道」而非成熟布局 | 保留；目前已補出宮不是輕易逃出 | `scenario_B_outline.md`, `canon/00_Loop_Response_Matrix.md` |
| B-0 | `scenario_B_outline.md:110` | 說服莉娜走後勤/交接點 | 公主誤以為莉娜知道舊路；莉娜有善意但無能力 | OK | 寫清正常保護被撤換、門禁被放行，符合公主權限限制 | 保留；這是 B 線最重要的邏輯補丁 | `scenario_B_outline.md` |
| B-0 | `scenario_B_outline.md:132` | 下城區初見苦難 | 第一次直接看見苦難是真的，不再只看帳本 | OK | 苦難為真、敘事被操控，符合勢力分工 | 保留群體分層，不要讓暴民全員敵意化 | `scenario_B_outline.md`, `canon/00_Factions.md` |
| B-0 | `scenario_B_outline.md:146` | 回城/前進兩分支皆毒殺 | 她剛理解監視網，還無法破解毒殺體系 | OK | 「不喝茶也會食物毒殺」強化宰相手段不是單一道具 | 保留；女僕三次拖延符合弱者反抗上限 | `scenario_B_outline.md`, `characters/maid_lina.md` |
| B-1 | `scenario_B_outline.md:233` | 決定偽裝順從、戴項鍊 | 開始理解監視捕捉異常，嘴上與內心分離 | OK | 符合 Loop 2 成長，不是突然天才，只是照上一輪裂縫行動 | 保留；可在對白保留一點刻意感 | `scenario_B_outline.md`, `characters/princess_elena.md` |
| B-1 | `scenario_B_outline.md:241` | 借王室慈善/民情學習名目外出 | 她利用身分能走的合法路徑，但不掌控背後護衛 | OK | 文件明確說宰相暗中接管流程而非親自批准 | 保留；這讓出宮符合公主身分限制 | `scenario_B_outline.md` |
| B-1 | `scenario_B_outline.md:263` | 分發點、收容所、鐵匠鋪展示 | 公主能分辨痛苦是真的、答案被安排 | OK | 布魯諾不立刻信她，符合本輪第一次接觸 | 保留；避免讓布魯諾直接變盟友 | `scenario_B_outline.md`, `characters/bruno.md` |
| B-1 | `scenario_B_outline.md:315` | 回宮後讀城防、初次接觸達爾學術語 | 她可以偽裝成學習王室職責，但術語來源需可追溯 | 需補強 | 若達爾仍是盲眼藏匿者，此段不成立；若達爾改為陣區技術者，需 canon 支撐 | 先解決達爾身分；若保留本段，回寫 canon 說明她能透過何種課程/權限接觸他 | `canon/00_Characters.md`, `characters/dal.md`, `scenario_B_outline.md` |
| B-1 | `scenario_B_outline.md:329` | 盯城牆地圖後被毒茶收網 | 她偽裝仍不成熟，視線方向暴露 | OK | 宰相反應來自女僕/地圖/路線，不是全知 | 保留 | `scenario_B_outline.md` |
| B-2 | `scenario_B_outline.md:371` | 不寫紙、不看圖，用身體走線 | 已學會監視讀視線與紙面，改用身體記憶 | OK | 符合 B-2「身體記路」能力 | 保留 | `scenario_B_outline.md`, `princess_knowledge_arc.md` |
| B-2 | `scenario_B_outline.md:405` | 成衣店脫身、項鍊換布魯諾口頭線索 | 她更冷、更少說；仍需付出真成本換真話 | OK | 項鍊作籌碼比「公主身分命令」更符合布魯諾信任條件 | 保留；終章需記得布魯諾本輪仍不認得前輪她 | `scenario_B_outline.md`, `scenario_D_outline.md` |
| B-2 | `scenario_B_outline.md:470` | 推開密道後被黑衣士兵格殺 | 她找到物理破口，但無軍事保護 | OK | 死亡來自碰到軍事秘密，不是宰相全知 | 保留 | `scenario_B_outline.md`, `canon/00_Factions.md` |
| C-0 | `scenario_C_outline.md:37`, `LOOP_OUTLINE.md:506` | B-1 達爾入門後，以學生身分進技術線 | 她已懂術語皮毛，但不能突然懂修復 | 需修正 | 如上，達爾身分與時間線衝突使整條 C 技術入口不穩 | 先決定達爾 canon；若保留「學生身分」，必須給公主合法接觸陣區/老師的制度理由 | `canon/*`, `characters/dal.md`, `scenario_C_outline.md` |
| C-0 | `scenario_C_outline.md:73` | 達爾帶公主進巡視路線，兩個月默背 | 她可以靠長時間努力成為精準學生 | 需補強 | 公主是否能連續兩個月進國防陣區，要有護衛、課程名目、宰相為何放任的制度解釋 | 補「王室教育/陣區旁聽」的正式流程與限制；說明宰相觀察但不立刻收網的原因 | `scenario_C_outline.md`, `canon/00_Loop_Response_Matrix.md` |
| C-0 | `scenario_C_outline.md:135` | 工作室發現腐蝕，助手毒茶與槍殺嫁禍 | 她知道毒茶但反應慢，保護不了達爾 | 需修正 | 若達爾是盲眼藏匿者，工作室/助手不成立；若達爾是陣區負責人，需改角色真源 | 同達爾身分決策；若保留，建議把「她知道但說晚一秒」演成她還沒學會保護證人的代價 | `scenario_C_outline.md`, `characters/dal.md` |
| C-1 | `scenario_C_outline.md:185` | 私下警告達爾、請他匿名匯報 | 她以為保護名字能保護人 | OK（依新版 C 線） | 失敗邏輯符合「有人知道了」即觸發清場 | 保留；但仍受達爾身分問題牽連 | `scenario_C_outline.md`, `princess_knowledge_arc.md` |
| C-1 | `scenario_C_outline.md:229` | 陣區門口被正常管制攔下，再被剪成意圖干預 | 她想修正世界但仍沒有程序與保護 | OK | 「未入內也可被意圖羅織」邏輯清楚，符合敘事翻轉 | 保留；這是新版補強後的穩定節點 | `scenario_C_outline.md` |
| C-1 | `scenario_C_outline.md:249` | 父王保護性軟禁後毒殺 | 她理解王權保護也會被宰相利用 | OK | 符合父王善意加害者定位 | 保留 | `scenario_C_outline.md`, `characters/king.md` |
| C-2 | `scenario_C_outline.md:278` | 決定和盤托出給父王 | 她不再半藏半露，但仍誤以為王權知道即可終局 | OK | 符合 C-2 濾鏡「完整真相交給正確的人就夠了」 | 保留；同步國王登場規則 | `scenario_C_outline.md`, `characters/king.md` |
| C-2 | `scenario_C_outline.md:300` | 父王以父信她、以王囚她 | 她第一次提交戰報式真相，但沒有同步兵民術證 | OK | 父王反應符合身分衝突，不把他寫成反派 | 保留 | `scenario_C_outline.md`, `princess_knowledge_arc.md` |
| C-2 | `scenario_C_outline.md:350` | 高塔半年、外力全斷後自選死亡 | 她主動結束，完成從被動死亡到執棋者前夜 | 需補強 | 半年高塔成立需要全局時間基準統一；若起點是三個月前則不成立 | 統一 Day 1=半年前後即可保留；補她為何能在高塔讀到/不能傳出的限制 | `scenario_C_outline.md`, `LOOP_OUTLINE.md`, `canon/00_Timeline.md` |
| 終章 D | `scenario_D_outline.md:52` | 最後一次醒來，安撫莉娜並戴項鍊 | 已完整理解，不再向莉娜索取安全，而先看見她 | OK | 符合終章她仍有柔軟，不是無情機器 | 保留 | `scenario_D_outline.md`, `characters/maid_lina.md` |
| 終章 D | `scenario_D_outline.md:117` | 拉賽拉斯到角落，以可核對碎片與口頭密令收服 | 她知道不能一開始宣講全部，而要先讓他認真 | OK | NPC 不記得前輪，但被可驗證碎片與自身痛點打開 | 保留；比 `loops/loop_final/surface.md` 舊版寢房夜談更嚴謹 | `scenario_D_outline.md`, `loops/loop_final/surface.md` |
| 終章 D | `scenario_D_outline.md:231` | 本輪第一次見布魯諾，承認傷口並要求他親自查核 | 她不求立即信任，只給對方可驗證任務 | OK | 符合布魯諾信任條件與平民分層 | 保留；不要退回「公主一場演說安撫暴民」 | `scenario_D_outline.md`, `characters/bruno.md` |
| 終章 D | `scenario_D_outline.md:287` | 賽拉斯借故把達爾帶到安全空間密談 | 她知道不能複製 C-0 工作室壞劇本 | 需修正 | 達爾身分問題仍存在；若他是藏匿盲匠，賽拉斯如何尋常理由調他到內廷需改寫 | 依達爾 canon 決策重寫：盲匠版應由布魯諾/莉娜/賽拉斯保護接入；技術官版則回寫 canon | `scenario_D_outline.md`, `characters/dal.md`, `canon/00_Characters.md` |
| 終章 D | `scenario_D_outline.md:324` | 朝堂揭露宰相，證據、私軍、暴民敘事分層 | 她已能分配兵民術證，不只證明自己對 | OK | 新版邏輯嚴謹：修復排在朝堂定性後，避免再被剪輯成破壞 | 保留 | `scenario_D_outline.md`, `canon/00_Factions.md` |
| 終章 D | `scenario_D_outline.md:368` | 宰相末路自盡，承認看走眼 | 公主不靠情緒擊敗他，而靠同步證據封死敘事 | OK | 符合宰相不是突然變笨，而是被多線同動壓住 | 保留；遺言要短，不洗白 | `scenario_D_outline.md`, `characters/chancellor_morion.md` |
| 終章 D | `scenario_D_outline.md:382` | 朝堂後修復與瓮城收網 | 她先定性與切斷敘事，再進陣區做可複驗行動 | OK | 符合 C-1 教訓與勢力分工 | 保留；暴民線不可混入瓮城戰 | `scenario_D_outline.md`, `canon/00_Factions.md` |
| 終章 D | `scenario_D_outline.md:432` | 賽拉斯以宣誓廢止口頭密令 | 她不再是被保護的對象，而被公開承認為法統中心 | OK | 口頭密令用口頭宣誓收束，邏輯優於紙本撕信 | 保留；同步刪改舊版紙條演出 | `loops/loop_final/surface.md`, `production/game_framework.md` |
| 終章 D | `LOOP_OUTLINE.md:686` | 國王很快讓位，公主成為女王 | 她可成為繼承者，但即位/讓位需要政治過程 | 需補強 | 目前 canon 沒有交代國王退位理由與時點；太快會讓結局像未鋪墊的獎賞 | 改成「她被公開承認為足以繼承的王女」；若要即位，新增國王傷病/退位程序與時間跳躍 | `LOOP_OUTLINE.md`, `scenario_D_outline.md`, `characters/king.md` |
| loop 摘要 | `loops/loop_2/hidden.md:29`, `loops/loop_2/hidden.md:58` | Loop 2 仍有「親眼看到宰相開城門」「暴民直接與敵國約定」等舊版語彙 | B 線新版公主應理解私軍、暴民、敘事與密道分層 | 需修正 | 與新版 B 線「不是暴民單一路線、不是敵國正規軍直接接上」衝突 | 重寫成 B-0/B-1/B-2 現行暗線：女僕通道、展示流程、布魯諾口頭線索、密道格殺 | `loops/loop_2/hidden.md`, `scenario_B_outline.md` |
| loop 摘要 | `loops/loop_3_mid/hidden.md:16`, `loops/loop_3_mid/hidden.md:45`, `loops/loop_3_mid/hidden.md:88` | Loop 3 hidden 仍是尋找盲眼達爾、地下防線、錯誤解讀國王為冷血 | 公主現行 C 線是魔法陣、助手、維護鏈、同步揭露教訓 | 需修正 | 與 `scenario_C_outline.md` 幾乎是不同版本；會誤導 Dialogic 實作 | 依決定後的達爾版本全面同步；至少移除「國王偽裝聲音」等舊誤讀 | `loops/loop_3_mid/hidden.md`, `LOOP_OUTLINE.md`, `scenario_C_outline.md` |
| loop 摘要 | `loops/loop_final/hidden.md:14`, `loops/loop_final/hidden.md:49`, `loops/loop_final/hidden.md:126` | 最終輪迴仍有前置不足、失敗分支、替代結局 | 終章 D 已定義固定主線、沒有 Bad End | 需修正 | 與 `scenario_D_outline.md`、`LOOP_OUTLINE.md` 的終章規則衝突 | 改為「終章固定流程的隱藏驗收條件/演出差異」，刪除替代結局與失敗分支 | `loops/loop_final/hidden.md`, `scenario_D_outline.md` |
| loop 摘要 | `loops/loop_final/surface.md:15`, `loops/loop_final/surface.md:67`, `loops/loop_final/surface.md:119` | 舊版終章：退寶石、叫賽拉斯夜晚來房間、Day 3 廣場安撫暴民、紙本密令撕碎 | 終章新版是巡邏角落、布魯諾個人查核、口頭密令宣誓 | 需修正 | 此檔是對外摘要，若不改會直接導致實作走回舊版 | 重寫成 `scenario_D_outline.md` 的七段固定流程摘要 | `loops/loop_final/surface.md`, `scenario_D_outline.md` |
| production | `production/game_framework.md:26`, `production/game_framework.md:73`, `production/game_framework.md:535` | 製作框架仍使用「忠臣」「嫌疑人」「半年前」舊型泛稱與舊 timeline 架構 | 只作製作參考，不應定義劇情 | production 漂移 | 半年前與 canon 一致，但角色/路線命名過舊；若工程照此建會偏離現行 A/B/C/D timeline | 標註本文件為架構參考；更新角色鍵名與 timeline 範例，移除 suspect/忠臣泛稱或對照現行角色 | `production/game_framework.md`, Dialogic timelines |
| production | `production/game_framework.md:722`, `production/game_framework.md:724` | Game Jam 範圍寫 3-4 壞結局 + 1 真結局 | 現行章節有固定 A/B/C 多死亡與終章無 Bad End | production 漂移 | 作為製作範圍可以保留抽象，但不能作為劇情數量依據 | 改成「依現行 LOOP_OUTLINE 分批實作，壞結局數以 scenario 為準」 | `production/game_framework.md` |
| production | `production/art_handoff.md:203`, `production/art_checklist_short.md:108` | `cg_mob_trial` 用途是「暴民包圍公主」 | 現行 B 線不是暴民審判公主的主軸，終章也不鎮壓暴民 | production 漂移 | CG 名稱/用途容易把 B 線拉回舊版「暴民直接敵對」 | 改名或改用途為 `cg_lower_city_pressure` / 「下城區群體壓力與被操控氛圍」 | `production/art_handoff.md`, `production/art_checklist_short.md` |
| production | `production/art_handoff.md:206` | `cg_dawn_oath` 已說取代舊版紙本密令儀式 | 終章口頭宣誓收束密令 | OK | production 此處已對齊新版 | 保留，並用來反向提示 `loops/loop_final/surface.md` 刪紙條撕信 | `production/art_handoff.md`, `loops/loop_final/surface.md` |
| production | `production/asset_plan.md:20`, `production/screenplay_legacy_source.md:23` | 舊資產/舊劇本檔標明不得定義 canon | production 不應污染現行劇情 | OK | 文件治理清楚 | 保留 | `production/asset_plan.md`, `production/screenplay_legacy_source.md` |

## 修稿優先順序

1. 先修最高風險 canon：統一時間基準，決定達爾身分與失明時點。
2. 同步角色真源：修 `國王不直接出現` 的絕對句，依達爾決策修 `canon/00_Characters.md` 與 `characters/dal.md`。
3. 同步 loop 摘要：重寫 `loops/loop_2/hidden.md`、`loops/loop_3_mid/hidden.md`、`loops/loop_final/hidden.md`、`loops/loop_final/surface.md`，避免 Dialogic 實作回到舊稿。
4. 微調場景補強：A-1 提前崩盤的外患/私軍原因、C-0 兩個月進陣區的制度理由、C-2 半年高塔的時間基準。
5. 清理 production 漂移：`game_framework.md` 只保留系統設計，移除舊角色泛稱與替代結局；美術清單把 `cg_mob_trial` 改成不會誤導的現行場景。

## 最終判斷

- 公主的核心行動邏輯：成立。
- A 線：成立，只需小幅補強 A-1 提前崩盤與時間基準。
- B 線：成立，是目前最完整對齊「身分限制、監視網、善意通道」的部分。
- C 線：主題成立，但受到達爾 canon 衝突嚴重影響，必須先修。
- 終章 D：新版設計成立，但需要清掉 loop_final 舊版摘要。
- production：多數美術文件可作參考；`game_framework.md` 與 `cg_mob_trial` 相關描述有舊稿漂移，需標記或改寫。
