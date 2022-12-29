require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get prueba" do
    get home_prueba_url
    assert_response :success
  end

end
