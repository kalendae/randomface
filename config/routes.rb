Randomface::Application.routes.draw do
  resources :faces

  root :to => "faces#index"

end
