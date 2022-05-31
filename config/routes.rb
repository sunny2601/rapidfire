Rapidfire::Engine.routes.draw do
  resources :surveys,, :except => [:show] do
    get 'results', on: :member
    resources :questions
    resources :attempts, only: [:new, :create, :edit, :update, :show]
  end

  root :to => "surveys#index"
end
