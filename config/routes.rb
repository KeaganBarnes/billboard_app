Rails.application.routes.draw do
  root "billboards#show"

  resources :billboards do
    resources :songs
  end

  resources :artists do 
    resources :songs
  end

end
