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
  $playerx = rand(6)
  $playery = rand(5)
  $grid[$playerx.to_i][$playery.to_i] = '@'

  $monsterx = rand(6)
  $monstery = rand(5)
  $grid[$monsterx.to_i][$monstery.to_i] = 'M'

  $treasurex = rand(6)
  $treasurey = rand(5)
  $grid[$treasurex.to_i][$treasurey.to_i] = '£'

  $exitx = rand(6)
  $exity = rand(5)
  $grid[$exitx.to_i][$exit.to_i] = '>'

end

randomstartpos

#   # [0,0,0,0,0],
# playerpos = [
  # [' ',' ',' ',' ',' '],
  # [' ',' ',' ',' ',' '],
  # [' ',' ',' ',' ',' '],
  # [' ',' ',' ',' ',' '],
  # [' ',' ',' ',' ',' '],
# ]
#
# enemypos = [
#   [' ',' ',' ',' ',' '],
#   ['M',' ',' ',' ',' '],
#   [' ',' ',' ',' ',' '],
#   [' ',' ',' ',' ',' '],
#   [' ',' ',' ',' ',' '],
# ]
#
# moneypos = [
#   [' ',' ',' ',' ',' '],
#   [' ',' ',' ',' ',' '],
#   ['£',' ',' ',' ',' '],
#   [' ',' ',' ',' ',' '],
#   [' ',' ',' ',' ',' '],
# ]
#
# exitpos = [
#   [' ',' ',' ',' ','>'],
#   [' ',' ',' ',' ',' '],
#   [' ',' ',' ',' ',' '],
#   [' ',' ',' ',' ',' '],
#   [' ',' ',' ',' ',' '],
# ]
#
#
# if playerpos == exitpos
#   Engine.next
# end
#
# if playerpos == enemypos
#   Engine.fight
# end
#
# if playerpos == moneypos
#   Engine.money
# end

display_grid
