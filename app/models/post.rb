class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  
  validates :title, :body, :presence => true
end
