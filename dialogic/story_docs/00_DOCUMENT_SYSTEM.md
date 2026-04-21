> 文件根目錄：dialogic/story_docs
> 文件角色：文件治理真源
> 可否定義新設定：不可以（僅規範文件系統）
> 上游來源：無（本檔即文件治理主檔）
> 下游同步對象：dialogic/story_docs 全部故事與製作文件
> 最後一次已對齊的主檔：本檔
# Break the Loop — 故事文件系統主檔

## 目的

`dialogic/story_docs` 是本專案唯一有效的故事與製作文件入口。舊路徑 `docs/zh/design` 不再保存 active canon，也不再作為平行真源使用。

本文件回答三件事：

1. 每類資訊應該去哪裡找。
2. 哪些文件可以定義 canon。
3. 改動後要同步哪些下游文件。

---

## 單根文件架構

```text
dialogic/story_docs
├─ 00_DOCUMENT_SYSTEM.md        文件治理主檔
├─ STORY_OVERVIEW.md            協作者快速入口
├─ LOOP_OUTLINE.md              主流程與情報流實作主檔
├─ canon/                       真相、角色、勢力、時間線、章節功能
├─ loops/                       各輪迴章節設計、表層摘要、暗線
├─ scenarios/                   A/B/C/D 場景級落地大綱
├─ characters/                  對白與演出角色卡
└─ production/                  美術、資產、框架與 legacy 歷史參考
```

---

## 文件責任

| 位置 | 責任 | 可以寫什麼 | 不可以寫什麼 |
|---|---|---|---|
| `canon/00_Canon_Line.md` | 唯一真相 | 不可變事件、角色真實動機、因果底線 | 場景逐幕寫法 |
| `canon/00_Characters.md` | 角色真源 | 角色定位、策略、保護對象、盲點 | 對白細稿 |
| `canon/00_Factions.md` | 勢力真源 | 宮內、下城區、城外壓力的勢力分工 | 單場演出細節 |
| `canon/00_Timeline.md` | 時間線真源 | Day / Month 節點、可提前與不可提前事件 | 對白與演出節奏 |
| `canon/00_Reversal_Framework.md` | 章節功能真源 | 公主認知演進、每章反轉與學習 | Dialogic 節點拆解 |
| `canon/00_Loop_Response_Matrix.md` | 回圈因應真源 | 每輪公主變化、誰察覺、世界與勢力如何反應、哪些事項不變 | 場景逐幕對白 |
| `canon/00_Role_Alignment_Index.md` | 角色對位索引 | 交接查找、策略對照 | 新增高於角色真源的設定 |
| `loops/*` | 章節設計 | 作者意圖、表層摘要、暗線機制 | 與 `canon/` 衝突的新設定 |
| `LOOP_OUTLINE.md` | 主流程與情報流主檔 | 輪次結構、情報流、條件、步驟順序 | 角色本質、世界真相的唯一來源 |
| `scenarios/*` | 場景落地 | 節點、選項、場景節奏、演出依據 | 未回寫 canon 的新真相 |
| `characters/*` | 寫作支援 | 聲線、表演重點、說話策略 | 未回寫 canon 的角色本質 |
| `production/*` | 製作參考 | 美術、資產、系統框架、舊稿有效摘錄 | 故事 canon |

---

## 真源規則

- 真相、世界底線、反派計畫：先看 `canon/00_Canon_Line.md`。
- 角色本質與角色對位：先看 `canon/00_Characters.md`，再看 `characters/`。
- 勢力分工與外部壓力：先看 `canon/00_Factions.md`。
- 章節功能與公主學習：先看 `canon/00_Reversal_Framework.md`，再看 `loops/`。
- 公主每輪改變後，角色與勢力如何因應：看 `canon/00_Loop_Response_Matrix.md`。
- 主流程與情報變數：先看 `LOOP_OUTLINE.md`，再看 `scenarios/`。
- 美術與資產交接：看 `production/`，但不得在 production 文件新增故事 canon。

如果場景或角色卡需要新設定，先回寫到對應 `canon/` 真源，再同步回場景與角色文件。

---

## 同步規則

| 改動來源 | 必查同步對象 |
|---|---|
| `canon/00_Canon_Line.md` | `canon/00_Timeline.md`、`canon/00_Characters.md`、`LOOP_OUTLINE.md`、受影響的 `scenarios/` |
| `canon/00_Characters.md` | `characters/`、`canon/00_Role_Alignment_Index.md`、`LOOP_OUTLINE.md` |
| `canon/00_Factions.md` | `canon/00_Canon_Line.md`、`canon/00_Timeline.md`、相關角色卡、`scenarios/scenario_D_outline.md` |
| `canon/00_Reversal_Framework.md` | 對應 `loops/*/design_notes.md`、`loops/*/surface.md`、`LOOP_OUTLINE.md`、`STORY_OVERVIEW.md` |
| `canon/00_Loop_Response_Matrix.md` | `LOOP_OUTLINE.md`、對應 `loops/*/design_notes.md`、受影響的 `scenarios/` |
| `LOOP_OUTLINE.md` | `STORY_OVERVIEW.md`、受影響的 `scenarios/`、相關角色卡 |
| `scenarios/*` | 若出現新 canon，先回寫 `canon/`，再保留場景落地 |
| `production/*` | 若牽涉故事內容，只能引用現行 `canon/`，不可把舊稿混回主線 |

---

## 清稿規則

舊版殘留包含：

- 同一事件在不同文件有不同版本。
- 舊稿備忘、現行摘要、設計草稿混在同一份文件。
- 已淘汰的 Loop 摘要仍作為現行主線。
- 舊 `docs/zh/design` 路徑仍被當成 active source。

處理方式：

- 還有現行價值：改寫成現行同步版。
- 只剩歷史價值：移到 `production/legacy/` 並標明不得定義 canon。
- 沒有交接價值：刪除，不保留混合稿。

---

## 協作者快速進場

1. 先看 `00_DOCUMENT_SYSTEM.md`。
2. 再看 `STORY_OVERVIEW.md`。
3. 查故事真相看 `canon/`。
4. 寫主流程看 `LOOP_OUTLINE.md`。
5. 寫場戲看 `scenarios/`。
6. 寫角色聲音看 `characters/`。
7. 查美術與資產看 `production/`。
