# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    name        "Name"
    title       "Title"
    content     "Contetnt"
    post_type   Post::PostType::QUESTION
    post_status Post::PostStatus::ACTIVE
  end
end
