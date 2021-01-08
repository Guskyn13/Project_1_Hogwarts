def prompt
   TTY::Prompt.new
end

def font
   TTY::Font.new(:doom) 
end

def clear
   system('clear')
end

def new_student
   clear
   banner
   ask = prompt.yes?("Are you a new student?")
   if ask
      clear
   else
      puts "Welcome back to Hogwarts!"
      puts "\n"
      puts "What is your name,old friend?"
      @username = gets.chomp
         sleep(0.25)
      clear
      banner
      ask = prompt.yes?("Would you like to see info about your class, or change something?")
      if ask
      slytherin_banner
      main_menu_slytherin
      elsif
         clear
         exit_banner
      end
   end
end

def sorting_hat_welcome
   banner_sorting_hat
   puts "Hogwarts, where you are your own sorting hat."
      sleep(3)
   clear
   banner_sorting_hat
   puts "Answer these questions below to determine which house you'll be placed, Good Luck!"
      sleep(3)
   clear
end

def menu_selection
   puts "\n"
   menu = prompt.select("Things you can't do with a wand:", 
   [ "House Slogan", "Find all Wizards in your House", "Change Pet", "Save Chagnes", "Logout"], symbols: {marker: '>'}, active_color: :cyan)
end

def back_menu_s
   puts "\n"
   back = prompt.select("Back to main menu", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   if back
      main_menu_slytherin
   end
end

def back_menu_r
   puts "\n"
   back = prompt.select("Back to main menu", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   if back
      main_menu_ravenclaw
   end
end

def back_menu_h
   puts "\n"
   back = prompt.select("Back to main menu", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   if back
      main_menu_hufflepuff
   end
end

def back_menu_g
   puts "\n"
   back = prompt.select("Back to main menu", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   if back
      main_menu_gryffindor
   end
end

def main_menu_slytherin
   clear
   slytherin_banner
   puts "\n"
   puts "Welcome to Slytherin!"
   puts "\n"
   menu_selection = prompt.select("What can we do for you, that you can't do with a spell?", 
   [ "House Slogan", "Find all Wizards in your House", "Change Pet", "Save Changes", "Logout"], symbols: {marker: '>'}, active_color: :cyan)
   puts "Welcome to Slytherin, #{@username}!"
   if menu_selection == "House Slogan"
      clear
      slytherin_banner
      slytherin_slogan
      back_menu_s
   elsif 
      menu_selection == "Find all Wizards in your House"
      clear
      slytherin_banner
      Wizard.slytherin
      back_menu_s
   elsif
      menu_selection == "Change Pet"
      clear
      slytherin_banner
      user_pets = Wizard.pets
      puts user_pets
      clear
      slytherin_banner
      user_pet_selection = prompt.select("Lets update?", user_pets)
      clear
      new_pet = Wizard.update_pet(user_pet_selection)
      clear
      slytherin_banner
      puts "Your pet has been updated to #{new_pet}!!!"
      user_pet_selection = new_pet
      sleep(1.5)
      clear
      main_menu_slytherin      
   elsif
      menu_selection == "Save Changes"
      clear
      slytherin_banner
      save_changes
      main_menu_slytherin
   elsif
      menu_selection == "Logout"
      clear
      exit_banner
   end
end

def main_menu_ravenclaw
   clear
   ravenclaw_banner
   puts "\n"
   puts "Welcome to Ravenclaw!"
   if menu_selection == "House Slogan"
      clear
      ravenclaw_banner
      ravenclaw_slogan
      back_menu_r
   elsif 
      menu_selection == "Find all Wizards in your House"
      clear
      ravenclaw_banner
      Wizard.ravenclaw
      back_menu_r
   elsif
      menu_selection == "Change Pet"
      clear
      ravenclaw_banner
      user_pets = Wizard.pets
      puts user_pets
      clear
      user_pet_selection = prompt.select("Lets update?", user_pets)
      clear
      new_pet = Wizard.update_pet(user_pet_selection)
      clear
      ravenclaw_banner
      puts "Your pet has been updated to #{new_pet}!!!"
      user_pet_selection = new_pet
      sleep(1.5)
      clear
      ravenclaw_banner
      back_menu_r
   elsif
      menu_selection == "Save Changes"
      clear
      ravenclaw_banner
      save_changes
   elsif
      menu_selection == "Logout"
      clear
      exit_banner
   end
end

def main_menu_hufflepuff
   clear
   hufflepuff_banner
   puts "\n"
   puts "Welcome to Hufflepuff, #{@username}!"
   if menu_selection == "House Slogan"
      clear
      hufflepuff_banner
      hufflepuff_slogan
      back_menu_h
   elsif 
      menu_selection == "Find all Wizards in your House"
      clear
      hufflepuff_banner
      Wizard.hufflepuff
      back_menu_h
   elsif
      menu_selection == "Change Pet"
      clear
      hufflepuff_banner
      user_pets = Wizard.pets
      puts user_pets
      clear
      user_pet_selection = prompt.select("Lets update?", user_pets)
      clear
      new_pet = Wizard.update_pet(user_pet_selection)
      clear
      hufflepuff_banner
      puts "Your pet has been updated to #{new_pet}!!!"
      user_pet_selection = new_pet
      sleep(1.5)
      clear
      hufflepuff_banner
      back_menu_h
   elsif
      menu_selection == "Save Changes"
      clear
      hufflepuff_banner
      save_changes
   elsif
      menu_selection == "Logout"
      clear
      exit_banner
   end
end

def main_menu_gryffindor
   clear
   gryffindor_banner
   puts "\n"
   puts "Welcome to Gryffindor!"
   if menu_selection == "House Slogan"
      clear
      gryffindor_banner
      gryffindor_slogan
      back_menu_g
   elsif 
      menu_selection == "Find all Wizards in your House"
      clear
      gryffindor_banner
      Wizard.gryffindor
      back_menu_g
   elsif
      menu_selection == "Change Pet"
      clear
      slytherin_banner
      user_pets = Wizard.pets
      puts user_pets
      clear
      user_pet_selection = prompt.select("Lets update?", user_pets)
      clear
      new_pet = Wizard.update_pet(user_pet_selection)
      clear
      slytherin_banner
      puts "Your pet has been updated to #{new_pet}!!!"
      user_pet_selection = new_pet
      sleep(1.5)
      clear
      gryffindorn_banner
      back_menu_g
   elsif
      menu_selection == "Save Changes"
      clear
      gryffindor_banner
      save_changes
   elsif
      menu_selection == "Logout"
      clear
      exit_banner
   end
end

def log_out
   banner
   exit
end

def save_changes
   puts "\n"
   puts "Abra-ca-dabra!"
   puts "Changes have been saved"
   puts "\n"
end