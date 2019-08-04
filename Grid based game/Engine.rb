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
      puts "You picked up some treasure"
      $treasure += 1
    end

    if $playerx  == $exitx && $playery  == $exity
      puts "You move to the next floor of the dungeon"
      $floor += 1
      nextfloor
    end

    if $monsterx == $treasurex && $monstery == $treasurey
      puts "The monster stole your treasure!"
      $mtreasure += 1
    end

    if  $monsterx == $exitx && $monstery == $exity
      puts "The monster blocks the exit!"
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
  if $monsterhp > 0
  Monstermove.new.send(Monstermove.instance_methods(false).sample)
  collisioncheck
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
