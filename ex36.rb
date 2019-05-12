# Homework
# Now write a game similar to the one that I created in the last exercise.
# It can be any kind of game you want in the same flavor.
# Spend a week on it making it as interesting as possible.
# For Study Drills, use arrays, functions, and modules as much as possible,
# and find as many new pieces of Ruby as you can to make the game work.
#
# Before you start coding you must draw a map for your game. Create the rooms,
# monsters, and traps that the player must go through on paper before you code.
#
# Once you have your map, try to code it up. If you find problems with the map
# then adjust it and make the code match.

# Player stats
$energy = 9
$music = 0
$frustration = 0
$coffeepot = 10
$coffeecup = 0

# Game variables
$difficulty = 0
$wait = 0
$turns = 24
$responses = 0
$queue_size = 0
$booking_alerts = 0

$explode = 0

# Arrays to generate more random responses
$reply = ["respond to ", "reply to ", "answer "]
$subject = ["another Spanish booking horizon query ", "a query about a delayed train ", "another customer without a clue ", "some nonsense "]
$think =["wonder ", "think about ", "contemplate ", "ponder ", "muse on "]
$thought = ["what you're having for tea.", "how the customer manages to breathe.", "if it's time to log off yet.", "whether there's a special place in hell for Eurostar customer support."]

# Array for booking_alerts
$nationality = ["French", "Spanish", "Italian"]

# High score arrays
$top_alerts = []
$top_emails = []

# Inbox module defines queue_size by creating random integer + number to create difficulty level
module Inbox
    Start = rand(10);
    def Inbox.easy
      Inbox::Start + 3
    end
    def Inbox.medium
      Inbox::Start + 8
    end
    def Inbox.hard
      Inbox::Start + 15
    end
end

# Class allows for random methods to be called by Computer.reddit
class Reddit
def florida1
    system('cls')
puts  %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/floridaman        !!  \
    !!                         !!  !
    !!  Florida man arrested   !!  !
    !!  for practicing karate  !!  !
    !!  by kicking swans in    !!  !
    !!  the head               !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
    ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

  }
  sleep 2
end

def florida2
    system('cls')
puts  %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/floridaman        !!  \
    !!                         !!  !
    !!  Florida man robs bank, !!  !
    !!  strips naked, then     !!  !
    !!  runs down the street   !!  !
    !!  throwing stolen money  !!  !
    !!  everywhere.            !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
    ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

  }
  sleep 2
end

def florida3
    system('cls')
puts  %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/floridaman        !!  \
    !!                         !!  !
    !!  Florida man brings     !!  !
    !!  AK 47 to middle school !!  !
    !!  after receiving phone  !!  !
    !!  call from crying son   !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
    ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

  }
  sleep 2
end

def cat1
  system('cls')
  puts %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/catvideos         !!  \
    !!                         !!  !
    !!   /\_/\                 !!  !
    !!  ( o.o )                !!  !
    !!   > ^ <                 !!  !
    !!                         !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
    ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

  }
  sleep 0.1
system('cls')
puts %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/catvideos         !!  \
    !!                         !!  !
    !!     /\_/\               !!  !
    !!    ( o.o )              !!  !
    !!     > ^ <               !!  !
    !!                         !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
     ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

}
sleep 0.1
system('cls')
puts %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/catvideos         !!  \
    !!                         !!  !
    !!          /\_/\          !!  !
    !!         ( o.o )         !!  !
    !!          > ^ <          !!  !
    !!                         !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
     ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

}
sleep 0.1
system('cls')
puts %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/catvideos         !!  \
    !!                         !!  !
    !!          /\_/\          !!  !
    !!         ( o.o )         !!  !
    !!          > ^ <          !!  !
    !!                         !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
     ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

}
sleep 0.1
system('cls')
puts %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/catvideos         !!  \
    !!                         !!  !
    !!     /\_/\               !!  !
    !!    ( o.o )              !!  !
    !!     > ^ <               !!  !
    !!                         !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
     ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

}
sleep 0.1
system('cls')
puts %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/catvideos         !!  \
    !!                         !!  !
    !!   /\_/\                 !!  !
    !!  ( o.o )                !!  !
    !!   > ^ <                 !!  !
    !!                         !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
     ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

  }
