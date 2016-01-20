require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
   test "create success" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place, :user => user)
    
    assert_difference 'Comment.count' do
      post :create, :place => place.id,:comment =>  {
        :message => 'yo',
        :user => user.id
      }
    }
    end
    assert_redirected_to places_path
    assert_equal 1, place.comments.count
  end
  # test "the truth" do
  #   assert true
  # end
end
