Rapidfire::Engine.routes.draw do
  resources :surveys do
    get 'results', on: :member
    collection do
      get 'global_parameters', as: 'survey_global_parameter'
    end
    resources :questions
    resources :attempts, only: [:new, :create, :edit, :update, :show]
  end

  root :to => "surveys#index"
end
