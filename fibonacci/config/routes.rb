Rails.application.routes.draw do
  get 'fibo/index'

  root 'fibo#index'

  resources :fib, :defaults => { :format => 'json' }

end
