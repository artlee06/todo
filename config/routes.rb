Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items
  end
  # nested routes to capture relationship that todo items are children of todo lists 
root "todo_lists#index"
#ensure the homepage is todo list index view
end
