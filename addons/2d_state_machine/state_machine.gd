extends Node

class_name state_machine

var character
var states: Dictionary = {}
var current_state
var active: bool


func _ready():
	character = owner
	
func _input(event):
	if active == false:
		return
	current_state.handle_input(event)
	
func _physics_process(delta):
	if active == false:
		return
	current_state.physics(delta)
	
func change_state(state_name):
	if active == false:
		return
	if state_name in states:
		current_state = states[state_name]
		current_state.state_machine = self
		current_state.character = character
		current_state.anim_character = character.get_node("AnimationPlayer")
		current_state.label_state = character.get_node("Label")
		current_state.sprite = character.get_node("Sprite")
		current_state.speed = character.speed
		current_state.velocity = character.velocity
		current_state.direction = character.direction
		current_state.enter()
