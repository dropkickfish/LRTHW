class Monster
  def initialize
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
