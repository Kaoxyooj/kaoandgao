Rails.application.routes.draw do
    root to: 'pages#index', id: 'home'
    
    resources :guestbooks, path: :guestbook
    resources :rsvps, path: :rsvp

    get "mgh", to: "rsvps#mgh", as: "mgh"
    get "check_password", to: "rsvps#check_password", as: "check_password"

    patch "mgh_checklist", to: "rsvps#mgh_checklist", as: "mgh_checklist"

    get "*id" => 'pages#show', as: :page, format: false
end
