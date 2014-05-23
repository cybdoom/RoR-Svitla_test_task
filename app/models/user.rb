class User < ActiveRecord::Base
  include Gravtastic
  has_gravatar

  devise :database_authenticatable, :registerable, :trackable, :validatable

  has_many :images

end
