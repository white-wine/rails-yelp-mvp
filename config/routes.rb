Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:update, :edit, :destroy] do
    resources :reviews, except: [:index, :update, :edit, :destroy]
  end
end
