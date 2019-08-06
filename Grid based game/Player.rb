class Player
  def initialize
    $playeratt = (rand(1..10))
    $playerdef = (rand(1..10))
    $playerhp = 10
    Start.player
  end

  def name(input)
    $playername = input
  end

  def self.options
  puts "Which way will you move?"
  puts ">"
  choice = $stdin.gets.chomp
  if choice == "up"
    Playermove.up
  end
  if choice == "right"
    Playermove.right
  end
  if choice == "down"
    Playermove.down
  end
  if choice == "left"
    Playermove.left
  end
  end

end

class Playermove


  def self.up
    if $mpersonality = "cowardly"
      Ai.furthestfromplayer
    end
  oldx = $playerx
  oldy = $playery
    $playery -= 1
    if $playery.to_i < 0 || $playery.to_i > 3
      puts "You can't move there"
      $playery += 1
      Player.options
    else
      $grid[$playery.to_i][$playerx.to_i] = '@'
      $grid[oldy.to_i][oldx.to_i] = ' '
      puts "You moved North"
      display_grid
end
end

def self.down
  if $mpersonality = "cowardly"
    Ai.furthestfromplayer
  end
oldx = $playerx
oldy = $playery
  $playery += 1
  if $playery.to_i < 0 || $playery.to_i > 3
    puts "You can't move there"
    $playery -= 1
    Player.options
  else
    $grid[$playery.to_i][$playerx.to_i] = '@'
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "You moved South"
    display_grid
end
end

def self.left
  if $mpersonality = "cowardly"
    Ai.furthestfromplayer
  end
oldx = $playerx
oldy = $playery
  $playerx -= 1
  if $playerx.to_i < 0 || $playerx.to_i > 4
    puts "You can't move there"
    $playerx += 1
    Player.options
  else
    $grid[$playery.to_i][$playerx.to_i] = '@'
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "You moved West"
    display_grid
end
end

def self.right
  if $mpersonality = "cowardly"
    Ai.furthestfromplayer
  end
oldx = $playerx
oldy = $playery
  $playerx += 1
  if $playerx.to_i < 0 || $playerx.to_i > 4
    puts "You can't move there"
    $playerx -= 1
    Player.options
  else
    $grid[$playery.to_i][$playerx.to_i] = '@'
    $grid[oldy.to_i][oldx.to_i] = ' '
    puts "You moved East"
    display_grid
end
end
end
