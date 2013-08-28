class Post < ActiveRecord::Base
  validates :content, length: { maximum: 255 }
  attr_accessible :content, :title
end