sleep 0.1
system('cls')
puts %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/catvideos         !!  \
    !!                         !!  !
    !!   /\_/\                 !!  !
    !!  ( o.o )                !!  !
    !!   > ^ <                 !!  !
    !!                         !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
     ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

    }
sleep 0.1
system('cls')
puts %q{

     ____________________________
    !\_________________________/!\
    !!                         !! \
    !!    /r/catvideos         !!  \
    !!                         !!  !
    !!   /\_/\                 !!  !
    !!  ( o.o )    MIAOW       !!  !
    !!   > ^ <                 !!  !
    !!                         !!  !
    !!                         !!  /
    !!_________________________!! /
    !/_________________________\!/
       __\_________________/__/!_
      !_______________________!/ )
     ________________________    (__
   /oooo  oooo  oooo  oooo /!   _  )_
   /ooooooooooooooooooooooo/ /  (_)_(_)
   /ooooooooooooooooooooooo/ /    (o o)
   /C=_____________________/_/    ==\o/==

    }
sleep 0.2
end


end

# Computer ASCII image which differs depending on context
module Computer
  def Computer.welcome
    puts %q{
       ____________________________
      !\_________________________/!\
      !!                         !! \
      !!                         !!  \
      !!  Loco2 support          !!  !
      !!                         !!  !
      !!  A text adventure       !!  !
      !!                         !!  !
      !!             by Andy     !!  !
      !!                         !!  /
      !!_________________________!! /
      !/_________________________\!/
         __\_________________/__/!_
        !_______________________!/ )
      ________________________    (__
     /oooo  oooo  oooo  oooo /!   _  )_
     /ooooooooooooooooooooooo/ /  (_)_(_)
     /ooooooooooooooooooooooo/ /    (o o)
     /C=_____________________/_/    ==\o/==

  }
  end
  def Computer.sent
       puts %Q{

        ____________________________
       !\\_________________________/!\\
       !!                         !! \\
       !!      Message sent!      !!  \\
       !!       _________         !!  !
       !!      |\\       /|        !!  !
       !!      | \\     / |        !!  !
       !!      |  `...'  |        !!  !
       !!      |__/___\\__|        !!  !
       !!                         !!  /
       !!_________________________!! /
       !/_________________________\\!/
          __\\_________________/__/!_
         !_______________________!/ )
       ________________________    (__
      /oooo  oooo  oooo  oooo /!   _  )_
      /ooooooooooooooooooooooo/ /  (_)_(_)
      /ooooooooooooooooooooooo/ /    (o o)
      /C=_____________________/_/    ==\\o/==

      }
    end
   def Computer.queue
     num = "%02d" % $queue_size
     puts %Q{
        ____________________________
       !\\_________________________/!\\
       !!                         !! \\
       !!                         !!  \\
       !!      There are #{num}       !!  !
       !!       emails in         !!  !
       !!       your queue        !!  !
       !!                         !!  !
       !!                         !!  !
       !!                         !!  /
       !!_________________________!! /
       !/_________________________\\!/
          __\\_________________/__/!_
         !_______________________!/ )
       ________________________    (__
      /oooo  oooo  oooo  oooo /!   _  )_
      /ooooooooooooooooooooooo/ /  (_)_(_)
      /ooooooooooooooooooooooo/ /    (o o)
      /C=_____________________/_/    ==\\o/==

      }
    end
    def Computer.zero
      puts %Q{
         ____________________________
        !\\_________________________/!\\
        !!                         !! \\
        !!                         !!  \\
        !!      There are 00       !!  !
        !!       emails in         !!  !
        !!       your queue        !!  !
        !!                         !!  !
        !!                         !!  !
        !!                         !!  /
        !!_________________________!! /
        !/_________________________\\!/
           __\\_________________/__/!_
          !_______________________!/ )
        ________________________    (__
       /oooo  oooo  oooo  oooo /!   _  )_
       /ooooooooooooooooooooooo/ /  (_)_(_)
       /ooooooooooooooooooooooo/ /    (o o)
       /C=_____________________/_/    ==\\o/==

       }
     end
     def Computer.end
       puts %Q{
          ____________________________
         !\\_________________________/!\\
         !!                         !! \\
         !!                         !!  \\
         !!                         !!  !
         !!                         !!  !
         !!                         !!  !
         !!    Time to clock off!   !!  !
         !!                         !!  !
         !!                         !!  /
         !!_________________________!! /
         !/_________________________\\!/
            __\\_________________/__/!_
           !_______________________!/ )
         ________________________    (__
        /oooo  oooo  oooo  oooo /!   _  )_
        /ooooooooooooooooooooooo/ /  (_)_(_)
        /ooooooooooooooooooooooo/ /    (o o)
        /C=_____________________/_/    ==\\o/==

        }
      end
      def Computer.scores
         alerts = "%02d" % $top_alerts.sort.first
         emails = "%02d" % $top_emails.sort.first
        puts %Q{
           ____________________________
          !\\_________________________/!\\
          !!                         !! \\
          !! Most emails answered:   !!  \\
          !!                         !!  !
          !!          #{emails}             !!  !
          !!                         !!  !
          !! Most alerts debugged:   !!  !
          !!                         !!  !
          !!          #{alerts}             !!  /
          !!_________________________!! /
          !/_________________________\\!/
             __\\_________________/__/!_
            !_______________________!/ )
          ________________________    (__
         /oooo  oooo  oooo  oooo /!   _  )_
         /ooooooooooooooooooooooo/ /  (_)_(_)
         /ooooooooooooooooooooooo/ /    (o o)
         /C=_____________________/_/    ==\\o/==

         }
       end
     def Computer.alert
       num = "%02d" % $booking_alerts
       puts %Q{

          ____________________________
         !\\_________________________/!\\
         !!                         !! \\
         !!                         !!  \\
         !!     You have debugged   !!  !
         !!                         !!  !
         !!        #{num}  alerts       !!  !
         !!                         !!  !
         !!                         !!  !
         !!                         !!  /
         !!_________________________!! /
         !/_________________________\\!/
            __\\_________________/__/!_
           !_______________________!/ )
         ________________________    (__
        /oooo  oooo  oooo  oooo /!   _  )_
        /ooooooooooooooooooooooo/ /  (_)_(_)
        /ooooooooooooooooooooooo/ /    (o o)
        /C=_____________________/_/    ==\\o/==

        }
      end
      def Computer.reddit
        #creates new class under Reddit, creates array of methods, chooses random method from array
      Reddit.new.send(Reddit.instance_methods(false).sample)
      end
end

# Option methods
module Options
  def Options.answer
    system('cls')
    if $energy > 9
    $queue_size -= 3
    reply = $reply.sample
    subject = $subject.sample
    think = $think.sample
    thought = $thought.sample
    Computer.sent
    puts "\nYou #{reply}#{subject}and #{think}#{thought}"
    $responses += 1
    turn
    sleep 1
    status
  else
    $queue_size -= 2
    reply = $reply.sample
    subject = $subject.sample
    think = $think.sample
    thought = $thought.sample
    Computer.sent
    puts "\nYou #{reply}#{subject}and #{think}#{thought}"
    $responses += 1
    turn
    sleep 1
    status
  end
  end
  def Options.debug
    system('cls')
    nationality = $nationality.sample
    puts "\nYou debug a #{nationality} booking alert"
    $booking_alerts += 1
    Computer.alert
    turn
    status
  end
  def Options.reddit
    Computer.reddit
    turn
    status
  end
  def Options.music
    if $music < 1
      $music += 1
      puts "You turn some music on."
      turn
      status
    elsif $music > 0
      $music += 1
      puts "You turn the music up."
      turn
      status
  end
end
  def Options.coffee
    system('cls')
    coffeelevel
    if $coffeepot > 9
      puts %q{
Coffee time!
After downing the black tar-like substance you feel energy course through your veins.
Sure you 'wasted' 15 minutes but you're unstoppable now! At least until you crash.
      }
    $energy += 10
    $coffeepot = 0
    turn
    $coffeecup = 3
    sleep 1
    status
  elsif $coffeepot < 10
    puts %q{
You need to wait for more to brew.
    }
    turn
    sleep 1
    status
  end
end
end

def check_end
  if $turns == 0
    the_end
  end

  if $explode >3
    explode
  end
end

def coffeelevel
  if $coffeepot > 9
  puts %q{



          /~~~~~~~~/|
         / /######/ / |
        / /______/ /  |
       ============ /||
       |__________|/ ||
        |\__,,__/    ||
        | __,,__     ||
        |_\====/%____||
        | /~~~~\ %  / |
       _|/      \%_/  |
      | |        | | /
      |__\______/__|/
      ~~~~~~~~~~~~~~ }
    else
      puts %q{



              /~~~~~~~~/|
             / /######/ / |
            / /______/ /  |
           ============ /||
           |__________|/ ||
            |\__,,__/    ||
            | __,,__     ||
            |_\====/%____||
            | /    \ %  / |
           _|/      \%_/  |
          | | ~~~~~~ | | /
          |__\______/__|/
          ~~~~~~~~~~~~~~ }

end
end

def coffee_status
  if $coffeecup >0
    print "You have coffee."
  end
  if $coffeecup <1
    print "Your coffee cup is empty.\n"
    if $coffeepot > 9
      print "Coffee is available\n"
    end
    if $coffeepot < 10
      print "Coffee is still brewing\n"
    end
  end
end

def difficulty_selector
  reset
  system('cls')
puts "Please select your difficulty setting:"
puts %q{
  [1] Quiet day in the office
  [2] I got this
  [3] WHY IS EVERYTHING ON FIRE?
  }
puts "> "
difselect = $stdin.gets.chomp

if difselect == "1"
  puts "Are you sure?"
  puts "[Y/N]"
  sure = $stdin.gets.chomp
  if sure =~ /^Y|y/
  $difficulty = 1
  $queue_size =  Inbox.easy
  start_game
elsif sure =~ /^N|n/
  difficulty_selector
else puts "Let's try that again"
  sleep 0.1
  difficulty_selector
end


elsif difselect == "2"
  puts "Are you sure?"
  puts "[Y/N]"
  sure = $stdin.gets.chomp
  if sure =~ /^Y|y/
  $difficulty = 2
  $queue_size =  Inbox.medium
  start_game
  elsif sure =~ /^N|n/
  else puts "Let's try that again"
    sleep 0.1
    difficulty_selector
  end

elsif difselect == "3"
  puts "Are you sure?"
  puts "[Y/N]"
  sure = $stdin.gets.chomp
  if sure =~ /^Y|y/
  $difficulty = 3
  $queue_size =  Inbox.hard
  start_game
  elsif sure =~ /^N|n/
  else puts "Let's try that again"
    sleep 0.1
    difficulty_selector
  end

end
end

def end_menu
  puts "  [1] Play again\n"
  puts "  [2] High Scores\n"
  puts "  [3] Exit\n"
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    difficulty_selector
  elsif choice == "2"
    high_scores
  elsif choice == "3"
    exit()
  else
    puts "Invalid input"
  the_end
end
end

# Explode no longer used, should fit in somewhere
def explode
  puts %q{
          _ ._  _ , _ ._
        (_ ' ( `  )_  .__)
      ( (  (    )   `)  ) _)
     (__ (_   (_ . _) _) ,__)
         `~~`\ ' . /`~~`
              ;   ;
              /   \
_____________/_ __ \_____________}
  puts "\nBOOM"
  puts "\nI told you that you'd explode. "
  exit()
end

def high_scores
  system('cls')
  Computer.scores
  puts "  [1] New game\n"
  puts "  [2] Exit\n"
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    difficulty_selector
  elsif choice == "2"
        exit()
  else
    puts "Invalid input"
  high_scores
end
end

def options
check_end

  print %q{
    [1]}
     if $queue_size > 0
       print " Answer emails"
     else
       print " Debug booking alerts"
     end

  print %q{
    [2] Browse Reddit
    [3] Turn on/change music
    [4]}
    if $coffeepot > 9
      puts " Get coffee"
    else
      puts " Check coffee"
    end
    print "> "

option_choice = $stdin.gets.chomp

if $queue_size > 0 && option_choice == "1"
  Options.answer
elsif $queue_size < 1 && option_choice == "1"
  Options.debug
elsif option_choice == "2"
  Options.reddit
elsif option_choice == "3"
  Options.music
elsif option_choice == "4"
  Options.coffee
else
  puts "Invalid input"
  options
end

end

def start_game
    system('cls')
    puts ""
    Computer.queue
  puts %Q{
It's Friday, finally. You just need to get through today to make it to the weekend.

Answer as many queries as possible, while trying to stay sane.
If you finish your queue you can debug booking alerts as a bonus.

If the queue is piling up, remember to grab a coffee for a speed boost.

There are #{time_conversion($turns*15)} hours til quitting time
}
  # if $difficulty == 1
  #   $queue_size =  Inbox.easy
  #   puts "You have #{$queue_size} emails in your queue."
  # elsif $difficulty == 2
  #   $queue_size =  Inbox.medium
  #   puts "You have #{$queue_size} emails in your queue."
  # elsif $difficulty == 3
  #   $queue_size =  Inbox.hard
  #   puts "You have #{$queue_size} emails in your queue."
  # else exit(DifficultyFuckedUp)
  # end
  puts "What do you do?"
  options
end

def reset
  # Player stats
  $energy = 9
  $music = 0
  $frustration = 0
  $coffeepot = 10
  $coffeecup = 0

  # Game variables
  $difficulty = 0
  $wait = 0
  $turns = 24
  $responses = 0
  $queue_size = 0
  $booking_alerts = 0

  $explode = 0
end

def status
  sleep 1
system('cls')

  puts "\nYou have #{time_conversion($turns*15)} hours left in the day"
  if $queue_size > 0
      Computer.queue
  else
    Computer.zero
    puts "\nNo new emails in your queue, better debug a booking alert.\n"

  end
 coffee_status
  # if $player.include?("music")
  #   print "You've got some tunes going. "
  # end
  # if $player.include?("frustrated")
  #   print "You're sick of this shit. "
  # end
  options
end

def time_conversion(minutes)
    hours = minutes / 60
    rest = minutes % 60
  "#{hours}:#{'%02d'% rest}"
end

def the_end
  system('cls')
  $top_alerts.push($booking_alerts)
  $top_emails.push($responses)
  Computer.end
  if $queue_size < 3
    puts "\nThat's quitting time!"
    puts "Good job. The queue is a reasonable size and you can rest knowing your work is done."
    puts "\nYou managed to respond to #{$responses} cases."
        if $booking_alerts > 0
          puts "\nYou even managed to debug #{$booking_alerts} booking alerts!"
        end
    puts "\nGrab a beer, and enjoy your weekend."
  elsif $queue_size > 10
    puts "\nThank God that's over."
    puts "Is SNCF on strike again or were you too busy on Reddit to notice the queue piling up?"
    puts "You still answered #{$responses} cases."
    if $booking_alerts > 0
      puts "\nYou somehow even managed to debug #{$booking_alerts} though. Good job I guess?"
    end
  else
    puts "\nYou made it to the end of the day. Thank God that's over."
    puts "\nYou responded to #{$responses} cases."
    if $booking_alerts > 0
      puts "\nYou even managed to debug #{$booking_alerts} booking alerts."
    end
    puts "\nIt could have been worse but it's not your best work. Hopefully next week will be better."
  end
end_menu
end

def turn
  $turns -= 1
  $queue_size += 1
  $coffeepot += 1
  $energy -= 1
  $frustration += 1
  if $coffeecup > 0
    $coffeecup -= 1
  end
end

def welcome
  system('cls')
Computer.welcome
sleep 1
puts "  [1] New Game\n"
puts "  [2] High Scores\n"
new = $stdin.gets.chomp
if new == "1"
  difficulty_selector
elsif new == "2"
  high_scores
else
  puts "Invalid input"
  welcome
end
end

welcome
