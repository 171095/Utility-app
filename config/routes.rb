Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :past_details
  resources :current_workplaces
  resources :professional_account do 
    member do
      patch :update_account
      post :add_past_details
      post :add_current_details
    end
  end
  resources :user_account do 
    member do
      patch :update_account
    end
  end
  resources :pro_skills
  resources :skills
  devise_for :professionals, controllers: 
    {
      sessions: 'professionals/sessions', 
      registrations: 'professionals/registrations',
      confirmations: 'professionals/confirmations'
    }
  devise_for :users, controllers: 
    { 
      sessions: 'users/sessions', 
      registrations: 'users/registrations', 
      confirmations: 'users/confirmations', 
      :omniauth_callbacks => 'users/omniauth_callbacks' 
    }
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
end
