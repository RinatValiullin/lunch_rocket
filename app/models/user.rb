class User < ActiveRecord::Base
<<<<<<< HEAD
  rolify
=======
>>>>>>> 4bb93ef9da652b4c0c42ef2fc974963ea8c5aa98
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
