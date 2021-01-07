class School < ActiveRecord::Base
   has_many :wizards
   belongs_to :hogwarts

   def self.school_id(school)
      self.find_by(name: school).id
   end
end