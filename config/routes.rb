Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # ↑↑上の記述は削除しましょう↑↑
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]


  # https://master.tech-camp.in/v2/curriculums/4841
  # https://master.tech-camp.in/v2/curriculums/4840
  # https://master.tech-camp.in/v2/curriculums/4850
end
