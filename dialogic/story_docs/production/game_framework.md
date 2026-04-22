> 文件根目錄：dialogic/story_docs
> 文件角色：製作參考（現行框架摘要）
> 可否定義新設定：不可以（不得新增故事 canon）
> 上游來源：00_DOCUMENT_SYSTEM.md / STORY_OVERVIEW.md / LOOP_OUTLINE.md / canon/*.md / scenarios/*.md
> 下游同步對象：Dialogic timelines / 製作排程 / QA
> 最後一次已對齊的主檔：LOOP_OUTLINE.md / scenarios/scenario_D_outline.md
# Break the Loop — Godot / Dialogic 現行製作框架摘要

---

## 1. 核心概念

玩家扮演 17 歲公主艾蓮娜。她在亡國夜被賽拉斯依口頭密令殺死，帶著記憶回到城破前約 180 天。每一次死亡不是懲罰，而是讓她累積情報、修正誤判，最後學會同步調度兵、民、術、證，打破亡國迴圈。

現行故事以 A/B/C/D 四條認知推進組成：

| 章節 | 功能 | 對應主檔 |
|---|---|---|
| 序章 | 無知公主的死刑，取得城破與口頭密令情報 | `loops/loop_0_prologue/*` |
| A 線 | 信任的盲區，確認宰相是敵人 | `scenarios/scenario_A_outline.md` |
| B 線 | 無形的鳥籠，確認下城區、監視網與密道 | `scenarios/scenario_B_outline.md` |
| C 線 | 崩解的穹頂，確認魔法陣、維護鏈、達爾與父王程序限制 | `scenarios/scenario_C_outline.md` |
| 終章 D | 固定真結局流程，同步兵、民、術、證 | `scenarios/scenario_D_outline.md` |

---

## 2. 實作原則

- **真源優先**：故事真相以 `canon/` 為準；`production/` 不可反向定義劇情。
- **時間基準**：輪迴起點為 Day 1，城破在約 180 天後。
- **NPC 記憶規則**：只有公主保留跨輪記憶；其他人只根據本輪可見行為反應。
- **終章規則**：終章 D 不設分岔型壞結局；玩家已完成前面情報積累後進入固定收束流程。
- **密令規則**：父王給賽拉斯的是口頭密令；終章以賽拉斯公開宣誓收束，不使用書面憑證演出。
- **達爾規則**：達爾是宮廷陣防工匠／技術負責人，可授課、巡視外層路線與參與修復；C 線危險來自副手、維護鏈與程序污染。

---

## 3. 建議 Dialogic 結構

| 區塊 | 建議 timeline 群組 | 內容 |
|---|---|---|
| 序章 | `00_prologue_*` | 亡國夜、公主死亡、輪迴啟動 |
| A 線 | `01_loop1_*` | A-0 / A-1 / A-2 三推演 |
| B 線 | `02_loop2_*` | B-0 / B-1 / B-2 三推演 |
| C 線 | `03_loop3_*` | C-0 / C-1 / C-2 與高塔選擇 |
| 終章 | `04_final_*` | 賽拉斯、布魯諾、達爾、朝堂、修復、破曉 |

每個 timeline 應只落地現行 `scenarios/` 的固定場景；若檔名與現行章節功能不一致，請以現行場景大綱為準。

---

## 4. 情報與狀態命名

常用情報 ID 以 `LOOP_OUTLINE.md` 與 `princess_knowledge_arc.md` 為準。製作時至少保留以下語意：

| 情報 | 用途 |
|---|---|
| `intel_city_fall` | 知道亡國夜會發生 |
| `intel_assassination` | 知道賽拉斯口頭密令 |
| `intel_chancellor_betrayal` | 確認宰相是敵人 |
| `intel_mob_manipulation` | 知道下城區苦難被操控 |
| `intel_secret_passage` | 確認物理城防破口 |
| `intel_dal_magic_basics` | 解鎖 C 線技術入口 |
| `intel_magic_array_mnemonic` | 終章修復可複驗節點 |
| `intel_narrative_flip` | 理解單點證人會被剪成罪人 |
| `intel_king_defense_line` | 理解父王會信她但需要程序 |

---

## 5. QA 檢查

- A 線不可讓公主過早成熟；A-2 的王權介入必須失敗。
- B 線不可寫成公主輕易逃宮；外出順利是宰相撤換保護與放行陷阱。
- C 線不可讓公主突然全知；術式理解來自 B-1 入門、C-0 兩個月默背與達爾複驗。
- 終章不可靠主角光環讓所有人相信；每個盟友都必須被本輪可核對資訊打開。
- production 文件若提到劇情，必須引用 `canon/`、`LOOP_OUTLINE.md` 或 `scenarios/`。
