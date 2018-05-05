Rails.application.routes.draw do
  resources :advertisement

  resources :posts

  get 'about' => 'welcome#about'


  get 'welcome/contact'

  get 'welcome/faq'

  root 'welcome#index'

end
