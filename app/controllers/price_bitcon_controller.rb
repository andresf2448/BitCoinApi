require_relative './../services/price_bitcoin.rb'

class PriceBitconController < ApplicationController
  def price
    result = priceBitcoin

    response = {"response": result}
    render json: response
  end
end
