class Monster
  def initialize
    personalities = ["greedy", "aggressive", "cowardly"]
    $mpersonality = personalities.sample
    if $mpersonality == "greedy"
      $mtoken = "G"
      $mgoalx = $treasurex
      $mgoaly = $treasurey
    elsif $mpersonality == "aggressive"
      $mtoken = "A"
      $mgoalx = $playerx
      $mgoaly = $playery
    else
      $mtoken = "C"
      Ai.furthestfromplayer
    end
    $monsteratt = (rand(1..3))
    $monsterdef = (rand(1..3))
    $monsterhp = 5
    $mtreasure = 0

  end
end



class Monstermove



  def self.up
  oldx = $monsterx
  oldy = $monstery
    $monstery -= 1
    if $monstery.to_i < 0 || $monstery.to_i > 3
      $monstery += 1
    #   if $mpersonality == "cowardly"
    #   public_send(leftright.sample)
    # end
    else
      $grid[$monstery.to_i][$monsterx.to_i] = $mtoken
      $grid[oldy.to_i][oldx.to_i] = ' '
      puts "The monster has moved"
      display_grid
end
end

def self.down
oldx = $monsterx
oldy = $monstery
  $monstery += 1
  if $monstery.to_i < 0 || $monstery.to_i > 3
    $monstery -= 1
  #   if $mpersonality == "cowardly"
  #   public_send(leftright.sample)
  # end
  else
    $grid[$monstery.to_i][$monsterx.to_i] = $mtoken
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "The monster has moved"
    display_grid
end
end

def self.left
oldx = $monsterx
oldy = $monstery
  $monsterx -= 1
  if $monsterx.to_i < 0
    $monsterx += 1

  #   if $mpersonality == "cowardly"
  #   public_send(updown.sample)
  # end
  else
    $grid[$monstery.to_i][$monsterx.to_i] = $mtoken
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "The monster has moved"
    display_grid
end
end

def self.right
oldx = $monsterx
oldy = $monstery
  $monsterx += 1
  if $monsterx.to_i < 0 || $monsterx.to_i > 4
    $monsterx -= 1
  #   if $mpersonality == "cowardly"
  #   public_send(updown.sample)
  # end
  else
    $grid[$monstery.to_i][$monsterx.to_i] = $mtoken
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "The monster has moved"
    display_grid
end
end



  # updown = [Monstermove.up, Monstermove.down]
  # leftright = [Monstermove.left, Monstermove.right]

end

class Ai

  def self.greedy
    $mgoaly = $treasurey
    $mgoalx = $treasurex
  if  $texists == 1
    Ai.movetogoal
  else
    Monstermove.new.send(Monstermove.instance_methods(false).sample)
  end
end

  def self.aggressive
    $mgoaly = $playery
    $mgoalx = $playerx
    Ai.movetogoal
end

  def self.cowardly
    Ai.furthestfromplayer
    Ai.movetogoal
  end

  def self.furthestfromplayer
    if $playery < 2
      $mgoaly=3
    else
      $mgoaly=0
    end

    if $playerx < 2
      $mgoalx=4
    elsif $playerx > 2
      $mgoalx=0
    else
      lr = [0,4]
      $mgoalx = lr.sample
    end
  end

  def self.movetogoal
    xdiff = $monsterx-$mgoalx
    ydiff = $monstery-$mgoaly

    if xdiff.abs < ydiff.abs || xdiff == 0
      if xdiff > 0
      Monstermove.left
      else
      Monstermove.right
      end

    elsif ydiff.abs < xdiff.abs || ydiff == 0
      if ydiff > 0
        Monstermove.up
      else
        Monstermove.down
      end

    else
      Monstermove.new.send(Monstermove.instance_methods(false).sample)

    end
end

def self.move
  if $mpersonality == "greedy"
    Ai.greedy
  elsif $mpersonality == "aggressive"
    Ai.aggressive
  else
    Ai.cowardly
  end
end

end
