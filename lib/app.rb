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

# Im only working on if the wizard said yes!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

   # else
   #    puts "Welcome back to Hogwarts"
   #    puts "Do you still have the same pet?"
   #    changed_pet()
   end
end

def sorting_hat_welcome
   banner_sorting_hat
   puts "Hogwarts, where you are your own sorting hat"
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

def back_menu
   puts "\n"
   back = prompt.select("Back to main menu", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   if back
      main_menu_slytherin
   end
end

def main_menu_slytherin
   clear
   slytherin_banner
   puts "\n"
   puts "Welcome to Slytherin!"
   if menu_selection == "House Slogan"
      clear
      slytherin_banner
      slytherin_slogan
      back_menu
   elsif 
      menu_selection == "Find all Wizards in your House"
      clear
      slytherin_banner
      Wizard.slytherin
      back_menu
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
      back_menu
   elsif 
      menu_selection == "Find all Wizards in your House"
      clear
      ravenclaw_banner
      Wizard.ravenclaw
      back_menu
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
   puts "Welcome to Hufflepuff!"
   if menu_selection == "House Slogan"
      clear
      hufflepuff_banner
      hufflepuff_slogan
      back_menu
   elsif 
      menu_selection == "Find all Wizards in your House"
      clear
      hufflepuff_banner
      Wizard.hufflepuff
      back_menu
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
      back_menu
   elsif 
      menu_selection == "Find all Wizards in your House"
      clear
      gryffindor_banner
      Wizard.gryffindor
      back_menu
   elsif
      menu_selection == "Logout"
      clear
      exit_banner
   end
end
      




