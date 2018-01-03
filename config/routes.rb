Rails.application.routes.draw do
  resources :regiones do
  	#collection do 
  		get 'asociations'
  	#end
  end

  resources :municipios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
