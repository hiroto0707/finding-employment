require 'test_helper'

class EnterprisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enterprises_index_url
    assert_response :success
  end

end
