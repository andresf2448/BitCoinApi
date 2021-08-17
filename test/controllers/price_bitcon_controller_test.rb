require "test_helper"

class PriceBitconControllerTest < ActionDispatch::IntegrationTest
  test "should get price" do
    get price_bitcon_price_url
    assert_response :success
  end
end
