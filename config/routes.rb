Rails.application.routes.draw do
  root 'board#index'

  get 'board/index'
  get 'board/new'
  post 'board/create'
  get 'board/show/:id' => "board#show"
  get 'board/edit/:id' => "board#edit"
  post 'board/update/:id' => "board#update"
  get 'board/destroy/:id' => "board#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
