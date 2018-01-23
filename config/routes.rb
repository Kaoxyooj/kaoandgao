Rails.application.routes.draw do
    get "*id" => 'pages#gallery', as: :page, format: false
    root to: 'pages#index', id: 'home'
end
