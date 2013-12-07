class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
   has_many :students
   has_many :behaviors
   has_many :mstudents
   has_many :interventions
   ROLES = %w[admin user author banned]
end
