class Post < ActiveRecord::Base
  paginates_per 25
  
  belongs_to :post_category
  belongs_to :user
  
  has_many :comments, :as => :commentable, :dependent => :destroy
  
  validates_presence_of :user_id
  #validates_presence_of :post_category_id
  validates_presence_of :title
  validates_presence_of :body
  
end
