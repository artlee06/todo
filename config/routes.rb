Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  # nested routes to capture relationship that todo items are children of todo lists 
  get 'tags/:tag', to: 'todo_lists#index', as: :tag


  root "todo_lists#index"
#ensure the homepage is todo list index view
end
