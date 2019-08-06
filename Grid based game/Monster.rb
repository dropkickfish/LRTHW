class Monster
  def initialize
    personalities = ["greedy", "aggressive", "cowardly"]
    $mpersonality = personalities.sample
    if $mpersonality == "greedy"
      $mtoken = "G"
    elsif $mpersonality == "aggressive"
      $mtoken = "A"
    else
      $mtoken = "C"
    end
    $monsteratt = (rand(1..3))
    $monsterdef = (rand(1..3))
    $monsterhp = 5
    $mtreasure = 0
    $mgoalx = 0
    $mgoaly = 0
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
    xdiff = $monsterx-$treasurex
    ydiff = $monstery-$treasurey
    if xdiff == 0
      if ydiff > 0
        Monstermove.up
      else
        Monstermove.down
      end
    elsif xdiff >0
      Monstermove.left
    else
      Monstermove.right
  end
end

  def self.aggressive
    xdiff = $monsterx-$treasurex
    ydiff = $monstery-$treasurey
    if xdiff == 0
      if ydiff > 0
        Monstermove.up
      else
        Monstermove.down
      end
    elsif xdiff >0
      Monstermove.left
    else
      Monstermove.right
  end
end

  def self.cowardly
    xdiff = $monsterx-$treasurex
    ydiff = $monstery-$treasurey
    if xdiff == 0
      if ydiff > 0
        Monstermove.down
      else
        Monstermove.up
      end
    elsif xdiff >0
      Monstermove.right
    else
      Monstermove.left
  end
end

def self.movetogoal
  xdiff = $monsterx-$mgoalx
  ydiff = $monstery-$mgoaly

  if xdiff.abs < ydiff.abs
    if xdiff >0
      Monstermove.left
    else
      Monstermove.right
    end

  elsif ydiff.abs < xdiff.abs
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
