extends RefCounted

## 分層立繪：確認 preset 只亮一層 face + 一層 hand，且對齊調整不拆散子節點。


func run() -> Array[String]:
	var failures: Array[String] = []
	var princess: DialogicCharacter = load("res://dialogic/characters/princess.dch") as DialogicCharacter
	if princess == null:
		return ["failed to load princess.dch"]

	var scene: PackedScene = load("res://dialogic/portraits/princess_layered_portrait.tscn")
	if scene == null:
		return ["failed to load princess_layered_portrait.tscn"]

	var cases := {
		"default": {"face": "Smile", "hands": "Folded"},
		"shocked": {"face": "Sad", "hands": "Open"},
		"sad": {"face": "Sad", "hands": "Folded"},
	}

	for portrait_key in cases.keys():
		var node: Node = scene.instantiate()
		node._update_portrait(princess, portrait_key)
		failures.append_array(_assert_layers(node, portrait_key, cases[portrait_key]))
		failures.append_array(_assert_alignment(node, portrait_key))
		failures.append_array(_assert_coverage(node, portrait_key))
		node.free()

	return failures


func _assert_layers(node: Node, portrait_key: String, expected: Dictionary) -> Array[String]:
	var failures: Array[String] = []
	var face := node.get_node("Face")
	var hands := node.get_node("Hands")
	failures.append_array(_assert_single_visible(face, str(expected["face"]), "%s face" % portrait_key))
	failures.append_array(_assert_single_visible(hands, str(expected["hands"]), "%s hands" % portrait_key))
	return failures


func _assert_single_visible(group: Node, expected_name: String, label: String) -> Array[String]:
	var visible: Array[String] = []
	for child in group.get_children():
		if child is CanvasItem and (child as CanvasItem).visible:
			visible.append(child.name)
	if visible.size() != 1:
		return ["%s: expected 1 visible layer, got %s" % [label, visible]]
	if visible[0] != expected_name:
		return ["%s: expected %s, got %s" % [label, expected_name, visible[0]]]
	return []


func _assert_coverage(node: Node, portrait_key: String) -> Array[String]:
	if not node.has_method("_get_covered_rect"):
		return ["%s: portrait missing _get_covered_rect" % portrait_key]
	var rect: Rect2 = node._get_covered_rect()
	if rect.size.x < 100.0 or rect.size.y < 100.0:
		return ["%s: covered rect too small %s (body likely missing from layout)" % [portrait_key, rect]]
	return []


func _assert_alignment(node: Node, portrait_key: String) -> Array[String]:
	for child_name in ["Body", "Face", "Hands"]:
		var child: Node2D = node.get_node(child_name) as Node2D
		if child == null:
			return ["%s: missing node %s" % [portrait_key, child_name]]
		if child.position != Vector2.ZERO:
			return ["%s: %s position should stay at origin, got %s" % [portrait_key, child_name, child.position]]
	return []
