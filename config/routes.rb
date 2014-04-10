CatarsePagseguro::Engine.routes.draw do
  resources :pagseguro, only: [], path: 'payment/pagseguro' do
    collection do
      post :ipn # Notification
    end

    member do
      get :review
      get :success
      get :cancel
      post :pay
    end
  end
end
