Rails.application.routes.draw do
  
  mount_ember_app :frontend, to: "/"

  resources :articles do
    resources :comments
  end
	
	get 'tags/:tag', to: 'articles#index', as: "tag"
 
   root 'welcome#index'
end
