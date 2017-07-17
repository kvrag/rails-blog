class User < ActiveRecord::Base
  has_many :articles
  has_many :comments

  validates :username, :email, presence: true, uniqueness: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end