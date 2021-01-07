class Cli

   def welcome
      new_student
      Wizard.create_new
      sorting_hat_welcome
      question_1
      # question_2
      question_3
      #       question_4()
#    end
      main_menu_slytherin
#     def changed_pet
#       logging_out()
#     end

#    def question_4
#       prompt.select("If you could bring a pet to Hogwarts, which would you bring?", ["Unicorn", "Nothing, I can't be trusted", "Spider"], active_color: :cyan)
#    end

   end
end