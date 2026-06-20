@tool
extends "res://addons/dialogic/Modules/LayeredPortrait/custom_layered_portrait.gd"

## 公主分層立繪：timeline portrait key → face + hand 圖層組合。
## 美術交付：art/characters/princese/{body,face,hand}/

const DEFAULT_PRESET := {
	"face": "Smile",
	"hands": "Folded",
}

const PORTRAIT_PRESETS := {
	"default": {"face": "Smile", "hands": "Folded"},
	"shocked": {"face": "Sad", "hands": "Open"},
	"sad": {"face": "Sad", "hands": "Folded"},
	"angry": {"face": "Sad", "hands": "Open"},
	"determined": {"face": "Sad", "hands": "Folded"},
	"hollow": {"face": "Sad", "hands": "Folded"},
	"cold": {"face": "Sad", "hands": "Folded"},
	"confused": {"face": "Sad", "hands": "Open"},
	"cry": {"face": "Sad", "hands": "Open"},
}


func _should_do_portrait_update(_character: DialogicCharacter, _portrait: String) -> bool:
	return true


## 分層零件已在同一座標系對齊；Dialogic 預設會分別位移 Body/Face/Hands 三個子節點，造成臉手錯位。
func _apply_layer_adjustments() -> void:
	for child in get_children():
		if child is Node2D:
			child.position = Vector2.ZERO
	# 必須先清 cache 再重算；若在 _find_largest_coverage_rect 前設 cached=true 會得到 0×0 矩形。
	_is_coverage_rect_cached = false
	_find_largest_coverage_rect()


func _update_portrait(passed_character: DialogicCharacter, passed_portrait: String) -> void:
	super._update_portrait(passed_character, passed_portrait)
	_apply_preset(passed_portrait)


func _apply_preset(portrait_key: String) -> void:
	var preset: Dictionary = PORTRAIT_PRESETS.get(portrait_key, DEFAULT_PRESET)
	_show_only($Face, str(preset.get("face", DEFAULT_PRESET["face"])))
	_show_only($Hands, str(preset.get("hands", DEFAULT_PRESET["hands"])))


func _show_only(group: Node, visible_name: String) -> void:
	var matched := false
	for child in group.get_children():
		if not child is CanvasItem:
			continue
		var show := child.name == visible_name
		(child as CanvasItem).visible = show
		if show:
			matched = true

	if matched:
		return

	push_warning(
		"PrincessLayeredPortrait: layer '%s' not found under %s; using first child."
		% [visible_name, group.name]
	)
	for child in group.get_children():
		if child is CanvasItem:
			(child as CanvasItem).visible = true
			break
