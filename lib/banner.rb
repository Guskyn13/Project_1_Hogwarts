def banner
   box = TTY::Box.frame(width: 120, height: 15, border: :thick, align: :center, padding: 2) do

      font.write("Hogwarts!")

      font.write("Hogwarts!")#.lolcat

   end
   print box
   puts "\n"
end

def banner_sorting_hat
   box = TTY::Box.frame(width: 120, height: 15, border: :thick, align: :center, padding: 3) do
      font.write("Sorting Hat") 
   end
   print box
   puts "\n"
end

def slytherin_banner
   box = TTY::Box.frame(width: 120, height: 15, border: :thick, align: :center, padding: 3) do
      font.write("Slytherin") 
   end
   print box
   puts "\n"
end

def ravenclaw_banner
   box = TTY::Box.frame(width: 120, height: 15, border: :thick, align: :center, padding: 3) do
      font.write("Ravenclaw") 
   end
   print box
   puts "\n"
end

def hufflepuff_banner
   box = TTY::Box.frame(width: 120, height: 15, border: :thick, align: :center, padding: 3) do
      font.write("Hufflepuff") 
   end
   print box
   puts "\n"
end

def gryffindor_banner
   box = TTY::Box.frame(width: 120, height: 15, border: :thick, align: :center, padding: 3) do
      font.write("Gryffindor") 
   end
   print box
   "\n"
end

def exit_banner
   box = TTY::Box.frame(width: 120, height: 15, border: :thick, align: :center, padding: 3) do
      font.write("Evanesco") 
   end
   print box
   sleep(5)
   clear
   print banner
   exit
end

def slytherin_slogan
   puts "\n"
   puts "'Or perhaps in Slytherin you'll make your real friends, those cunning folk use any means to achieve their ends'"
   puts "\n"
end

def hufflepuff_slogan
   puts "\n"
   puts "You might belong in Hufflepuff, where they are just and loyal, those patient Hufflepuffs are tru and unafraid of toil'"
   puts "\n"
end

def ravenclaw_slogan
   puts "\n"
   puts "'Or yet wise old Ravenclaw, if you've a ready mind, where those of wit and learning, will always find their kind'"
   puts "\n"
end

def gryffindor_slogan
   puts "\n"
   puts "'You might belong in Gryffindor, where dwell the brave at heart, their daring, nerve and chivalry set Gryffindors appart'"
   puts "\n"
end