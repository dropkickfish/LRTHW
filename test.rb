#################
##    Help     ##
#################

def help
  puts "\n These are the available commands"
  puts "Break"
  puts "Examine"
  puts "Use"
  puts "Attack"
  puts "Taunt"
  puts "Open"
end

#################
##    ROOMS    ##
#################

# Room 1
#################

def room_1
  puts "\nYou are back in the strange room"
  puts "There is a WINDOW, and a heavy DOOR."
  puts "You can see a chest of DRAWERS and a TV"

  if Key.class_variable_get(:@@have) == true

    puts "\nYou have a KEY."
    room_1_choice
  end

  if Door.class_variable_get(:@@locked) == false
    puts "\nThe DOOR is open."
    room_1_choice
  end

  if Window.class_variable_get(:@@broken) ==true
    puts "\nThe WINDOW is broken."
    room_1_choice
  end

    room_1_choice
end

# Room 1 choices
#################

def room_1_choice
  print "\n> "
  choice = $stdin.gets.chomp


  if choice =~ /(?=.*\bhelp\b)/
    help
    room_1_choice
  elsif choice =~ /(?=.*\bcommands\b)/
    help
    room_1_choice

  elsif choice =~ /(?=.*\bwindow\b)(?=.*\bbreak\b)/
    break_window
  elsif choice =~ /(?=.*\bwindow\b)(?=.*\battack\b)/
    break_window
  elsif choice =~ /(?=.*\bwindow\b)(?=.*\buse\b)/
    open_window
  elsif choice =~ /(?=.*\bwindow\b)(?=.*\bopen\b)/
    open_window
  elsif choice =~ /(?=.*\bwindow\b)(?=.*\bexamine\b)/
    examine_window
  elsif choice =~ /(?=.*\bwindow\b)(?=.*\btaunt\b)/
    taunt_window

  elsif choice =~ /(?=.*\bdoor\b)(?=.*\bopen\b)/
    open_door
  elsif choice =~ /(?=.*\bdoor\b)(?=.*\bbreak\b)/
    break_door
  elsif choice =~ /(?=.*\bdoor\b)(?=.*\battack\b)/
    break_door
  elsif choice =~ /(?=.*\bdoor\b)(?=.*\buse\b)/
    open_door
  elsif choice =~ /(?=.*\bdoor\b)(?=.*\bexamine\b)/
    examine_door
  elsif choice =~ /(?=.*\bdoor\b)(?=.*\btaunt\b)/
    taunt_door



  elsif choice =~ /(?=.*\buse\b)(?=.*\bkey\b)/
    use_key
  elsif choice =~ /(?=.*\bbreak\b)(?=.*\bkey\b)/
    break_key
  elsif choice =~ /(?=.*\battack\b)(?=.*\bkey\b)/
    attack_key
  elsif choice =~ /(?=.*\bopen\b)(?=.*\bkey\b)/
    break_key
  elsif choice =~ /(?=.*\bexamine\b)(?=.*\bkey\b)/
    examine_key
  elsif choice =~ /(?=.*\btaunt\b)(?=.*\bkey\b)/
    taunt_key

  elsif choice =~ /(?=.*\buse\b)(?=.*\bdrawers\b)/
    examine_drawers
  elsif choice =~ /(?=.*\bbreak\b)(?=.*\bdrawers\b)/
    break_drawers
  elsif choice =~ /(?=.*\battack\b)(?=.*\bdrawers\b)/
    break_drawers
  elsif choice =~ /(?=.*\bopen\b)(?=.*\bdrawers\b)/
    examine_drawers
  elsif choice =~ /(?=.*\bexamine\b)(?=.*\bdrawers\b)/
    examine_drawers
  elsif choice =~ /(?=.*\btaunt\b)(?=.*\bdrawers\b)/
    taunt_drawers

  elsif choice =~ /(?=.*\buse\b)(?=.*\btv\b)/
    examine_tv
  elsif choice =~ /(?=.*\bbreak\b)(?=.*\btv\b)/
    break_tv
  elsif choice =~ /(?=.*\battack\b)(?=.*\btv\b)/
    break_tv
  elsif choice =~ /(?=.*\bopen\b)(?=.*\btv\b)/
    open_tv
  elsif choice =~ /(?=.*\bexamine\b)(?=.*\btv\b)/
    examine_tv
  elsif choice =~ /(?=.*\btaunt\b)(?=.*\btv\b)/
    taunt_tv



  else
    puts "I'm sorry I don't understand. Say again?"
    room_1_choice
  end

