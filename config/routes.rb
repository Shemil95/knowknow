Rails.application.routes.draw do
  resources :knows

  root 'knows#index'
end
