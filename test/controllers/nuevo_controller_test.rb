require 'test_helper'

class NuevoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nuevo_index_url
    assert_response :success
  end

end
