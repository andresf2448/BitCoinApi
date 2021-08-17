require "test_helper"

class TransactionControllerTest < ActionDispatch::IntegrationTest
  test "should get sell" do
    get transaction_sell_url
    assert_response :success
  end

  test "should get buy" do
    get transaction_buy_url
    assert_response :success
  end
end
