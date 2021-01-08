class Wizard < ActiveRecord::Base
   belongs_to :schools

# Array of all of the names of the Wizards
   def self.names
      all.pluck(:name)
   end

# Array of all wizards by school
   def self.slytherin
      sly = self.where(school: 'Slytherin').pluck(:name)
      puts sly
      puts "\n"
   end

   def self.ravenclaw
      rvn = self.where(school: 'Ravenclaw').pluck(:name)
      puts rvn
      puts "\n"
   end
   
   def self.hufflepuff
      hpf = self.where(school: 'Hufflepuff').pluck(:name)
      puts hpf
      puts "\n"
   end
   
   def self.gryffindor
      gfd = self.where(school: 'Gryffindor').pluck(:name)
      puts gfd
      puts "\n"
   end
   
# Create mew wizards
   def self.create_new
      banner
      puts "What is your given wizard and last name?"
      @username = gets.chomp
         sleep(0.25)
      clear
      banner
      puts "How old are you?"
      @age = gets.chomp
         sleep(0.25)
      clear
      banner
      puts "What is your current pet?"
      @pet = gets.chomp
         sleep(0.25)
      clear
      Wizard.create(name: @username, age: @age, pet: @pet)
      banner
      puts "Welcome to Hogwarts, #{@username}!"
         sleep(2)
      clear
   end

   def self.update_wizard(name, age)
   end










end