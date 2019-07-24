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
  $playerx = rand(5)
  $playery = rand(4)
  $grid[$playery.to_i][$playerx.to_i] = '@'

end

def randmonsterstart
  $monsterx = rand(5)
  $monstery = rand(4)
  if $grid[$monstery.to_i][$monsterx.to_i].include? '@'
    randmonsterstart
  else
    $grid[$monstery.to_i][$monsterx.to_i] = 'M'
end
end

def randtreasurestart
  $treasurex = rand(5)
  $treasurey = rand(4)

  if  $grid[$treasurey.to_i][$treasurex.to_i].include?('@'||'M')
    randtreasurestart

  else
  $grid[$treasurey.to_i][$treasurex.to_i] = '£'

  end

end

def randexitstart
  $exitx = rand(5)
  $exity = rand(4)
  if   $grid[$exity.to_i][$exitx.to_i].include?('@'||'M'||'£')
    randexitstart
  else
  $grid[$exity.to_i][$exitx.to_i] = '>'
end
end

def startpos

  randplayerstart
  randmonsterstart
  randtreasurestart
  randexitstart

end

class Grid

  def initialize
    startpos
    display_grid
  end
end
