Rails.application.routes.draw do
    root to: 'pages#index', id: 'home'
    
    resources :guestbooks, path: :guestbook

    get "*id" => 'pages#show', as: :page, format: false
end
