extends state_machine

func _ready():
	states = {}
	
	current_state = states[""] #--> Definir el primer estado
	active = true
	change_state("") #--> Cambiar al primer estado
