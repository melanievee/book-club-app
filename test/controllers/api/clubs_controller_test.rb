require 'test_helper'

class Api::ClubsControllerTest < ActionDispatch::IntegrationTest
  test 'get single club is successful and with correct content type and club name' do
    club = create(:club)
    get api_club_url(club)

    response_body = JSON.parse(@response.body)

    assert_response :success
    assert_equal 'application/json', @response.content_type
    assert_equal club.name, response_body['name']
  end

  test 'get single club includes its members' do
    club_with_members = create(:club_with_members, members_count: 3)
    get api_club_url(club_with_members)

    response_body = JSON.parse(@response.body)

    expected_member_ids = club_with_members.users.map { |r| r.id }
    actual_member_ids = response_body['users'].map{ |r| r['id'] }

    assert_equal expected_member_ids, actual_member_ids
  end
end
