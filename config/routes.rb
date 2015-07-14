Rails.application.routes.draw do

  get 'hotels/index'

  get 'towns/index'

  get 'sessions/new'

  root          'staticpages#home'
  get 'help' => 'staticpages#help'
  get 'about' =>'staticpages#about'
  get 'contact'=>'staticpages#contact'
  get 'signup'  => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create' 
  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :towns
  resources :hotels
end
