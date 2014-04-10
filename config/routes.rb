CatarsePagseguro::Engine.routes.draw do
  namespace :payment do
    get   '/pagseguro/:id/review'     => 'pagseguro#review',  :as => 'review_pagseguro'
    post  '/pagseguro/notifications'  => 'pagseguro#ipn',     :as => 'ipn_pagseguro'
    match '/pagseguro/:id/pay'        => 'pagseguro#pay',     :as => 'pay_pagseguro'
    match '/pagseguro/:id/success'    => 'pagseguro#success', :as => 'success_pagseguro'
    match '/pagseguro/:id/cancel'     => 'pagseguro#cancel',  :as => 'cancel_pagseguro'
  end
end
