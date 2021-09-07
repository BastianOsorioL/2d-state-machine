# 2d-state-machine
State Machine Plugin for 2d games in godot.  It comes with the implementation of 4-way movement.

To use this plugin correctly, the following steps must be followed:

1.- You must create the script of the character node to which you want to implement the state machine, like the next example.

![player_script](https://user-images.githubusercontent.com/69488912/132252971-3132e9bf-186c-4dde-9a2f-4d70d17c9404.PNG)

2.- Verify that you have the plugin enabled. _**`(Project/Projects Settings/Plugins)`**_

![config_plugin](https://user-images.githubusercontent.com/69488912/132253089-fd464b9b-33cc-4a8a-bb7c-deb243f1e95b.PNG)

3.- Add _**`StateMachinePlayer`**_ node to your character.

![add_state_machine_player](https://user-images.githubusercontent.com/69488912/132253182-20157028-6d4c-49c5-b097-dce43efc5276.PNG)

_**`Note: If you want to create a second state machine different from the first one, you must create a different node with its respective script where to define the new states.`**_

4.- Add the states as child nodes to StateMachinePlayer node and for each one there must be a script created. _**`Each of the state node scripts must be extended by state`**_

![add_child_nodes](https://user-images.githubusercontent.com/69488912/132341844-5c00b883-d7ed-43e3-8d53-cec4837a8d60.PNG)

5.- In the script that is included with the StateMachinePlayer node, you must define the states that your character will have and what the initial state will be.

![define_state_machine](https://user-images.githubusercontent.com/69488912/132342046-f54c447b-11d7-4ea9-a479-ccbe757c364c.PNG)

6.- You only have to edit the scripts of the child nodes with the "enter" and "physics" functions.

```
extends state

var name_state

func enter(): ----> THIS FUNCTION IS EXECUTED WHEN YOU ENTER THE STATE
	name_state = self.get_name()
	
func physics(delta): ----> THIS FUNCTION IS IN CHARGE OF MAKING THE CORRESPONDING VALIDATIONS TO CHANGE FROM ONE STATE TO ANOTHER
	get_direction()
	move()
  
  direction_validation(name_state)

```

Below an example of the state called _**`"Right"`**_

![state_child_script](https://user-images.githubusercontent.com/69488912/132351303-37d498bd-4d9e-43de-9b3d-11b85f552bb9.PNG)

Plugin Functions
-------

The following functions can be used to construct the states.:

- _**`"get_direction()"`**_ : This function gives you the orientation in which the character will move, depending on the key that is pressed.
-  _**`"move()"`**_ : This function gives the speed defined in the player script to the character.
- _**`"walk_animation(texture, is_flip_h)"`**_ : This function is used to run an animation, the first argument it receives is the character texture for that state. And the second argument is optional, which is a boolean to flip the sprite, which has a false value by default.
- _**`"stop_walk()"`**_ : It's used to stop the sprite and leave it in its first frame.
- _**`"direction_validation(state_name)"`**_ : This function validates changes in the direction of the character while it is in a state, in this way the changes of state are made. The only parameter that this function receives is the name of the node of the state that needs to be validated.
