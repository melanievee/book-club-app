require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = build(:user)
  end

  test 'valid factory' do
    assert @user.valid?
  end

  test 'email uniqueness' do
    @user.save
    duplicate_user = @user.dup
    assert_not duplicate_user.valid?
  end

  test 'email presence' do
    @user.email = nil
    assert_not @user.valid?
  end
  
  test 'first name presence' do
    @user.first_name = nil
    assert_not @user.valid?
  end
end
