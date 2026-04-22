# Timeline Rename Map

## Loop 1

EARLY phase 已改為由 `royal_chamber.gd` 直接啟動 `01_loop1_a0_poison.dtl`，不再使用 `00_early_phase_entry.dtl` router。

| Current | Route |
| --- | --- |
| `01_loop1_a0_poison.dtl` | A-0 |
| `02_loop1_a1_fire.dtl` | A-1 |
| `03_loop1_a2_throne.dtl` | A-2 |

## Loop 2

| Current | Route |
| --- | --- |
| `01_loop2_b0_maid.dtl` | B-0 |
| `02_loop2_b1_puppet.dtl` | B-1 |
| `03_loop2_b2_abyss.dtl` | B-2 |

## Loop 3

Loop 3 已固定為 `C-0 -> C-1 -> C-2` 的順序推進，不再以 entry router 依持有情報直接跳段。

| Old | New | Route |
| --- | --- | --- |
| C-0 split files | `01_loop3_c0_dal.dtl` | C-0 |
| C-1 split files | `02_loop3_c1_warning.dtl` | C-1 |
| C-2 split files | `03_loop3_c2_king.dtl` | C-2 |

## Loop 4

「直接去抓宰相」已改為 `01_loop4_d0_final.dtl` 內部的錯誤選項說明，不再拆成獨立 bad end timeline。

| Old | New | Branch |
| --- | --- | --- |
| Final split files | `01_loop4_d0_final.dtl` | D-0 |

## Cleaned Stale Entries

Removed invalid `project.godot` timeline registrations for these missing files:

- `02_infiltration.dtl`
- `03_daily_life.dtl`
- `03_daily_life_b_v1.dtl`
- `03_underground.dtl`
- `03b_steal_supplies.dtl`
- `03b_tell_king.dtl`
- `04_confession.dtl`
- `04_confession_b_v1.dtl`
- `04_confession_b_v2.dtl`
- `04_confession_b_v3.dtl`
- `04_misunderstanding.dtl`
- `04b_activate_alone.dtl`
- `04b_rush_granary.dtl`
- `05_chancellor_strike.dtl`
- `05_mob_trial.dtl`
- `05_mob_trial_b_v2.dtl`
- `05_mob_trial_b_v3.dtl`
- `06_bad_end_b.dtl`
- `06_bad_end_b1.dtl`
- `06_bad_end_b2.dtl`
- `06_bad_end_b3.dtl`
- `06_bad_end_c.dtl`
