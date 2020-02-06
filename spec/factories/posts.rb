# == Schema Information
#
# Table name: blogs
#
#  id         :bigint           not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :blog do
    title {Faker::Book.title}
    text {Faker::TvShows::HowIMetYourMother.quote}
  end
end
