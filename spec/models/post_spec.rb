require 'spec_helper'

describe "Post" do

  subject { FactoryGirl.create :post }

  it { should validate_presence_of(:title) }

  it "should validate status can't be set to invalid values" do
    post = FactoryGirl.create :post
    post.post_status = 'foo'
    post.should_not be_valid
    post.post_status =  Post::PostStatus::ACTIVE
    post.should be_valid
    post.post_status =  Post::PostStatus::DISABLED
    post.should be_valid
    post.post_status =  Post::PostStatus::IN_DEVELOPMENT
    post.should be_valid
  end
  
  it "should validate types can't be set to invalid values" do
    post = FactoryGirl.create :post
    post.post_type = 'foo'
    post.should_not be_valid
    post.post_type =  Post::PostType::BASIC_CONTENT
    post.should be_valid
    post.post_type =  Post::PostType::QUESTION
    post.should be_valid
    post.post_type =  Post::PostType::SUMMARY
    post.should be_valid
  end
      
end