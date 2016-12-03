class User < ActiveRecord::Base
	has_one :inventory
	has_many :line_badges
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable, :timeoutable, :registerable

end
