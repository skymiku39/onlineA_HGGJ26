> 文件層級：設計層
> 文件角色：真源（文件治理）
> 可否定義新設定：不可以（僅規範文件系統）
> 上游來源：無（本檔即文件治理主檔）
> 下游同步對象：docs/zh/design/story 全部 / dialogic/story_docs 全部
> 最後一次已對齊的主檔：無（本檔即主檔）
# Break the Loop — 故事文件治理主檔

## 目的

本文件不是劇情內容，而是**故事文件系統的使用手冊**。  
它回答三件事：

1. 哪一層文件可以定義設定
2. 哪一份文件是某類資訊的真源
3. 當內容改動時，應該先改哪裡、再同步哪裡

---

## 雙層主檔架構

```text
設計層（docs/zh/design/story）
  ↓ 定義世界觀、角色、章節功能、時間線、不可變真相
實作層（dialogic/story_docs）
  ↓ 將設計層轉成可寫場景、可做 Dialogic、可交接的落地文件
```

### 設計層

- 用來**定義**
- 可以新增 canon
- 是上游真源

### 實作層

- 用來**落地**
- 不可以自行新增未回寫的 canon
- 是下游執行與協作層

---

## 核心文件責任表

### 設計層真源

| 文件 | 主要責任 | 可以寫什麼 | 不可以寫什麼 |
|---|---|---|---|
| `00_Canon_Line` | 唯一真相、不可變事件、角色真實動機 | 真相、因果底線、不可變事件 | 場景逐幕演出 |
| `00_Characters` | 主要角色定位、策略、保護對象、盲點 | 角色本質、角色對位、角色功能 | 逐場對白細稿 |
| `00_Timeline` | 絕對時間線與事件節點 | Day / Month 節點、可提前與不可提前事件 | 場景寫法、演出節奏 |
| `00_Reversal_Framework` | 章節功能與公主認知演進 | 每章要完成的反轉與學習 | 逐幕實作細節 |
| `loop_x/design_notes` | 該章作者意圖與章節任務 | 情緒曲線、章節目標、寫作避免事項 | 新世界觀真相 |
| `loop_x/hidden` | 該章暗線與內部機制 | 隱藏條件、內部邏輯、不可見資訊 | 與真源衝突的新設定 |

### 設計層摘要

| 文件 | 主要責任 | 可以寫什麼 | 不可以寫什麼 |
|---|---|---|---|
| `loop_x/surface` | 該章對外摘要 | 現行版本的章節功能與主要節奏 | 新增 canon 或舊版混合稿 |
| `00_Role_Alignment_Index` | 交接用角色對位索引 | 角色戰略對照、查找入口 | 比 `00_Characters` 更上位的新定義 |

### 實作層文件

| 文件 | 主要責任 | 可以寫什麼 | 不可以寫什麼 |
|---|---|---|---|
| `STORY_OVERVIEW` | 快速入口與導覽 | 檔案索引、查找入口、現行主流程摘要 | 新 canon |
| `LOOP_OUTLINE` | 實作層主檔 | 輪次結構、條件、情報流、步驟順序 | 角色本質與真相的唯一來源 |
| `scenario_A/B/C/D_outline` | 場景級大綱 | 節點、選項、節奏、場景拆解 | 未回寫設計層的新設定 |
| `characters/*.md` | 對白與表演角色卡 | 聲線、表演重點、說話策略 | 未回寫設計層的新角色本質 |
| `princess_knowledge_arc` | 寫作支援 | 公主知識狀態與體感整理 | 取代 `00_Reversal_Framework` |

---

## 真源規則

### 原則 1：先找主題真源，再看摘要或落地

- 真相先看 `00_Canon_Line`
- 角色先看 `00_Characters`
- 章節功能先看 `00_Reversal_Framework`
- 時間節點先看 `00_Timeline`
- 場景落地先看 `LOOP_OUTLINE` 與 `scenario_*`

