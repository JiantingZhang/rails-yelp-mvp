require 'test_helper'

class ReviewscontentControllerTest < ActionDispatch::IntegrationTest
  test "should get rating" do
    get reviewscontent_rating_url
    assert_response :success
  end

end
