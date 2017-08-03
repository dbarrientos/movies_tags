class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :movies
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable




  enum role: {admin: 0, normal: 1, guest: 2}
end
