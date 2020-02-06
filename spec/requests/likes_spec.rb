require 'rails_helper'

RSpec.describe "likes request", type: :request do
  let (:user){FactoryBot.create(:user)}
  let (:test_post){FactoryBot.create(:post)}
  describe "#create" do
    it "should create a like" do
      expect{post user_likes_path(user), params: {
        like: {
          user_id: user.id,
          post_id: test_post.id
        }
      }}.to change{Like.count}.by(1)
    end
  end
end