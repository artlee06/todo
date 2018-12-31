class TodoList < ApplicationRecord
    has_many :todo_items, dependent: :destroy
    #because the relationship is a todo list has many todo items
end
