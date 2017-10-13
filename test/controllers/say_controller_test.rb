require 'test_helper'

class SayControllerTest < ActionDispatch::IntegrationTest
  test "should get Hello" do
    get say_Hello_url
    assert_response :success
  end

  test "should get goodbye" do
    get say_goodbye_url
    assert_response :success
  end

end
