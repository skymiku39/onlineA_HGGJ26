> 文件根目錄：dialogic/story_docs
> 文件角色：協作者快速入口
> 可否定義新設定：不可以
> 上游來源：00_DOCUMENT_SYSTEM.md / LOOP_OUTLINE.md / canon/*.md
> 下游同步對象：協作者導覽
> 最後一次已對齊的主檔：dialogic/story_docs/LOOP_OUTLINE.md
# Break the Loop — 故事文件快速入口

> 本文件只回答「去哪裡找什麼」，不新增 canon。

---

## 先看哪裡

### 第一次接手

1. `dialogic/story_docs/00_DOCUMENT_SYSTEM.md`
2. `dialogic/story_docs/canon/00_Canon_Line.md`
3. `dialogic/story_docs/canon/00_Characters.md`
4. `dialogic/story_docs/canon/00_Factions.md`
5. `dialogic/story_docs/canon/00_Loop_Response_Matrix.md`
6. `dialogic/story_docs/LOOP_OUTLINE.md`

### 要寫某一章

1. `dialogic/story_docs/loops/loop_x/design_notes.md`
2. 同章 `surface.md` / `hidden.md`
3. `dialogic/story_docs/LOOP_OUTLINE.md`
4. `dialogic/story_docs/scenarios/scenario_*_outline.md`

### 要寫某個角色

1. `dialogic/story_docs/canon/00_Characters.md`
2. `dialogic/story_docs/canon/00_Factions.md`
3. `dialogic/story_docs/characters/*.md`

---

## 文件區域

| 位置 | 用途 |
|---|---|
| `canon/` | 真相、角色、勢力、時間線、章節功能。這裡是故事設定的上游真源。 |
| `loops/` | 各輪迴的章節意圖、表層摘要與暗線機制。 |
| `LOOP_OUTLINE.md` | 主流程、情報流、解鎖條件與製作順序。 |
| `scenarios/` | A/B/C/D 場景級大綱、節點與演出依據。 |
| `characters/` | 對白聲線、表演重點、角色演出卡。 |
| `production/` | 美術、資產、框架與舊稿整理後的製作參考，不定義故事 canon。 |

---

## 主要文件怎麼用

| 你要找的資訊 | 先看哪份 | 再看哪份 |
|---|---|---|
| 唯一真相 | `canon/00_Canon_Line.md` | `canon/00_Timeline.md` |
| 角色真實動機 | `canon/00_Characters.md` | `characters/*.md` |
| 勢力與城外壓力 | `canon/00_Factions.md` | `LOOP_OUTLINE.md` |
| 章節功能 | `canon/00_Reversal_Framework.md` | `loops/loop_x/design_notes.md` |
| 公主改變後別人怎麼反應 | `canon/00_Loop_Response_Matrix.md` | `loops/loop_x/design_notes.md` / `scenarios/scenario_*_outline.md` |
| 主流程與情報流 | `LOOP_OUTLINE.md` | `scenarios/scenario_*_outline.md` |
| 寫某場戲 | `scenarios/scenario_*_outline.md` | `characters/*.md` |
| 美術與資產 | `production/art_handoff.md` | `production/art_asset_checklist.md` |

---

## 現行主流程

- 序章：無知公主的死刑
- 第一章：信任的盲區
- 第二章：無形的鳥籠
- 第三章：崩解的穹頂
- 終章：最終輪迴

權威主流程請看 `LOOP_OUTLINE.md`。

---

## 重要規則

- 改真相、角色本質、勢力分工、時間線時，先改 `canon/`。
- 改場景節奏、選項、演出時，改 `scenarios/`，但不可新增未回寫 canon 的設定。
- 舊 `docs/zh/design` 已遷移；不要再把它當成 active source。
- `production/screenplay_legacy_source.md` 與 `production/asset_plan.md` 只保留歷史參考，不可引用為現行劇情依據。
