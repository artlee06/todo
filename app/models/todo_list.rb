class TodoList < ApplicationRecord
    has_many :todo_items
    #because the relationship is a todo list has many todo items
end
