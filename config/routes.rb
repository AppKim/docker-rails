Rails.application.routes.draw do
  devise_for :users

  root "lotties#login_check" 
  get "lotties" => "lotties#index", as: :lottiespage

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
