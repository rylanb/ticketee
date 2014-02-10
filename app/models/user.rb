class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :admin #Make this work for app, but really in this app?!

  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
end
