class Monster

  def moveup
  oldx = $monsterx
  oldy = $monstery
    $monstery -= 1
    if $monstery.to_i < 0 || $monstery.to_i > 3
      $monstery += 1

    else
      $grid[$monstery.to_i][$monsterx.to_i] = 'M'
      $grid[oldy.to_i][oldx.to_i] = ' '
      display_grid
end
end

def movedown
oldx = $monsterx
oldy = $monstery
  $monstery += 1
  if $monstery.to_i < 0 || $monstery.to_i > 3
    $monstery -= 1

  else
    $grid[$monstery.to_i][$monsterx.to_i] = 'M'
    $grid[oldy.to_i][oldx.to_i] = ' '
    display_grid
end
end

def moveleft
oldx = $monsterx
oldy = $monstery
  $monsterx -= 1
  if $monsterx.to_i < 0 || $monsterx.to_i > 4
    $monsterx += 1

  else
    $grid[$monstery.to_i][$monsterx.to_i] = 'M'
    $grid[oldy.to_i][oldx.to_i] = ' '
    display_grid
end
end

def moveright
oldx = $monsterx
oldy = $monstery
  $monsterx += 1
  if $monsterx.to_i < 0 || $monsterx.to_i > 4
    $monsterx -= 1

  else
    $grid[$monstery.to_i][$monsterx.to_i] = 'M'
    $grid[oldy.to_i][oldx.to_i] = ' '
    display_grid
end
end
end
