Rails.application.routes.draw do
  get 'turtles/show'
  post 'turtles/act'
  resource :shell, only: [:show, :edit, :update]
end
