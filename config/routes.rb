Rails.application.routes.draw do
  devise_for :admins
  root to: "adminss#index"
end
