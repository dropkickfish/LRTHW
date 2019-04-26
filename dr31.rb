puts "Your friends ask you to go watch Infinity War: Endgame. What do you want to do?"
puts "1. Sure, I'm down for that! Text them back"
puts "2. Eh, don't know. We might get back to them later? Bleh"
puts "3. Ain't nobody got time for that"

print "> "
choice = $stdin.gets.chomp

if choice == "1"
  puts "You text them back. Dan is bringing weed. Do you"
  puts "1. Partake."
  puts "2. Avoid."

  print "> "
  weed = $stdin.gets.chomp

  if weed == "1"
    puts "What happened? Did we watch it already? How's Spiderman? Where are my nachos?"
    puts "You somehow understand the plot as you are in a similar state to before"
    puts "You wake up with a terrible mongover"
  elsif weed == "2"
    puts "You politely decline. You remember the film but it makes no sense without recollection of the first"
    puts "What the fuck just happened?"
  else
    puts "Bit of both you say? Well I'm sure that never hurt anyone." % weed
  end

elsif choice == "2"
  puts "You stare at reddit for the 17th time this evening. Something makes you look up from the screen"
  puts "Are you hungry? Is it FOMO? Are you ready to change your mind?"
  puts "1. Check the fridge."
  puts "2. Text them back."
  puts "3. Scroll some more."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1"
    puts "You check the fridge, but there's nothing new in there."

  elsif insanity == "2"
    puts "You text them back. It's still not too late to jump in the car"
    puts "Dan is bringing weed. Do you"
    puts "1. Partake."
    puts "2. Avoid."

    print "> "
    weed = $stdin.gets.chomp

    if weed == "1"
      puts "What happened? Did we watch it already? How's Spiderman? Where are my nachos?"
      puts "You somehow understand the plot as you are in a similar state to before"
      puts "You wake up with a terrible mongover"
    elsif weed == "2"
      puts "You politely decline. You remember the film but it makes no sense without recollection of the first"
      puts "What the fuck just happened?"
    else
      puts "Bit of both you say? Well I'm sure that never hurt anyone." % weed
    end

  else
    puts "The insanity rots your eyes into a pool of mulch. Good job!"
  end

else
  puts "You die cold and alone without friends"
end
