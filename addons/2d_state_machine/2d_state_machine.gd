tool
extends EditorPlugin

onready var texture_node = preload("res://addons/2d_state_machine/icons/Node.svg")

func _enter_tree():
	add_custom_type("StateMachinePlayer", "Node", preload("res://addons/2d_state_machine/state_machine_player.gd"), texture_node)

func _exit_tree():
	remove_custom_type("StateMachinePlayer")
