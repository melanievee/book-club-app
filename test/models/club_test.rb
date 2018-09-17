require 'test_helper'

class ClubTest < ActiveSupport::TestCase
  def setup
    @club = build(:club)
  end

  test 'valid factory' do
    assert @club.valid?
  end

  test 'email presence' do
    @club.name = nil
    assert_not @club.valid?
  end
end
