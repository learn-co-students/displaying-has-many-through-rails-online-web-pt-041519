class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments
end

#can't just declare that our User has_many :posts 
#because our posts table doesn't have a foreign key
# called user_id