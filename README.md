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

4.- Add the states as child nodes to StateMachinePlayer node and for each one there must be a script created. In each of the nodes of the states, it must be extended by state.

![add_child_nodes](https://user-images.githubusercontent.com/69488912/132341844-5c00b883-d7ed-43e3-8d53-cec4837a8d60.PNG)

5.- In the script that is included with the StateMachinePlayer node, you must define the states that your character will have and what the initial state will be.

![define_state_machine](https://user-images.githubusercontent.com/69488912/132342046-f54c447b-11d7-4ea9-a479-ccbe757c364c.PNG)

6.- You only have to edit the scripts of the child nodes with the "enter" and "physics" functions.

``` 
Hello
world!
```
