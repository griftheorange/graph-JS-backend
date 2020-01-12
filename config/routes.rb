Rails.application.routes.draw do
  resources :pie_graphs
  resources :line_graphs
  resources :bar_graphs
  resources :datasets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
