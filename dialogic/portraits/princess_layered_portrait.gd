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
	var coverage := _find_largest_coverage_rect()
	#region agent log
	_agent_log("H2", "layer_adjustments", {
		"coverage_size": {"x": coverage.size.x, "y": coverage.size.y},
		"body_visible": $Body.visible if has_node("Body") else false,
		"body_has_texture": $Body.texture != null if has_node("Body") else false,
	})
	#endregion


func _update_portrait(passed_character: DialogicCharacter, passed_portrait: String) -> void:
	super._update_portrait(passed_character, passed_portrait)
	_apply_preset(passed_portrait)


func _apply_preset(portrait_key: String) -> void:
	var preset: Dictionary = PORTRAIT_PRESETS.get(portrait_key, DEFAULT_PRESET)
	var face_name := str(preset.get("face", DEFAULT_PRESET["face"]))
	var hands_name := str(preset.get("hands", DEFAULT_PRESET["hands"]))
	_show_only($Face, face_name)
	_show_only($Hands, hands_name)
	#region agent log
	_agent_log("H1", "apply_preset", {
		"portrait_key": portrait_key,
		"face": face_name,
		"hands": hands_name,
		"face_visible": _visible_layer_names($Face),
		"hands_visible": _visible_layer_names($Hands),
	})
	#endregion


func _visible_layer_names(group: Node) -> Array:
	var names: Array = []
	for child in group.get_children():
		if child is CanvasItem and (child as CanvasItem).visible:
			names.append(child.name)
	return names


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


#region agent log
func _agent_log(hypothesis_id: String, message: String, data: Dictionary) -> void:
	var payload := {
		"sessionId": "c95474",
		"hypothesisId": hypothesis_id,
		"location": "princess_layered_portrait.gd",
		"message": message,
		"data": data,
		"timestamp": int(Time.get_unix_time_from_system() * 1000.0),
	}
	var line := JSON.stringify(payload) + "\n"
	var log_path := ProjectSettings.globalize_path("res://debug-c95474.log")
	var file := FileAccess.open(log_path, FileAccess.READ_WRITE)
	if file == null:
		file = FileAccess.open(log_path, FileAccess.WRITE)
	if file:
		file.seek_end()
		file.store_string(line)
		file.close()
#endregion
