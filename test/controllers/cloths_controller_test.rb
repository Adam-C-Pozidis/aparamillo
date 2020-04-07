require 'test_helper'

class ClothsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cloths_index_url
    assert_response :success
  end

  test "should get show" do
    get cloths_show_url
    assert_response :success
  end

end
