> 文件根目錄：dialogic/story_docs
> 文件角色：製作參考
> 可否定義新設定：不可以（不得新增故事 canon）
> 上游來源：00_DOCUMENT_SYSTEM.md / STORY_OVERVIEW.md / canon/*.md
> 下游同步對象：美術、資產與製作交接
> 最後一次已對齊的主檔：dialogic/story_docs/production/art_handoff.md §0
# 美術資源驗證清單

> 同步日期：2026-06-14
> 根據 `.dch` 角色定義與 `art/` 資料夾比對產生。
> **完整交付規格與對照表請見 `art_handoff.md` §0。**
> 勾選代表已完成。

---

## 一、缺圖（角色進場必報錯）

**已全部以現有圖片暫代，遊戲不再報錯。**

| 狀態 | 角色 | 來源檔 | 現行暫代圖 | 最終需補的圖 |
|---|---|---|---|---|
| [x] | 國王 | `king.dch` | `king_default.png` | 已有正式圖 ✅ |
| [x] | 達爾 | `dal.dch` | `suspect_a_default.png` | `dal_default.png` |
| [x] | 布魯諾 | `bruno.dch` | `suspect_b_default.png` | `bruno_default.png` |
| [x] | 暴民乙/丙 | 無獨立 `.dch` | `suspect_c_default.png` | `mob_npc_default.png` |
| [x] | 老婦人 | `old_woman.dch` | `minister_npc.png` | `old_woman_default.png` |

---

## 二、表情佔位（多 key 共用同一張圖）

### 宰相（`chancellor.dch`）

| 狀態 | 表情名 | 現況 | 待補 |
|---|---|---|---|
| [x] | 全部主要 key | 已有獨立圖 | — |
| [ ] | `smile` | 指向 `chancellor_relieved.png` | 可保留或改接 `chancellor_smile.png` |

### 女僕（`maid.dch`）

| 狀態 | 表情名 | 現況 | 待補 |
|---|---|---|---|
| [x] | `default` ~ `shocked` | 已有獨立圖 | — |
| [x] | `crying` | `maid_tearful.png` | — |
| [x] | `mop` | `maid_mop.png` | — |

### 賽拉斯（`loyal_retainer.dch`）

| 狀態 | 表情名 | 現況 | 待補 |
|---|---|---|---|
| [ ] | `exhausted` / `guarded` | 共用 `retainer_serious.png` | 獨立正式圖 |
| [ ] | `relieved` | 共用 `retainer_tearful.png` | 確認語意或補 `retainer_relieved.png` |

### 布魯諾 / 達爾

| 狀態 | 角色 | 現況 | 待補 |
|---|---|---|---|
| [ ] | 布魯諾 | 多 key 共用 `suspect_b_default.png` | `bruno_*.png` 系列 |
| [ ] | 達爾 | 多 key 共用 `suspect_a_default.png` | `dal_*.png` 系列 |

### 公主（`princess.dch`）— 分層立繪

| 狀態 | 項目 | 現況 |
|---|---|---|
| [x] | 主線 key | 已接 `princess_layered_portrait.tscn`（2026-06-14） |
| [x] | 圖層對齊 | `_apply_layer_adjustments` 覆寫，Body/Face/Hands 保持原點 |
| [x] | `default` ~ `cry` | 由 `PORTRAIT_PRESETS` 組合 face + hand |
| [ ] | `Angry` / `Determined` / `Shocked` 臉層 | 待美術交付；現多 key 共用 Sad |
| [x] | `avoid` / `disguised` | 仍用整張 PNG（未拆層） |
| [ ] | 目錄更名 | `princese/` → `princess/`（可選） |

---

## 三、背景缺檔（已以 placeholder 複本補齊）

| 狀態 | 正式檔名 | 暫代來源 | 備註 |
|---|---|---|---|
| [x] | `lower_district.png` | `restaurant.png` 複本 | B 線 timeline |
| [x] | `garden.png` | `restaurant.png` 複本 | A-1 花園 |
| [x] | `city_streets.png` | `restaurant.png` 複本 | B-2 集市 |
| [x] | `shop.png` | `hallway2.png` 複本 | B-2 成衣店 |
| [x] | `throne_room.png` | `throne_room_gj.png` 複本 | 已統一引用 |

仍待正式替換（timeline 仍用舊 placeholder 檔名）：`castle_corridor`、`secret_passage`、`dal_workshop`、`tower_window_night`、`city_wall_dawn` — 詳見 `art_handoff.md` §0.1。

---

## 四、資料夾中存在但未被引用 / 可清理

| 狀態 | 圖片 | 處置建議 |
|---|---|---|
| [x] | `maid_confusion.png` 等舊女僕檔 | 已刪除（2026-06-14） |
| [ ] | `retainer_default.png` | 已改接 `knight_portrait.png`，可刪 |
| [ ] | `princess_portrait.png` / `princess_determined.png` / `princess_angry.png` | 舊命名，未引用 |
| [ ] | `chancellor_smile.png` | 未接線，可併入 `smile` key 或刪除 |
| [ ] | `chancellor_determined_01.png` | 原誤接 `cold`，已修正 |
| [ ] | `royal_chamber.png` | timeline 用 `princess_room.png`，此檔備用 |
| [ ] | `throne_room_gj.png` | 已由 `throne_room.png` 接替 |
| [ ] | `ending_Images/*` | 多數未接線，移出正式交付樹 |

---

## 優先順序建議

1. **替換 §0.1 中仍共用 placeholder 的背景**（走廊、密道、工作室、塔窗、破曉）
2. **補達爾 / 布魯諾 / 老婦人正式立繪**，解除 `suspect_*` 命名
3. **補賽拉斯 `exhausted` / `guarded` 獨立圖**
4. **清理 §四 未引用舊檔**，避免美術交錯版本
