contract;

use std::storage::StorageVec;

struct Todo {
    text: str[10],
    completed: bool,
}

impl Todo {
    fn update_text(mut self, text: str[10]) {
        self.text = text;
    }
}

storage {
    todos: StorageVec<Todo> = StorageVec {},
}

abi Todos {
    #[storage(read, write)]
    fn create(text: str[10]);

    #[storage(read)]
    fn get(index: u64) -> Todo;

    #[storage(read, write)]
    fn update_text(index: u64, text: str[10]);

    #[storage(read, write)]
    fn toggle_completed(index: u64);
}

impl Todos for Contract {
    #[storage(read, write)]
    fn create(text: str[10]) {
        let new_todo = Todo {
            text: text,
            completed: false,
        };
        storage.todos.push(new_todo);
    }

    #[storage(read)]
    fn get(index: u64) -> Todo {
        storage.todos.get(index).unwrap()
    }

    #[storage(read, write)]
    fn update_text(index: u64, text: str[10]) {
        let mut todo = storage.todos.get(index).unwrap();
        todo.update_text(text);
        storage.todos.set(index, todo);
    }

    #[storage(read, write)]
    fn toggle_completed(index: u64) {
        let mut todo = storage.todos.get(index).unwrap();
        todo.completed = !todo.completed;
        storage.todos.set(index, todo);
    }
}
