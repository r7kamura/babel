Babel::Application.routes.draw do
  root to: "entries#index"

  resources :entries do
    resources :codes
  end
end