end

# Room one start
#################

def start
  puts "You awaken in a strange room"
  puts "There is a solitary WINDOW, and a heavy DOOR."
  puts "You can see a chest of DRAWERS and a TV"
  puts "What do you do?"
  room_1_choice
end



# Room 2
#################
def room_2
  puts "\nYou enter the new room and HOLY SHIT THERE'S A BEAR!"
  puts "\nIT'S FUCKING HUGE."
  sleep 0.5
  puts "\nOH JESUS IT SAW YOU."
  puts "\nAAAARRRGRGHHHGAHKGDOIYGHFKGAYEGOYVOHGODMYFACEGKJHGDWHYMEEEEE"
  sleep 2
  puts "\nGAME OVER"
  exit(0)
end

####################
## Objects Room 1 ##
###################

# Window
#################

class Window
      @@broken = false
end

# Window Actions
#################

def examine_window
  if Window.class_variable_get(:@@broken) == false
    puts "\nThe window is too dirty to see out of."

  room_1

  else
    puts "\nThe window is broken."
    puts "It looks like a long way down..."
  room_1
  end
end

#################

def break_window

  if Window.class_variable_get(:@@broken) == false
    puts "\nYou break the window."
    puts "It looks like a long way down..."
    Window.class_variable_set(:@@broken, true)
    room_1

  else
    puts "\nThe window is already broken you dingus"
    room_1

  end

end

#################

def open_window
  if Window.class_variable_get(:@@broken) == false
    puts "\nThe window is too stiff to open"
    room_1
  else
    puts "\nYou already broke this. I guess that counts as open"
    room_1
  end
end

#################

def taunt_window
  puts "\nYou mock the window for its lack of cleanliness."
  puts "As you do, you realise that you are the only person that has been in this room for some time."
  puts "Maybe you should have been cleaning the window?"
  puts "Whatever."
  room_1
end

# Door
#################

class Door
 @@open = false
 @@locked = true
end

#Door Actions
#################

def taunt_door
  puts "\nWhat an ugly, stupid door."
  room_1
end

#################

def examine_door
  puts "\nA sturdy door, you probably won't be able to break it."
  puts "It looks like it can be unlocked with a KEY"
  room_1
end

#################

def break_door
  puts "\nYou ram your shoulder against the door."
  puts "Ow. That hurt. You can't break this door."
  room_1
end

#################

def open_door
  if Door.class_variable_get(:@@locked) == true
    puts "\nThis door is locked"
    room_1
  else Door.class_variable_get(:@@locked) == false
    puts "\nYou open the door."
    puts "Leave this room?"
    print "\n> Y/N?"
    choice = $stdin.gets.chomp
    if choice =~ /^Y|y/
      puts "\nYou exit the room"

       sleep 1
      room_2

    else
      puts "\nYou stay in the room."
    room_1
  end
end
end

#Drawers
#################

class Drawers
  @@keyinside = true
  @@searched = false
  @@broken = false
end

# Drawers actions
#################

def taunt_drawers
 puts "\nStupid drawers, always storing things and whatnot."
 puts "I bet there's never anything useful inside."
 room_1
end

#################

def break_drawers

  if Drawers.class_variable_get(:@@broken) == true
    puts "\nYou already broke these you psycho!"
    room_1

  elsif Drawers.class_variable_get(:@@searched) == true
    puts "\nYou smash the drawers into a million pieces."
    puts "It's a good job you already searched here."
    Drawers.class_variable_set(:@@broken, true)
    room_1

  elsif  Drawers.class_variable_get(:@@keyinside) == true
    puts "\nYou smash the drawers into a million pieces."
    puts "In the remnants you find a key."
    puts "KEY is added to your INVENTORY"
    Drawers.class_variable_set(:@@broken, true)
    Key.class_variable_set(:@@have, true)
    room_1
  else

puts "\nSmashy smash smash"
Drawers.class_variable_set(:@@broken, true)
room_1

end
end
#################

def examine_drawers
  if Drawers.class_variable_get(:@@searched) == true
    puts "\nYou have already searched these drawers"
    room_1
  elsif  Drawers.class_variable_get(:@@keyinside) == true
    puts "\nYou find a key inside the drawer."
    puts "This might come in useful - they always do in video games."
    puts "KEY is added to your INVENTORY."
    Drawers.class_variable_set(:@@keyinside, false)
    Drawers.class_variable_set(:@@searched, true)
    Key.class_variable_set(:@@have, true)
    room_1
  else
    puts "\nJust a regular set of drawers."
  end
