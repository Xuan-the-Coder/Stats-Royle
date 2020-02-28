require 'test_helper'

class ClansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clans_index_url
    assert_response :success
  end

end
