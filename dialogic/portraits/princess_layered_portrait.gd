@tool
extends "res://addons/dialogic/Modules/LayeredPortrait/custom_layered_portrait.gd"

const DEFAULT_PRESET := {
	"face": "Smile",
	"hands": "Folded",
}

const PORTRAIT_PRESETS := {
	"default": {
		"face": "Smile",
		"hands": "Folded",
	},
	"shocked": {
		"face": "Sad",
		"hands": "Open",
	},
	"sad": {
		"face": "Sad",
		"hands": "Folded",
	},
	"angry": {
		"face": "Angry",
		"hands": "Open",
	},
	"determined": {
		"face": "Determined",
		"hands": "Folded",
	},
	"hollow": {
		"face": "Sad",
		"hands": "Folded",
	},
	"cold": {
		"face": "Determined",
		"hands": "Folded",
	},
	"confused": {
		"face": "Sad",
		"hands": "Open",
	},
	"layer_test_default": {
		"face": "Smile",
		"hands": "Folded",
	},
	"layer_test_shocked": {
		"face": "Sad",
		"hands": "Open",
	},
}


func _should_do_portrait_update(_character: DialogicCharacter, _portrait: String) -> bool:
	return true


func _update_portrait(passed_character: DialogicCharacter, passed_portrait: String) -> void:
	super._update_portrait(passed_character, passed_portrait)

	var preset: Dictionary = PORTRAIT_PRESETS.get(passed_portrait, DEFAULT_PRESET)
	_show_only($Face, preset.get("face", DEFAULT_PRESET["face"]))
	_show_only($Hands, preset.get("hands", DEFAULT_PRESET["hands"]))


func _show_only(group: Node, visible_name: String) -> void:
	for child in group.get_children():
		if child is CanvasItem:
			(child as CanvasItem).visible = child.name == visible_name
