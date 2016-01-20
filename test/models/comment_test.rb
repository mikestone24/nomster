require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "humanized_rating" do
    user = FactoryGirl.create(:user)

    place = FactoryGirl.create(:place, :user => user)
    comment = FactoryGirl.create(:comment,:user => user, :place => place,:rating=>'2_stars')
    assert_equal comment.humanized_rating,"two stars"

  end
  # test "the truth" do
  #   assert true
  # end
end
