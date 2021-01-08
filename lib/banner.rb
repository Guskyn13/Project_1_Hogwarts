def banner
   box = TTY::Box.frame(width: 120, height: 15, border: :thick, align: :center, padding: 2) do
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

def gryfindor_banner
   box = TTY::Box.frame(width: 120, height: 15, border: :thick, align: :center, padding: 3) do
      font.write("Gryfindor") 
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
   log_out
end