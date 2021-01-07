class Cli

   def prompt
      TTY::Prompt.new
   end
# 🧹
   def loading_bar
      bar = TTY::ProgressBar.new("Sorting [:bar]", total: 30)
      30.times do
      sleep(0.1)
      bar.advance(1)
      end
   end

   def clear
      system('clear')
   end

   def welcome
      clear()
      greeting()
      new_student()
      get_age()
      clear()
      get_dob()
      clear()
      sorting_hat_welcome()
      question_1()
      question_2()
      question_3()
      question_4()

   end

    def greeting
      puts "Welcome to Hogwarts School of Witchcraft and Wizardry!"
    end

    def new_student
      ask = prompt.yes?("Are you a new student?")
      if ask
         get_username()
      else
         puts "Welcome back to Hogwarts"
         puts "Do you still have the same pet?"
         changed_pet()
      end
    end

    def changed_pet
      logging_out()
    end

   def get_username
      puts "What is your wizard and last name?"
      @username = gets.chomp
      clear()
   end

   def get_age
      puts "How old are you?"
      @age = gets.chomp
   end

   def get_dob
      puts "When is your birthday? (12/2/1920)"
      @dob = gets.chomp
   end

   def sorting_hat_welcome
      puts "Welcome to Hogwarts, where you're your own sorting hat"
      puts "Answer these questions below to determine which house you'll be placed"
      puts "Good luck"
   end

   def question_1
      answer = prompt.select("Would you steal candy from a baby?", ["Yes", "No"], marker: '>', active_color: :cyan)
      if answer == "Yes"
         question_3()
      else
         question_2()
      end
   end

   def question_2
      answer = prompt.select("What would you do if you saw a 10' mountain troll?", ["Save Yourself", "Protect Others"], active_color: :cyan)
      if answer == "Save Yourself"
         welcome_to_Hufflepuff()
      else
         welcome_to_Gryfindor()
      end
   end

   def question_3
      answer = prompt.select("What is the closest material of the core of your wand?", ["Dragon's Blood", "Pheonix Feathers"], active_color: :cyan)
      if answer == "Dragon's Blood"
         welcome_to_Slyhterin()
      else
         welcome_to_Ravenclaw()
      end
   end

   def question_4
      prompt.select("If you could bring a pet to Hogwarts, which would you bring?", ["Unicorn", "Nothing, I can't be trusted", "Spider"], active_color: :cyan)
   end

   def welcome_to_Slyhterin
      clear()
      loading_bar()
      clear()
      puts "Welcome to Slytherin!"
      logging_out()
   end

   def welcome_to_Ravenclaw
      clear()
      puts "Welcome to Ravenclaw!"
      logging_out()
   end

   def welcome_to_Hufflepuff
      clear()
      puts "Welcome to Hufflepuff!"
      logging_out()
   end

   def welcome_to_Gryfindor
      clear()
      puts "Welcome to Gryfindor!"
      logging_out()
   end

   def logging_out
      exit
   end

   
   

end