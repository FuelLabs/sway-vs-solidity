// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title To-Do Manager
contract Todos {
    /// @dev To-Do Data Structure.
    /// @param text To-Do text.
    /// @param completed True if completed.
    struct Todo {
        string text;
        bool completed;
    }

    /// @notice To-Do list.
    /// @dev This implicitly creates a getter that allows fetching by index.
    Todo[] public todos;

    /// @notice Create a new To-Do
    /// @param text To-Do text.
    function create(string calldata text) public {
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(Todo(text, false));

        // key value mapping
        todos.push(Todo({text: text, completed: false}));

        // initialize an empty struct and then update it
        Todo memory todo;
        todo.text = text;
        // todo.completed initialized to false

        todos.push(todo);
    }

    /// @notice Updates the text of a To-Do.
    /// @param index Index of the To-Do item.
    /// @param text New To-Do text.
    function updateText(uint index, string calldata text) public {
        Todo storage todo = todos[index];
        todo.text = text;
    }

    /// @notice Toggles whether a given To-Do item is completed, by index.
    /// @param index Index at which the To-Do item is to be toggled.
    function toggleCompleted(uint index) public {
        Todo storage todo = todos[index];
        todo.completed = !todo.completed;
    }
}
