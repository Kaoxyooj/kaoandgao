Rails.application.routes.draw do
  devise_for :admins
  root to: "story#index"
end
