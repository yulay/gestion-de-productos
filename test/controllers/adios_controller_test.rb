require 'test_helper'

class AdiosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adios_index_url
    assert_response :success
  end

end
