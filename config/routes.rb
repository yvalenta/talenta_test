Rails.application.routes.draw do
  resources :regiones do
  	#collection do 
  		get 'asociations'
      get 'create_asociations'
      get 'send_asociations'
  	#end
  end

  resources :municipios
  resources :asociations


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
