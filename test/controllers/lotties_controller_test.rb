require 'test_helper'

class LottiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lotties_index_url
    assert_response :success
  end

end
