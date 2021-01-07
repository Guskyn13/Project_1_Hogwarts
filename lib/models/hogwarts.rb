class Hogwarts < ActiveRecord::Base
   has_many :schools
   has_many :wizards, through: :schools
end