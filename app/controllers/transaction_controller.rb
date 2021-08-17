require_relative './../services/validateTransactionSell.rb'
require_relative './../services/validateTransactionBuy.rb'
require 'json'

class TransactionController < ApplicationController
  def sell
    type = params[:type]
    user_id = params[:user_id]
    csend = params[:csend]
    creceive = params[:creceive]
    asend = params[:asend]
    areceive = params[:areceive]

    puts "Entramos---------------------------------------"

    dataUser = Balance.find_by(user_id: user_id)

    result = validateTransactionSell(user_id, dataUser, type, csend, creceive, asend, areceive)

    response = {"response": result}
    render json: response
  end

  def buy
    type = params[:type]
    user_id = params[:user_id]
    csend = params[:csend]
    creceive = params[:creceive]
    asend = params[:asend]
    areceive = params[:areceive]

    dataUser = Balance.find_by(user_id: user_id)

    result = validateTransactionBuy(user_id, dataUser, type, csend, creceive, asend, areceive)

    response = {"response": result}
    render json: response
  end

  def historyTransactions
    user_id = params[:user_id]
    
    result = Transaction.where(user_id: user_id)

    render json: result.to_json
  end

  def Transaction
    id = params[:id]

    result = Transaction.find(id)

    render json: result.to_json
  end
end