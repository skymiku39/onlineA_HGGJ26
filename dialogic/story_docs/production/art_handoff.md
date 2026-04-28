> 文件根目錄：dialogic/story_docs
> 文件角色：製作參考
> 可否定義新設定：不可以（不得新增故事 canon）
> 上游來源：00_DOCUMENT_SYSTEM.md / STORY_OVERVIEW.md / canon/*.md
> 下游同步對象：美術、資產與製作交接
> 最後一次已對齊的主檔：dialogic/story_docs/00_DOCUMENT_SYSTEM.md
# Break the Loop 美術交付清單

> 整理日期：2026-04-14
> 依據：目前專案內的 `dialogic/timelines/`、`dialogic/characters/`、`scenes/`、`art/` 實際引用狀況整理。
> 目標：讓美術看到這份文件就知道「要畫什麼、檔名要叫什麼、會用在哪裡」。

---

## 1. 交付規格

### 1.1 專案顯示規格

- 遊戲解析度：`1920 x 1080`
- VN 對話框會覆蓋畫面下方一塊區域：
  - `custom_vn_style.tres` 目前文字框尺寸是 `1400 x 240`
  - 文字框貼近畫面底部，重要臉部與關鍵物件不要放在最下方約 `260 px` 內
- 角色立繪會出現在畫面左右兩側，背景與 CG 的視線焦點建議放在畫面中上區域

### 1.2 檔案格式建議

| 類型 | 建議格式 | 建議尺寸 | 備註 |
|---|---|---|---|
| 場景背景 | PNG | 16:9，建議 `3840 x 2160`，至少 `2730 x 1536` | 目前專案內背景尺寸不一，但最終請統一做 16:9 |
| CG / 事件插圖 | PNG | 16:9，建議 `3840 x 2160` | 重要臉部與關鍵動作避開底部對話框區 |
| 角色立繪 | 透明 PNG | 建議 `960 x 1440` 或以上 | 目前實裝多為 `480 x 720` 或 `408 x 612`，可之後縮圖 |
| 探索 NPC sprite sheet | 透明 PNG | `1024 x 1024` | 目前 `.tres` 已綁定現有格線，重畫時盡量沿用同版型 |

### 1.3 命名原則

- 角色立繪：`art/characters/<character_key>_<expression>.png`
- 場景背景：`art/backgrounds/<scene_name>.png`
- 事件 CG：`art/backgrounds/<cg_name>.png`
- 探索模式 sprite sheet：`art/characters/<character_key>_npc.png`
- 一律使用英文小寫加底線，不要空白，不要中文檔名

---

## 2. 角色立繪清單

> 狀態說明：
> `已上線` = 專案目前已有圖且有接線
> `佔位` = 目前有 key，但實際共用別張圖
> `待補` = 目前劇本有用到，但還沒正式圖
> `選配` = 目前不是主線必需，但做了會更完整

### 2.1 公主 艾蓮娜 `princess`

| 表情 key | 正式檔名 | 狀態 | 優先級 | 畫面重點 |
|---|---|---|---|---|
| `default` | `princess_portrait.png` | 已上線 | 高 | 天真、溫室中的公主，基礎半身像 |
| `sad` | `princess_sad.png` | 已上線 | 高 | 受傷、失落、理解真相時的壓抑悲傷 |
| `shocked` | `princess_shocked.png` | 已上線 | 高 | 序章驚醒、看到真相時的大幅驚愕 |
| `angry` | `princess_angry.png` | 已上線 | 中 | 對質、質問、被逼到極限 |
| `determined` | `princess_determined.png` | 已上線 | 高 | 真正開始破局後的堅定 |
| `hollow` | `princess_hollow.png` | 佔位，現共用 `princess_sad.png` | 高 | 多次輪迴後的空洞、疲憊、眼神失焦 |
| `cold` | `princess_cold.png` | 佔位，現共用 `princess_determined.png` | 中 | 情緒收乾，只剩理性與決斷 |
| `confused` | `princess_confused.png` | 待補 | 中 | 序章前段「還不懂發生什麼事」的困惑 |
| `disguised` | `princess_disguised.png` | 佔位，現共用 `princess_default.png` | 中 | 偽裝成平民的版本，可換服裝不換臉型 |

### 2.2 騎士長 賽拉斯 `loyal_retainer`

| 表情 key | 正式檔名 | 狀態 | 優先級 | 畫面重點 |
|---|---|---|---|---|
| `default` | `knight_portrait.png` | 已上線 | 高 | 冷靜、克制、壓住情緒的騎士長 |
| `serious` | `retainer_serious.png` | 已上線 | 高 | 對局勢有重量感的嚴肅表情 |
| `tearful` | `retainer_tearful.png` | 已上線 | 高 | 壓抑崩潰、帶淚但不失控 |
| `exhausted` | `retainer_exhausted.png` | 佔位，現共用 `retainer_serious.png` | 中 | 長期熬夜備戰、身體先垮的疲憊感 |
| `relieved` | `retainer_relieved.png` | 佔位，現共用 `retainer_tearful.png` | 中 | 真結局後如釋重負的鬆開 |
| `guarded` | `retainer_guarded.png` | 佔位，現共用 `retainer_serious.png` | 中 | 被公主逼問時那一瞬的防備感 |

### 2.3 宰相 莫里昂 `chancellor`

| 表情 key | 正式檔名 | 狀態 | 優先級 | 畫面重點 |
|---|---|---|---|---|
| `default` | `chancellor_default.png` | 已上線 | 高 | 溫和、可信、像父執輩一樣的假面 |
| `concerned` | `chancellor_concerned.png` | 佔位，現共用 `chancellor_default.png` | 高 | 假裝擔心公主、包著糖衣的控制 |
| `cold` | `chancellor_cold.png` | 已上線 | 高 | 真面目、冰冷、已不再演戲 |
| `serious` | `chancellor_serious.png` | 佔位 | 中 | 展示帳本、講大局時的凝重 |
| `sad` | `chancellor_sad.png` | 佔位 | 中 | 假裝悲痛、替國家憂心的面具 |
| `determined` | `chancellor_determined.png` | 佔位 | 低 | 佈局成形、準備收網時 |
| `relieved` | `chancellor_relieved.png` | 佔位 | 低 | 公主被牽著走時，那種鬆一口氣的假和善 |

### 2.4 侍女 莉娜 `maid`

| 表情 key | 正式檔名 | 狀態 | 優先級 | 畫面重點 |
|---|---|---|---|---|
| `default` | `maid_portrait.png` | 已上線 | 高 | 活潑、貼心、看起來沒事 |
| `forced_smile` | `maid_forced_smile.png` | 佔位，現共用 `maid_portrait.png` | 高 | 明明在怕，卻還要擠出笑容 |
| `tearful` | `maid_tearful.png` | 佔位，現共用 `retainer_tearful.png` | 高 | 眼眶紅、忍著不哭，這是重要敘事線索 |
| `grateful` | `maid_grateful.png` | 佔位，現共用 `maid_portrait.png` | 中 | 被理解、被幫助後的鬆動 |
| `confused` | `maid_confused.png` | 佔位，現共用 `maid_portrait.png` | 中 | 公主突然變得很不一樣時的疑惑 |
| `shocked` | `maid_shocked.png` | 佔位，現共用 `maid_portrait.png` | 中 | 被公主點破、局勢失控時 |
| `sad` | `maid_sad.png` | 待補，timeline 有使用 | 中 | 目前 `01_loop2_b0_maid.dtl` 有用到 `sad` key，建議補一張或後續統一改為 `tearful` |

> 檔名對照提醒：
> 目前資料夾內已有 `maid_confusion.png`、`maid_cry.png`、`maid_surprise.png`，但這三張名字和程式使用的 key 對不上。正式交圖請優先以 `maid_confused.png`、`maid_tearful.png`、`maid_shocked.png` 為準。

### 2.5 鐵匠 布魯諾 `bruno`

| 表情 key | 正式檔名 | 狀態 | 優先級 | 畫面重點 |
|---|---|---|---|---|
| `default` | `bruno_default.png` | 佔位，現共用 `suspect_b_default.png` | 高 | 粗硬、戒備、像隨時要爆炸 |
| `angry` | `bruno_angry.png` | 佔位 | 高 | 把怒火頂在最前面的版本 |
| `suspicious` | `bruno_suspicious.png` | 佔位 | 高 | 不信王室、不信公主 |
| `grieving` | `bruno_grieving.png` | 佔位 | 高 | 提到亡妻時壓住的痛 |
| `hesitant` | `bruno_hesitant.png` | 佔位 | 高 | 被說動一點點，但仍不放心 |
| `conflicted` | `bruno_conflicted.png` | 佔位 | 中 | 內心已經開始分裂 |
| `broken` | `bruno_broken.png` | 佔位 | 中 | 走到最壞路線時的崩解 |
| `hopeful` | `bruno_hopeful.png` | 佔位 | 中 | 真結局線被重新點燃希望 |
| `shocked` | `bruno_shocked.png` | 佔位 | 低 | 聽到真正證據時的失語 |

### 2.6 達爾 `dal`

| 表情 key | 正式檔名 | 狀態 | 優先級 | 畫面重點 |
|---|---|---|---|---|
| `default` | `dal_default.png` | 佔位，現共用 `suspect_a_default.png` | 高 | 宮廷陣防老工匠、沉穩、技術感強，像長期和圖稿與工具相處的人 |
| `wary` | `dal_wary.png` | 佔位 | 高 | 不完全信任人時的保留 |
| `quiet` | `dal_quiet.png` | 佔位 | 低 | 可與 `default` 共用，如果趕工可不拆 |
| `sad_smile` | `dal_sad_smile.png` | 待補，timeline 有使用 | 中 | 最終輪迴 briefing 時那種看透痛苦的溫和 |

### 2.7 國王 `king`

| 表情 key | 正式檔名 | 狀態 | 優先級 | 畫面重點 |
|---|---|---|---|---|
| `default` | `king_default.png` | 待補，現共用 `general_npc.png` | 高 | 威嚴、疲憊、有傷但不脆弱 |

### 2.8 老婦人 `old_woman`

| 表情 key | 正式檔名 | 狀態 | 優先級 | 畫面重點 |
|---|---|---|---|---|
| `default` | `old_woman_default.png` | 待補，現共用 `minister_npc.png` | 低 | 熟悉下城區、眼神精明 |
| `wary` | `old_woman_wary.png` | 待補 | 低 | 對外來者保留警戒 |

### 2.9 泛用證人 / 路人 `npc`

| 表情 key | 正式檔名 | 狀態 | 優先級 | 畫面重點 |
|---|---|---|---|---|
| `default` | `npc_default.png` | 待補；已新增 `npc.dch` 作無名 speaker 占位 | 低 | 助手、守衛、傳話者、平民等泛用無名角色 |

---

## 3. 場景背景清單

> 這一節分成兩種：
> `已上線背景` = 現在就有實際引用
> `正式替換背景` = 目前由 placeholder 代演，建議補正式圖後替換

### 3.1 已上線背景 / 事件圖

| 檔名 | 類型 | 狀態 | 使用位置 | 畫面說明 |
|---|---|---|---|---|
| `prologue_princess_room.png` | 背景 | 已上線 | 序章開場 | 公主寢房，還沒理解災難前的房間 |
| `prologue_knight_arrives.png` | 事件圖 | 已上線 | 序章刺殺前 | 破門而入的賽拉斯，壓迫感開始 |
| `prologue_knight_draws_weapon.png` | 事件圖 | 已上線 | 序章中段 | 劍拔出那一刻，視覺焦點是兵刃與距離感 |
| `prologue_death_retainer.png` | 事件圖 | 已上線 | 序章死亡 | 遊戲最重要的一張之一，公主第一次死 |
| `royal_chamber.png` | 背景 | 已上線 | 各輪醒來、寢宮對話 | 目前可當正式版繼續用，也可重畫升級 |
| `darkness.png` | 效果底圖 | 已上線 | 死亡轉場 / 黑幕 | 純功能圖，不需要重畫 |

### 3.2 正式替換背景

| 正式檔名 | 目前暫代圖 | 優先級 | 用途 | 畫面重點 |
|---|---|---|---|---|
| `castle_corridor.png` | `hallway.png` | 高 | 走廊探索場景、A 線與終章多段轉場 | 要有王城秩序感，但也要留出壓迫與空曠感 |
| `chancellor_study.png` | `hallway.png` | 高 | A 線宰相書房、帳本與人證段 | 高級、整齊、可信任到可怕；桌面要能想像放帳本 |
| `garden_terrace.png` | `restaurant.png` | 中 | `garden.tscn` 探索場景 | 王城花園，表面溫柔，實際帶隔離感 |
| `lower_district.png` | `restaurant.png` | 高 | B 線下城區街景、終章安撫暴民 | 苦難是真實的，髒、擠、窄，但不是純廢墟 |
| `lower_district_safehouse.png` | `hallway2.png` | 中 | B-0 前進路線、被帶進屋裡喝茶 | 破屋、狹窄、讓人坐立不安 |
| `secret_passage.png` | `hallway2.png` | 高 | B-2 密道 / 內牆通道 | 石牆、厚重、隱蔽，像本來不該被看到的地方 |
| `dal_workshop.png` | `hallway.png` | 高 | C-0 達爾工作室 | 工具、圖稿、術式修補痕跡密集，像真正工作的房間 |
| `throne_room.png` | `throne_room_gj.png` | 高 | 王座廳探索、最終揭露宰相 | 正式決策空間，要撐得起終局氣勢 |
| `tower_window_night.png` | `window.png` | 中 | C-2 高塔、塔窗 | 高處、冷、看得到城市但碰不到 |
| `city_wall_dawn.png` | `window.png` | 高 | 真結局破曉 | 同樣是高處，但情緒變成開闊與解放 |

### 3.3 目前存在但未接線的背景

| 檔名 | 現況 | 建議 |
|---|---|---|
| `fire_room.png` | 存在但未被任何場景或 timeline 使用 | 可作序章火場參考，或另拆成新背景 |
| `princess_room_gj.png` | 存在但未接線 | 若畫風較舊，可當參考不必直接使用 |
| `art/backgrounds/ending_Images/*` | 有 7 張圖，但目前程式未接線 | 若要保留，建議另外整理成「未接線 ending 圖」資料夾，避免和正式交付混淆 |

---

## 4. CG / 事件插圖 / 主視覺

> 這裡列的是「應該全螢幕處理、不是單純背景替代」的圖片。
> 已上線的序章三連圖也一起列在這裡，方便美術用同一種標準看待。

| 檔名 | 狀態 | 優先級 | 對應段落 | 畫面重點 |
|---|---|---|---|---|
| `prologue_knight_arrives.png` | 已上線 | 高 | 序章 | 盔甲帶血、門被破開、第一波壓迫 |
| `prologue_knight_draws_weapon.png` | 已上線 | 高 | 序章 | 劍拔出的瞬間，情緒從恐慌進入命運 |
| `prologue_death_retainer.png` | 已上線 | 高 | 序章 | 含淚刺殺，是全作象徵圖之一 |
| `cg_title.png` | 待補 | 高 | 主選單 | 主視覺，建議有迴圈、碎片、王城與公主意象 |
| `cg_false_evidence.png` | 待補 | 中 | A-0 / A 線帳本段 | 宰相攤開帳簿、將假證據包裝成真相 |
| `cg_lower_city_famine.png` | 待補 | 中 | B-0 首次看見下城區 | 讓玩家一眼知道苦難是真的 |
| `cg_lower_city_pressure.png` | 待補 | 高 | B 線下城區壓力 | 下城區真實苦難、被安排的展示路線與群體壓迫感；不要畫成群眾審判公主 |
| `cg_dal_workshop_death.png` | 待補 | 高 | C-0 工作室死亡 | 達爾誤飲毒茶、助手動手前後的窒息瞬間 |
| `cg_expose_chancellor.png` | 待補 | 中 | 終章王座廳揭露 | 公主、國王、賽拉斯、達爾同場對質，宰相末路 |
| `cg_dawn_oath.png` | 待補 | 高 | 真結局破曉 | 賽拉斯公開宣誓、公主站上新位置；這張以口頭密令的宣誓收束為核心，更符合現行劇本 |

---

## 5. 探索模式 Sprite Sheet

> 目前 Godot 的 `.tres` 已經綁定既有格線。
> 如果直接重畫現有 sheet，請沿用目前版型：
> `1024 x 1024`、單格約 `170 x 204`、6 格循環、目前主要用到 `idle`、`walk_left`、`walk_right`。

| 檔名 | 狀態 | 優先級 | 用途 | 備註 |
|---|---|---|---|---|
| `princess_walk_sheet.png` | 已上線 | 高 | 公主探索移動 | 已可直接沿用 |
| `knight_npc.png` | 已上線 | 中 | 走廊中的賽拉斯 NPC | 若重畫，請維持同格線 |
| `maid_npc.png` | 已上線 | 中 | 侍女 NPC | 目前已有 sheet，但場景尚未大量使用 |
| `general_npc.png` | 已上線但偏泛用 | 低 | 泛用男性 NPC / 目前兼作國王佔位 | 正式版建議拆出獨立 `king_npc.png` |
| `minister_npc.png` | 已上線但偏泛用 | 低 | 泛用官員 NPC / 目前兼作老婦人佔位 | 正式版建議拆乾淨 |
| `bruno_npc.png` | 待補 | 中 | 布魯諾探索場景 | 終章或下城區自由移動可用 |
| `dal_npc.png` | 待補 | 中 | 達爾探索場景 | 若達爾有實際走位或站位演出時需要 |
| `king_npc.png` | 待補 | 低 | 國王探索或事件站位 | 若國王只在 VN 對質出現，可不做 |
| `citizen_npc_a.png` | 待補 | 低 | 下城區平民 | 裝飾用，可共用色差變體 |
| `citizen_npc_b.png` | 待補 | 低 | 下城區平民 | 同上 |
| `guard_npc.png` | 待補 | 低 | 城堡衛兵 | 同上 |

---

## 6. 最小交付批次建議

### 6.1 第一批，先讓畫面不再像 placeholder

1. `castle_corridor.png`
2. `chancellor_study.png`
3. `lower_district.png`
4. `lower_district_safehouse.png`
5. `secret_passage.png`
6. `dal_workshop.png`
7. `throne_room.png`
8. `city_wall_dawn.png`

### 6.2 第二批，先補主線最常露臉的角色

1. `maid_forced_smile.png`
2. `maid_tearful.png`
3. `maid_confused.png`
4. `bruno_default.png`
5. `bruno_angry.png`
6. `bruno_grieving.png`
7. `dal_default.png`
8. `king_default.png`
9. `princess_hollow.png`
10. `retainer_exhausted.png`

### 6.3 第三批，做能抬整體完成度的 CG

1. `cg_title.png`
2. `cg_lower_city_pressure.png`
3. `cg_dal_workshop_death.png`
4. `cg_dawn_oath.png`

---

## 7. 程式對接注意事項

> 這些不是美術要修，但交稿前最好知道，不然容易出現「圖畫好了卻對不上 key」的情況。

| 問題 | 現況 | 建議 |
|---|---|---|
| 公主 `confused` | timeline 有用，但 `princess.dch` 沒定義 | 補 `princess_confused.png`，並同步補進 `.dch` |
| 女僕 `sad` | `02_loop_2/01_loop2_b0_maid.dtl` 有用，但 `maid.dch` 沒定義 | 補 `maid_sad.png` 或把劇本 key 統一改成 `tearful` |
| 達爾 `sad_smile` | 終章有用，但 `dal.dch` 沒定義 | 補 `dal_sad_smile.png`，並同步補進 `.dch` |
| 女僕現有檔名不一致 | 現有是 `maid_confusion.png`、`maid_cry.png`、`maid_surprise.png` | 正式交付請改成 `maid_confused.png`、`maid_tearful.png`、`maid_shocked.png` |
| 國王正式圖未接線 | `king_default.png` 已存在，但 `king.dch` 仍指向 `general_npc.png` | 圖確認後，把 `.dch` 改回 `king_default.png` |
| 宰相額外表情未接線 | `chancellor_smile.png` 存在，但目前未引用 | 若畫風一致可納入 `default` / `concerned` 比較後再決定是否沿用 |
| 未接線 ending 圖 | `art/backgrounds/ending_Images/` 有 7 張圖但未使用 | 不要和正式交付檔混在一起 |

---

## 8. 一句話交付原則

如果美術時間很緊，優先順序就是：

1. 先把 `hallway / hallway2 / restaurant / throne_room_gj / window` 這幾張 placeholder 替掉
2. 再把 `maid`、`bruno`、`dal`、`king` 的正式立繪補齊
3. 最後做 `cg_title`、`cg_lower_city_pressure`、`cg_dal_workshop_death`、`cg_dawn_oath` 四張關鍵 CG