end

#Key
#################

class Key
  @@have = false
end

# Key Actions
#################

def taunt_key
  puts "\nStupid piece of shit, I bet it couldn't even unlock that door over there."
  room_1
end

#################

def examine_key
  puts "\nA brass key that looks like it would perfectly fit that door over there."
  room_1
end

#################

def break_key
  puts "\nYou idiot. You can't do that. Why would you do that?"
  room_1
end

#################

def attack_key
  puts "\nYou throw the key with force."
  Key.class_variable_set(:@@have, false)

    if Window.class_variable_get(:@@broken) == true
      puts "The key flies out of the broken window."
      puts "Well done. No more key."

        if Door.class_variable_get(:@@locked) == false
        puts "\nAt least you already unlocked the door."
        room_1

        else
          puts "\nYou're royally stuffed now. Do you:"
          puts "1) Jump out of the window to try and retrieve the key"
          puts "2) Stay in the room"
          puts "\n> "

          choice = $stdin.gets.chomp

              if choice =~ /(?=.*\bjump\b)/
              jump
              exit(0)

              elsif choice =~ /(?=.*\bstay\b)/
                  puts "\n You stay in the room."

                    if Tv.class_variable_get(:@@broken) == true
                        puts "\nWithout any form of entertainment you slowly go insane."
                        puts "As your mind turns to mush, the possibility of jumping no longer seems, well, possible"
                        puts "You starve to death covered in your own faeces"
                        puts "\n GAME OVER"
                        exit(0)
                      else
                        puts "\nThankfully you can still while away your time trapped here watching TV."
                        sleep 0.5
                        puts "\nOh shit."
                        sleep 0.5
                        puts "\nThis TV only shows Love Island on repeat"
                        puts "\nYou jump out of the window, believing your inevitable meeting with the pavement a better fate."
                        puts "\nGAME OVER"
                        exit(0)
                    end
              else
                  puts "\n Well?"
                  puts "JUMP or STAY?"
                  puts "\n> "
              end
          end
        else
        puts "It ricochets off the floor and hits the window, breaking it."
          Window.class_variable_set(:@@broken, true)
        end

          if Drawers.class_variable_get(:@@broken) == true
            puts "Finally it lands in the debris that was the drawers."
            puts "You pick it up again"
            Key.class_variable_set(:@@have, true)
            room_1
          end

        puts "It comes to a rest inside the drawer you just fished it out of."
        Drawers.class_variable_set(:@@keyinside, true)
        Drawers.class_variable_set(:@@searched, false)
        Window.class_variable_set(:@@broken, true)
        room_1
      end

##################

def use_key
  if Key.class_variable_get(:@@have) == true && Door.class_variable_get(:@@locked) == true
    Door.class_variable_set(:@@locked, false)
    Key.class_variable_set(:@@have, false)
    puts "\nYou use the key and unlock the door"
    open_door
    room_1
  elsif Key.class_variable_get(:@@have) == false && Door.class_variable_get(:@@locked) == false
    puts "\nYou've already unlocked this door"
    room_1
  elsif Key.class_variable_get(:@@have) == false && Door.class_variable_get(:@@locked) == true
    puts "\nWhat key? You don't have a key."
    room_1
  end
end

#################

def jump
  puts "\nYou jump out of the window to follow the key."
  puts "You're finally free of that dismal room!"
  sleep 0.2
  puts "..."
  puts "..."
  puts "..."
  sleep 0.2
  puts "You meet the ground. It is not your friend."
  puts "You now resemble a type of human jam spread on the pavement."
  puts "\nGAME OVER"
end

#################

#TV
#################

class Tv
  @@broken = false
end

# TV Actions
#################77
def taunt_tv
  puts "\nA garbage story box for garbage people."
  puts "You're currently watching the TV."
  puts "Does this make you a garbage person?"
  room_1
end

#################

def examine_tv
  puts "\nIt's stuck on Love Island."
  puts "What did I do to deserve this?"
  room_1
end

#################

def break_tv
  puts "\nYou smash the TV into a million pieces"
  Tv.class_variable_set(:@@broken, true)
  room_1
end

#################

def open_tv
  puts "\nYou idiot. You can't do that. Why would you do that?"
  room_1
end

#################

start
