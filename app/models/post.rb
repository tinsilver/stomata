class Post < ActiveRecord::Base
  validates :title, length: { maximum: 40 }
  attr_accessible :content, :title
end