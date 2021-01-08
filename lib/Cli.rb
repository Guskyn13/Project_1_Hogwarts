class Cli

   # def play_music
   #    pid = fork{ exec 'afplay', "Harry_Potter_Theme_Song_Hedwigs_Theme (mp3cut.net) (2).mp3" }
   # end

   def welcome
      new_student
      Wizard.create_new
      sorting_hat_welcome
      question_1
   end

   
      # def play_music
      #    pid = fork{ exec 'afplay', "Harry_Potter_Theme_Song_Hedwigs_Theme (mp3cut.net) (2).mp3" }
      #end
     

   
   

end