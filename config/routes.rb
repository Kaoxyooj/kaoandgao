Rails.application.routes.draw do
    root to: 'pages#index', id: 'home'
    
    resources :guestbooks
    
    get "*id" => 'pages#show', as: :page, format: false
end
