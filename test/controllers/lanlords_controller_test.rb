require 'test_helper'

class LanlordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lanlords_index_url
    assert_response :success
  end

  test "should get show" do
    get lanlords_show_url
    assert_response :success
  end

end
