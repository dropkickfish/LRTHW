require_relative 'grid'
require_relative 'player'
require_relative 'monster'
require_relative 'fight'


def collisioncheck

  if $playerx  == $monsterx && $playery  == $monstery
      puts "Fight!"
      Fight.options
    end

    if $playerx  == $treasurex && $playery  == $treasurey
      puts "You picked up some treasure"
    end

    if $playerx  == $exitx && $playery  == $exity
      puts "You move to the next floor of the dungeon"
    end

    if $monsterx == $treasurex && $monstery == $treasurey
      puts "The monster stole your treasure!"
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
  end




Player.new
Monster.new
Grid.new
playeroptions
