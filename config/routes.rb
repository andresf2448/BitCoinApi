Rails.application.routes.draw do
  post 'transaction/sell'
  post 'transaction/buy'
  post 'transaction/historyTransactions'
  post 'transaction/Transaction'
  get 'price_bitcon/price'
  post 'user/login'
  post 'user/create'
  post 'user/balance'
end
