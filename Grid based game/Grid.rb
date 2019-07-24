require_relative 'Engine'

$playerx = 0
$playery = 0

$monsterx = 0
$monstery = 0

$treasurex = 0
$treasurey = 0

$exitx = 0
$exity = 0

$grid = [
  [' ',' ',' ',' ',' '],
  [' ',' ',' ',' ',' '],
  [' ',' ',' ',' ',' '],
  [' ',' ',' ',' ',' ']
  # [' ',' ',' ',' ',' '],
]

def display_grid
  puts  %Q(
      +---+---+---+---+---+
      |   |   |   |   |   |                @ = Player
      | #{$grid[0][0]} | #{$grid[0][1]} | #{$grid[0][2]} | #{$grid[0][3]} | #{$grid[0][4]} |                M = Monster
      |   |   |   |   |   |                £ = Treasure
      +-------------------+                > = Exit
      |   |   |   |   |   |
      | #{$grid[1][0]} | #{$grid[1][1]} | #{$grid[1][2]} | #{$grid[1][3]} | #{$grid[1][4]} |
      |   |   |   |   |   |
      +-------------------+
      |   |   |   |   |   |
      | #{$grid[2][0]} | #{$grid[2][1]} | #{$grid[2][2]} | #{$grid[2][3]} | #{$grid[2][4]} |
      |   |   |   |   |   |
      +-------------------+
      |   |   |   |   |   |
      | #{$grid[3][0]} | #{$grid[3][1]} | #{$grid[3][2]} | #{$grid[3][3]} | #{$grid[3][4]} |
      |   |   |   |   |   |
      +---+---+---+---+---+

)
end


def randomstartpos
  begin
  $playerx = rand(5)
  $playery = rand(4)
  $grid[$playerx.to_i][$playery.to_i] = '@'

  $monsterx = rand(5)
  $monstery = rand(4)
  $grid[$monsterx.to_i][$monstery.to_i] = 'M'

  $treasurex = rand(5)
  $treasurey = rand(4)
  $grid[$treasurex.to_i][$treasurey.to_i] = '£'

  $exitx = rand(5)
  $exity = rand(4)
  $grid[$exitx.to_i][$exit.to_i] = '>'

# Figured now was a good time to learn about errors
# Returned the values causing problems and then was able to debug and fix
# Turns out I'm a moron who can't count from 0

rescue
  puts "Some moron gave the wrong co-ordinates"
  puts "Player X = " $playerx
  puts "Player Y = " $playery
  puts "Monster X = " $monsterx
  puts "Monster  Y = " $monstery
  puts "Treasure X = " $treasurex
  puts "Treasure Y = " $treasurey
  puts "Exit X = " $exitx
  puts "Exit Y = " $exity
  exit(0)
end

end

randomstartpos


display_grid
