require 'test_helper'

class Api::ClubsControllerTest < ActionDispatch::IntegrationTest
  test 'get single club by id' do
    club = create(:club)
    get api_club_url(club)

    response_body = JSON.parse(@response.body)

    assert_response :success
    assert_equal 'application/json', @response.content_type
    assert_equal club.name, response_body['name']
  end
end
