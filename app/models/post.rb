class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :post_type, :post_status

  validates :title, :presence => true  

  module PostStatus
    DISABLED = 'disabled'
    ACTIVE  = 'active'
    IN_DEVELOPMENT  = 'in_development'
  end
  STATUSES = [ PostStatus::DISABLED, PostStatus::ACTIVE, PostStatus::IN_DEVELOPMENT ]
  validates :post_status, :inclusion => { :in => STATUSES, :message => "%{value} is not a valid post status value" }
  
  module PostType
    BASIC_CONTENT = 'basic_content_page'
    QUESTION  = 'question_page'
    SUMMARY  = 'summary'
  end
  POST_TYPES = [ PostType::BASIC_CONTENT, PostType::QUESTION, PostType::SUMMARY ]
  validates :post_type, :inclusion => { :in => POST_TYPES, :message => "%{value} is not a valid post type" }
  
end

