extends RefCounted

const IntelSystemScript = preload("res://autoload/intel_system.gd")


func run() -> Array[String]:
	var failures: Array[String] = []
	var save_path := "user://test_branch_unlocks_save.json"
	DirAccess.remove_absolute(ProjectSettings.globalize_path(save_path))

	var intel_system = IntelSystemScript.new()
	intel_system.save_path = save_path
	intel_system._load_intel_database()

	var statuses := _to_map(intel_system.get_branch_statuses())
	if not statuses.has("branch_a") or statuses["branch_a"]["status"] != "available":
		failures.append("branch_a should be available from the start")
	if not statuses.has("branch_b") or statuses["branch_b"]["status"] != "locked":
		failures.append("branch_b should start locked")
	if not statuses.has("final_branch") or statuses["final_branch"]["status"] != "locked":
		failures.append("final_branch should start locked")

	intel_system.acquire_intel("intel_food_change")
	statuses = _to_map(intel_system.get_branch_statuses())
	if not statuses.has("branch_b") or statuses["branch_b"]["status"] != "available":
		failures.append("branch_b should unlock after intel_food_change or intel_maid_tears")

	intel_system.acquire_intel("intel_chancellor_betrayal")
	statuses = _to_map(intel_system.get_branch_statuses())
	if not statuses.has("branch_a") or statuses["branch_a"]["status"] != "completed":
		failures.append("branch_a should be completed after a branch_a completion intel")

	for intel_id in [
		"intel_city_fall",
		"intel_assassination",
		"intel_mob_manipulation",
		"intel_king_truth",
		"intel_magic_sabotage",
		"intel_chancellor_treason",
	]:
		intel_system.acquire_intel(intel_id)

	statuses = _to_map(intel_system.get_branch_statuses())
	if not statuses.has("final_branch") or statuses["final_branch"]["status"] != "available":
		failures.append("final_branch should unlock after all confrontation intel requirements")

	if intel_system.get_completed_side_branch_count() != 2:
		failures.append("completed side branch count should reach 2 after both branches are completed")

	DirAccess.remove_absolute(ProjectSettings.globalize_path(save_path))
	return failures


func _to_map(statuses: Array) -> Dictionary:
	var result := {}
	for status in statuses:
		result[status["id"]] = status
	return result
