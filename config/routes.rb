Babel::Application.routes.draw do
  root to: "entries#index"

  resources :entries do
    collection do
      get :search
    end

    resources :codes
  end
end
