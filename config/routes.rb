Rails.application.routes.draw do
    get "*id" => 'pages#show', as: :page, format: false
    # get "*id" => 'pages#guestbook', as: :guestbook, format: false
    # get "*id" => 'pages#rsvp', as: :rsvp, format: false
    root to: 'pages#index', id: 'home'
end
