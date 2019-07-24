class Player
  def initialize
    $playeratt = (rand(1..10))
    $playerdef = (rand(1..10))
    $playerhp = 10

  end

  def name(input)
    $playername = input
  end

  def self.moveup
  oldx = $playerx
  oldy = $playery
    $playery -= 1
    if $playery.to_i < 0 || $playery.to_i > 4
      puts "You can't move there"
      $playery += 1

    else
      $grid[$playery.to_i][$playerx.to_i] = '@'
      $grid[oldy.to_i][oldx.to_i] = ' '
      puts "You moved North"
      display_grid
end
end

def self.movedown
oldx = $playerx
oldy = $playery
  $playery += 1
  if $playery.to_i < 0 || $playery.to_i > 4
    puts "You can't move there"
    $playery -= 1

  else
    $grid[$playery.to_i][$playerx.to_i] = '@'
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "You moved South"
    display_grid
end
end

def self.moveleft
oldx = $playerx
oldy = $playery
  $playerx -= 1
  if $playery.to_i < 0 || $playery.to_i > 4
    puts "You can't move there"
    $playerx += 1

  else
    $grid[$playery.to_i][$playerx.to_i] = '@'
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "You moved West"
    display_grid
end
end

def self.moveright
oldx = $playerx
oldy = $playery
  $playerx += 1
  if $playery.to_i < 0 || $playery.to_i > 4
    puts "You can't move there"
    $playerx -= 1

  else
    $grid[$playery.to_i][$playerx.to_i] = '@'
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "You moved East"
    display_grid
end
end
end
