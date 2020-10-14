Rails.application.routes.draw do

  devise_scope :user do
    root "users/sessions#new"
  end

  devise_for :users , :controllers => {
    :sessions => 'users/sessions'
  }

  if Rails.env.development?  
    mount LetterOpenerWeb::Engine, at: "/letter_opener"  
  end  



  get 'lotties/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
