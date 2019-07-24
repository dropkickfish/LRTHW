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

def randplayerstart
  $playery = rand(5)
  $playerx = rand(4)
  $grid[$playerx.to_i][$playery.to_i] = '@'

end

def randmonsterstart
  $monstery = rand(5)
  $monsterx = rand(4)
  if $grid[$monsterx.to_i][$monstery.to_i].include? '@'
    randmonsterstart
  else
    $grid[$monsterx.to_i][$monstery.to_i] = 'M'
end
end

def randtreasurestart
  $treasurey = rand(5)
  $treasurex = rand(4)

  if  $grid[$treasurex.to_i][$treasurey.to_i].include?('@')||$grid[$treasurex.to_i][$treasurey.to_i].include?('M')
    randtreasurestart

  else
  $grid[$treasurex.to_i][$treasurey.to_i] = '£'

  end

end

def randexitstart
  $exity = rand(5)
  $exitx = rand(4)
  if   $grid[$exitx.to_i][$exit.to_i].include?('@')||$grid[$exitx.to_i][$exit.to_i].include?('M')||$grid[$exitx.to_i][$exit.to_i].include?('£')
    randexitstart
  else
  $grid[$exitx.to_i][$exit.to_i] = '>'
end
end

def startpos
  randplayerstart
  randmonsterstart
  randtreasurestart
  randexitstart

end

startpos


display_grid
