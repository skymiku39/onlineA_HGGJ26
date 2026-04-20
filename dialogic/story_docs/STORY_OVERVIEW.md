> 文件層級：實作層
> 文件角色：摘要
> 可否定義新設定：不可以
> 上游來源：docs/zh/design/story/00_Document_Governance.md / 00_Canon_Line.md / 00_Characters.md / 00_Reversal_Framework.md / LOOP_OUTLINE.md
> 下游同步對象：協作者快速入口
> 最後一次已對齊的主檔：dialogic/story_docs/LOOP_OUTLINE.md
# Break the Loop — 故事文件快速入口

> 本文件是協作者的快速導覽頁。
> 它只負責回答「去哪裡找什麼」，不新增 canon。

---

## 先看哪裡

### 如果你第一次接手這個專案

1. `docs/zh/design/story/00_Document_Governance.md`
2. `docs/zh/design/story/00_Canon_Line.md`
3. `docs/zh/design/story/00_Characters.md`
4. `docs/zh/design/story/00_Reversal_Framework.md`
5. `dialogic/story_docs/LOOP_OUTLINE.md`

### 如果你要寫某一章

1. 該章 `docs/zh/design/story/loop_x/design_notes.md`
2. 該章 `surface.md` / `hidden.md`
3. `dialogic/story_docs/LOOP_OUTLINE.md`
4. 對應 `scenario_*_outline.md`

### 如果你要寫某個角色

1. `docs/zh/design/story/00_Characters.md`
2. `docs/zh/design/story/00_Canon_Line.md`
3. `dialogic/story_docs/characters/*.md`

---

## 文件分層

### 設計層真源

位於：`docs/zh/design/story`

- 定義真相、角色、時間線、章節功能
- 可以新增 canon
- 是所有故事設定的上游

### 實作層落地

位於：`dialogic/story_docs`

- 將設計層轉成主流程、場景大綱、角色對白支援
- 不可以自行新增未回寫的 canon
- 是協作者與 Dialogic 實作的下游

---

## 主要文件怎麼用

| 你要找的資訊 | 先看哪份 | 再看哪份 |
|---|---|---|
| 唯一真相 | `00_Canon_Line.md` | `00_Timeline.md` |
| 角色真實動機 | `00_Characters.md` | `characters/*.md` |
| 章節功能 | `00_Reversal_Framework.md` | `loop_x/design_notes.md` |
| 絕對時間線 | `00_Timeline.md` | `LOOP_OUTLINE.md` |
| 主流程與情報流 | `LOOP_OUTLINE.md` | `scenario_*_outline.md` |
| 寫某場戲 | `scenario_*_outline.md` | `characters/*.md` |

---

## 現行主流程

- 序章：無知公主的死刑
- 第一章：信任的盲區
- 第二章：無形的鳥籠
- 第三章：崩解的穹頂
- 終章：最終輪迴

權威主流程請看：`LOOP_OUTLINE.md`

---

## 重要規則

- 如果你要改真相，先改設計層，不要先改場景大綱。
- 如果你在實作層發現缺設定，先回寫到設計層真源。
- 如果某份文件同時像舊稿、摘要、設計草稿三種東西，優先清稿，不要繼續往上疊。

---

## 相關索引

- 角色對位索引：`docs/zh/design/story/00_Role_Alignment_Index.md`
- 文件治理主檔：`docs/zh/design/story/00_Document_Governance.md`
- 角色詳細設定：`docs/zh/design/story/00_Characters.md`
- 實作層主檔：`LOOP_OUTLINE.md`
