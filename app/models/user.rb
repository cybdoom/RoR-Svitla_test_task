class User < ActiveRecord::Base
  include Gravtastic
  has_gravatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :lockable

  has_many :images

end
