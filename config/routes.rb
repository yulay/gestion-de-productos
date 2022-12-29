Rails.application.routes.draw do
  resources :listados do
    collection do
      delete :destroyall
    end
  end

  get 'nuevo/index'

  get 'home/prueba'

  root 'home#prueba'
  get 'adios/index'
  get 'bienvenido/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end