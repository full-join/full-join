require 'rails_helper'

RSpec.describe "likes request", type: :request do
  let (:user){FactoryBot.create(:user)}
  let (:blog){FactoryBot.create(:blog)}
  describe "#create" do
    it "should create a like" do
      expect{post user_likes_path(user), params: {
        like: {
          user_id: user.id,
          blog_id: blog.id
        }
      }}.to change{Like.count}.by(1)
    end
  end
end