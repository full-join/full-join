# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :post do
    title {Faker::Book.title}
    text {Faker::TvShows::HowIMetYourMother.quote}
  end
end
