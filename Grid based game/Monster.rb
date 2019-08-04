class Monster
  def initialize
    personalities = [greedy, aggressive, coward]
    $mpersonality = personalities.sample
    $monsteratt = (rand(1..3))
    $monsterdef = (rand(1..3))
    $monsterhp = 10
    $mtreasure = 0
  end
end



class Monstermove
  def up
  oldx = $monsterx
  oldy = $monstery
    $monstery -= 1
    if $monstery.to_i < 0 || $monstery.to_i > 3
      $monstery += 1

    else
      $grid[$monstery.to_i][$monsterx.to_i] = 'M'
      $grid[oldy.to_i][oldx.to_i] = ' '
      puts "The monster has moved"
      display_grid
end
end

def down
oldx = $monsterx
oldy = $monstery
  $monstery += 1
  if $monstery.to_i < 0 || $monstery.to_i > 3
    $monstery -= 1

  else
    $grid[$monstery.to_i][$monsterx.to_i] = 'M'
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "The monster has moved"
    display_grid
end
end

def left
oldx = $monsterx
oldy = $monstery
  $monsterx -= 1
  if $monsterx.to_i < 0 || $monsterx.to_i > 4
    $monsterx += 1

  else
    $grid[$monstery.to_i][$monsterx.to_i] = 'M'
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "The monster has moved"
    display_grid
end
end

def right
oldx = $monsterx
oldy = $monstery
  $monsterx += 1
  if $monsterx.to_i < 0 || $monsterx.to_i > 4
    $monsterx -= 1

  else
    $grid[$monstery.to_i][$monsterx.to_i] = 'M'
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "The monster has moved"
    display_grid
end
end
end

class Ai
  def self.greedy
    xdiff = Diff($monsterx, $treasurex)
    ydiff = Diff($monstery, $treasurey)
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
  def self.aggressive
    xdiff = Diff($monsterx, $playerx)
    ydiff = Diff($monstery, $playery)
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
  def self.coward
    xdiff = Diff($monsterx, $playerx)
    ydiff = Diff($monstery, $playery)
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
