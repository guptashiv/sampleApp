require 'test_helper'

class UserTest < ActiveSupport::TestCase
    
    def setup
        @user = User.new(name:"Example user", email: "example email")
    end
    
    test "should be valid" do
        assert @user.valid?
    end
    
    
    test "name should be present" do
        @user.name=" "
        assert_not @user.valid?
    end
   
    test "email should be present" do
        @user.email=" "
        assert_not @user.valid?
    end
    
    test "Not Too Long name" do
        @user.name = "b"*51
        assert_not @user.valid?
    end
    
    test "Not too long email" do
        @user.email = "a" *256
        assert_not @user.valid?
    end
end
