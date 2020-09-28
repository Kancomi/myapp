class User < ApplicationRecord
  
  has_secure_password
  
  # For name
  validates :name, {presence: true}
  
  # For email
  validates :email, {presence: true, uniqueness: true}
  

  def posts
    return Post.where(user_id: self.id)
  end
end
