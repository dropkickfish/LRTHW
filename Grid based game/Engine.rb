require_relative 'grid'
require_relative 'player'
require_relative 'monster'
require_relative 'fight'

$kills = 0
$treasure = 0
$floor = 1

def collisioncheck

  if $playerx  == $monsterx && $playery  == $monstery
      puts "Fight!"
      Fight.options
    end

    if $playerx  == $treasurex && $playery  == $treasurey
      if $texists == 1
      puts "You picked up some treasure"
      $treasure += 1
      $texists = 0
    end
    end

    if $playerx  == $exitx && $playery  == $exity
      puts "You move to the next floor of the dungeon"
      $floor += 1
      nextfloor
    end

    if $monsterx == $treasurex && $monstery == $treasurey
      if $texists == 1
      puts "The monster stole your treasure!"
      $mtreasure += 1
      $texists = 0
    end
    end

    if  $monsterx == $exitx && $monstery == $exity
      puts "The monster blocks the exit!"
      $xexists = 0
    else 
      $xexists = 1
    end
end

def playeroptions
  Player.options
  turn
end

def turn
  if $playerhp < 1
    death
  end
  collisioncheck
  if $xexists == 1 && $monsterhp > 0
  # Monstermove.new.send(Monstermove.instance_methods(false).sample)
  Ai.move
  collisioncheck
elsif $xexists == 0
  puts "A monster is guarding the exit"
else
  #delete monster
end
  playeroptions
end

  def money
  end
  def death
    puts "You died"
    puts "You collected #{$treasure} pieces of treasure"
    puts "You made it to floor #{$floor} of the dungeon"
    puts "You killed #{$kills} monsters"
  end



def nextfloor
  Monster.new
  Grid.next
  playeroptions
end

Player.new
Monster.new
Grid.new
playeroptions
