require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(email: "user@example.com", password: "password", password_confirmation: "password")
end

test "should be valid" do 
    assert @user.invalid?
  end
    
# test for valid email addresses
test "email validation should accept valid addresses" do
    valid_addresses = %w[foo@bar.com THISGUY@TEST.COM A_US-ER@foo.bar.org first.last@foo.jp jane+sam@faz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
end

#test for invalid email addresses
test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
end

# test password minimum length as 8
test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 7
    assert_not @user.valid?
  end
end