### 原則 2：同一個主題只允許一份上游主檔

如果某件事已經在設計層有真源：

- 實作層只能引用、摘要、展開
- 不可重新定義同一件事

### 原則 3：實作層要新設定，先回寫設計層

如果在 `LOOP_OUTLINE`、`scenario_*`、`characters/*.md` 發現需要補新設定：

1. 先判斷主題屬於哪個設計層真源
2. 先改設計層
3. 再同步回實作層

---

## 同步規則

### 當 `00_Canon_Line` 改動時

必查同步：

- `00_Timeline`
- `00_Characters`
- `LOOP_OUTLINE`
- 受影響的 `scenario_*`

### 當 `00_Characters` 改動時

必查同步：

- 角色單檔 `characters/*.md`
- `LOOP_OUTLINE`
- 受影響章節的 `design_notes`

### 當 `00_Reversal_Framework` 改動時

必查同步：

- 對應 `loop_x/design_notes`
- `loop_x/surface`
- `LOOP_OUTLINE`
- `STORY_OVERVIEW`

### 當 `00_Timeline` 改動時

必查同步：

- `LOOP_OUTLINE`
- 受影響的 `scenario_*`
- 相關 `hidden` 文件

### 當 `LOOP_OUTLINE` 改動時

必查：

- 是否只是實作細化
- 若涉及角色本質、真相、章節功能、時間線，必須先回寫設計層

---

## 清稿規則

### 什麼算舊版殘留

符合以下任一情況，即視為舊版殘留：

- 同一事件的現行版本已改，但文件仍保留舊敘述
- 同一份文件同時承載舊稿備忘與現行摘要
- 某段落只能解釋舊版章節邏輯，已無法服務現行主線

### 怎麼標記

- 若只需保留歷史說明：寫成「本文件已移除舊版……」
- 若仍可保留為現行摘要：改寫成「現行同步版」
- 若只剩歷史價值且無需保留：直接刪除

### 不允許的混用

- 舊稿備份 + 現行摘要
- 設計草稿 + 正式真源
- 真源定義 + 場景逐幕細稿

---

## 設定同步索引

| 你要找的資訊 | 先看哪份 | 次看哪份 | 落地文件 |
|---|---|---|---|
| 唯一真相 | `00_Canon_Line` | `00_Timeline` | `LOOP_OUTLINE` |
| 角色真實動機 | `00_Characters` | `00_Canon_Line` | `characters/*.md` |
| 章節功能 | `00_Reversal_Framework` | `loop_x/design_notes` | `LOOP_OUTLINE` |
| 章節摘要 | `loop_x/surface` | `00_Reversal_Framework` | `STORY_OVERVIEW` |
| 暗線與內部機制 | `loop_x/hidden` | `00_Canon_Line` | `scenario_*` |
| 時間節點 | `00_Timeline` | `00_Canon_Line` | `LOOP_OUTLINE` / `scenario_*` |
| 場景節點與選項 | `LOOP_OUTLINE` | `scenario_*` | Dialogic 實作 |
| 角色說話方式 | `00_Characters` | `characters/*.md` | `scenario_*` |

---

## 協作者快速進場順序

### 如果是新加入的寫手 / 協作者

1. 先看 `00_Document_Governance`
2. 再看 `STORY_OVERVIEW`
3. 再看 `00_Canon_Line` / `00_Characters` / `00_Reversal_Framework`
4. 最後才進 `LOOP_OUTLINE` 和 `scenario_*`

### 如果是要改某章內容

1. 先看該章的 `design_notes`
2. 再看 `surface` / `hidden`
3. 再看 `LOOP_OUTLINE`
4. 最後改 `scenario_*`

### 如果是要改角色

1. 先看 `00_Characters`
2. 再看對應 `characters/*.md`
3. 若涉及真相或時間節點，再回查 `00_Canon_Line` / `00_Timeline`

