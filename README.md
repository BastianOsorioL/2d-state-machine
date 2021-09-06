# 2d-state-machine
State Machine Plugin for 2d games in godot.  It comes with the implementation of 4-way movement.

To use this plugin correctly, the following steps must be followed:

1.- You must create the script of the character node to which you want to implement the state machine.

2.- Verify that you have the plugin enabled. _**`(Project/Projects Settings/Plugins)`**_

3.- Add _**`StateMachinePlayer`**_ node to your character.

4.- Add the states as child nodes to StateMachinePlayer node and for each one there must be a script created. In each of the nodes of the states, it must be extended by state.


5.- In the script that is included with the node, you must define the states that your character will have and what the initial state will be.

6.- You only have to edit the scripts of the child nodes with the "enter" and "physics" functions.

``` 
Hello
world!
```
