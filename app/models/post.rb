class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy #if a post gets deleted, its comments get deleted from the database as well - cool!
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true 

end