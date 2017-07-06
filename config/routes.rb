# Rails.application.routes.draw do
JwtAuth::Engine.routes.draw do

  post 'register' => 'auth#register', as: :register
  post 'sign_in' => 'auth#auth', as: :sign_in

end
