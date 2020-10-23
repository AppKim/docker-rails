# frozen_string_literal: true

Rails.application.routes.draw do
  get 'posts/index' => 'posts#index'
  get 'posts/write' => 'posts#write'
  get 'posts/modify/:post_id' => 'posts#modify'
  get 'posts/delete/:post_id' => 'posts#delete'
  post 'posts/update/:post_id' => 'posts#update'
  post 'posts/create' => 'posts#create'
  get 'calculators/index' => 'calculatoers#index'
  get 'calculators/add/:first/:second' => 'calculators#add'
  post 'calculator/add' => 'calculators#add'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
