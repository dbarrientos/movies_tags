Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  resources :tags
  resources :movies do
    member do
      get 'destroy/:tag_id', to: "movies#destroy_tag", as: "destroy_tag"
    end
  end

  resources :users

  root "movies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
