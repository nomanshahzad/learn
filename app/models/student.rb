class Student < ApplicationRecord
    validates :name , presence:true, length: {minimum:3,maximum:10}
    validates :roll_num , presence:true
    validates :father , presence:true, length: {minimum:3,maximum:10}

end