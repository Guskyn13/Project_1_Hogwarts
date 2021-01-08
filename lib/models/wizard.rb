class Wizard < ActiveRecord::Base
   belongs_to :schools

# Array of all of the names of the Wizards
   def self.names
      all.pluck(:name)
   end

   def self.pets
      all.pluck(:pet)
   end

# Array of all wizards by school
  def self.slytherin
      sly = self.where(school: 'Slytherin').pluck(:name)
      puts sly
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

   def self.update_pet(pet)
      old_pet = Wizard.all.find_by(pet: pet)
      clear
      puts "What is your new pet?"
      user_input = gets.chomp
      old_pet.update(pet: user_input)
      user_input
   end
# binding.pry









end