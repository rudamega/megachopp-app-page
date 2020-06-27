require 'test_helper'

class CombustiblesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get combustibles_index_url
    assert_response :success
  end

  test "should get new" do
    get combustibles_new_url
    assert_response :success
  end

end
