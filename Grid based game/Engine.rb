require_relative 'grid'
require_relative 'player'
require_relative 'monster'

module Engine
  def self.collisioncheck

    if $playerx  == $monsterx && $playery  == $monstery
      puts "Fight!"
    end
    if $playerx  == $treasurex && $playery  == $treasurey
      puts "You picked up some treasure"
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

  def next
  end
  def fight
  end
  def money
  end
  def death
  end
end
end

Grid.new
Player.moveup
Engine.collisioncheck
Monster.new.send(Monster.instance_methods(false).sample)
Engine.collisioncheck
Player.moveleft
Engine.collisioncheck
Monster.new.send(Monster.instance_methods(false).sample)
Engine.collisioncheck
Player.movedown
Engine.collisioncheck
Monster.new.send(Monster.instance_methods(false).sample)
Engine.collisioncheck
Player.moveright
Engine.collisioncheck
Monster.new.send(Monster.instance_methods(false).sample)
Engine.collisioncheck
