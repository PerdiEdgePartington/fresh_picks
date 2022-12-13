class User < ApplicationRecord
  acts_as_favoritor
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :favourites
  has_many :recipes, through: :favourites
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
