class Cli

   def welcome
      new_student
      Wizard.create_new
      sorting_hat_welcome
      question_1
   end
end