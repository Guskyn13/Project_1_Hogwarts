def prompt
   TTY::Prompt.new
end

def font
   TTY::Font.new(:doom) 
end

def clear
   system('clear')
end

# def lolcat
#    system "echo Basic Lolcat | lolcat"
#    system "figlet Lolcat and Figlet | lolcat -a -d 1"
#    system " echo Lolcat can even animate the colors in displays! | lolcat -a -d 500"
#    print lolcat
# end

def new_student
   clear
   banner
   ask = prompt.yes?("Are you a new student?")
   if ask
      clear
   else
      puts "Welcome back to Hogwarts"
      puts "What is your name,old friend?"
      @username = gets.chomp
         sleep(0.25)
      clear
      ask = prompt.yes?("Would you like to see info about your class, or change something?")
      if ask
      main_menu_slytherin
      elsif
         clear
         exit_banner
      
end
end
end



def sorting_hat_welcome
   banner_sorting_hat
   puts "Welcome to Hogwarts, where you are your own sorting hat"
      sleep(3)
   clear
   banner_sorting_hat
   puts "Answer these questions below to determine which house you'll be placed, Good Luck!"
      sleep(3)
   clear
end

def main_menu_slytherin
   clear
   slytherin_banner
   puts "\n"
   puts "Hello #{@username}, lets have a great year!"
   puts "\n"
   menu_selection = prompt.select("What can we do for you, that you can't do with a spell?", 
   [ "House Slogan", "Find all Wizards in your House", "Change Pet", "Save Chagnes", "Logout"], symbols: {marker: '>'}, active_color: :cyan)
   
loop do
   case menu_selection  
   when "House Slogan"
      clear
      slytherin_banner
      puts "\n"
      puts "'Or perhaps in Slytherin you'll make your real friends, those cunning folk use any means to achieve their ends'"
      puts "\n"
      back = prompt.select("Back?", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   if back
      main_menu_slytherin 
   end

#    when  "Find all Wizards in your House"
#       clear
#       slytherin_banner
#       puts "\n"
#       Wizards.slytherin
#       puts "\n"
#       back = prompt.select("Back?", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
#    if back
#       main_menu_slytherin
#    end
# end
#    binding.pry

when "Change Pet"
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
   slytherin_banner
   back = prompt.select("Back?", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   if back
      main_menu_slytherin
   end

   when "Logout"
      clear
      exit_banner
   end
   
end
end


   

# when 
   
# else
   
# end

# "Logout"
#          clear
#          exit_banner
         
#       when "Logout"
#          clear
#          exit_banner
#       end
#    end
# end
   
# loop do case 
# when 
   
# when 
   
# else
   
# end
 
         

      # menu_selection == "House Slogan"
   #    clear
   #    slytherin_banner
   #    puts "\n"
   #    puts "'Or perhaps in Slytherin you'll make your real friends, those cunning folk use any means to achieve their ends'"
   #    puts "\n"
   #    back = prompt.select("Back?", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   #    back
   #    main_menu_slytherin
   # end

   # if 
   #    "Find all Wizards in your House"
   #    clear
   #    slytherin_banner
   #    puts "\n"
   #    Wizard.slytherin
   #    puts "\n"
   #    back = prompt.select("Back?", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   #    back
   #    main_menu_slytherin
   # end



   # if menu_selection == "House Slogan"
   #    clear
   #    slytherin_banner
   #    puts "\n"
   #    puts "'Or perhaps in Slytherin you'll make your real friends, those cunning folk use any means to achieve their ends'"
   #    puts "\n"
   #    back = prompt.select("Back?", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   #    back
   #    main_menu_slytherin
   # elsif menu_selection == "Find all Wizards in your House"
   #    clear
   #    slytherin_banner
   #    puts "\n"
   #    Wizard.slytherin
   #    puts "\n"
   #    back = prompt.select("Back?", ["Yes"], symbols: {marker: '>'}, active_color: :cyan)
   # elsif back
   #    main_menu_slytherin
#     "Logout"
#       clear
#       exit_banner
#    end
# end

def log_out
   banner
   exit
end


         
#    if menu_selection == "Logout"
#       clear
#       exit_banner
#    end
# end

# def loading_bar
# bar = TTY::ProgressBar.new("downloading [:bar]", total: 30)
# 30.times do
#   sleep(0.1)
#   bar.advance(1)
# end
# end




