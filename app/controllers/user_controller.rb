require_relative './../services/validateUser.rb'

class UserController < ApplicationController
  def login
    username = params[:username]
    password = params[:password]

    result = validate(username, password)

    response = {"response": result}
    render json: response
  end

  def create
    username = params[:username]
    password = params[:password]

    user = User.new({"username": username, "password": password})
    user.save

    balance = Balance.new({"btc": 0.1, "usd": 1000, "user_id": "#{user.id}"})
    balance.save

    render json: user
  end

  def balance
    user_id = params[:user_id]

    result = Balance.find_by(user_id: user_id)
    response = {"response": {"usd": result.usd, "btc": result.btc}}

    render json: response
  end
end
