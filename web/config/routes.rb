Rails.application.routes.draw do
  
  devise_for :users, controllers: { sessions: 'sessions', registrations: 'registrations' }
  

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/, defaults: {locale: "en"} do
    
    root 'posts#index'    

    resources :donations
    resources :incidents
    resources :items
    resources :posts
    resources :users
    
  end

end
