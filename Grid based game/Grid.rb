
$playerx = 0
$playery = 0
$playerpos = [[$playery.to_i][$playerx.to_i]]

$monsterx = 0
$monstery = 0
$monsterpos = [[$monstery.to_i][$monsterx.to_i]]

$treasurex = 0
$treasurey = 0
$treasurepos = [[$treasurey.to_i][$treasurex.to_i]]

$exitx = 0
$exity = 0
$exitpos = [[$exity.to_i][$exitx.to_i]]

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
      | #{$grid[0][0]} | #{$grid[0][1]} | #{$grid[0][2]} | #{$grid[0][3]} | #{$grid[0][4]} |                #{$mtoken} = Monster
      |   |   |   |   |   |                £ = Treasure
      +-------------------+                > = Exit
      |   |   |   |   |   |
      | #{$grid[1][0]} | #{$grid[1][1]} | #{$grid[1][2]} | #{$grid[1][3]} | #{$grid[1][4]} |
      |   |   |   |   |   |                Your HP is #{$playerhp}
      +-------------------+                Your AT is #{$playeratt}
      |   |   |   |   |   |                Your DF is #{$playerdef}
      | #{$grid[2][0]} | #{$grid[2][1]} | #{$grid[2][2]} | #{$grid[2][3]} | #{$grid[2][4]} |
      |   |   |   |   |   |
      +-------------------+                Kills: #{$kills}
      |   |   |   |   |   |                Treasure: #{$treasure}
      | #{$grid[3][0]} | #{$grid[3][1]} | #{$grid[3][2]} | #{$grid[3][3]} | #{$grid[3][4]} |
      |   |   |   |   |   |                Floor: #{$floor}
      +---+---+---+---+---+

Debug info
      Monster goal is #{$mgoaly}, #{$mgoalx}
      Monster AT  #{$monsteratt}
      Monster DF #{$monsterdef}
      Monster HP #{$monsterhp}
      Monster Treasure #{$mtreasure}

)
end

class Start

def self.player
  $playerx = rand(5)
  $playery = rand(4)
  $grid[$playery.to_i][$playerx.to_i] = '@'

end

def self.monster
  $monsterx = rand(5)
  $monstery = rand(4)
  if $grid[$monstery.to_i][$monsterx.to_i].include? '@'
    Start.monster
  else
    $grid[$monstery.to_i][$monsterx.to_i] = "#{$mtoken}"
end
end

def self.treasure
  $treasurex = rand(5)
  $treasurey = rand(4)
  $texists = 1
  if  $grid[$treasurey.to_i][$treasurex.to_i].include?('@'||"#{$mtoken}")
    Start.treasure

  else
  $grid[$treasurey.to_i][$treasurex.to_i] = '£'

  end

end

def self.exit
  $exitx = rand(5)
  $exity = rand(4)
  $xexists = 1
  if   $grid[$exity.to_i][$exitx.to_i].include?('@'||"#{$mtoken}"||'£')
    Start.exit
  else
  $grid[$exity.to_i][$exitx.to_i] = '>'
end
end

def self.all
  Start.player
  Start.exit
  Start.monster
  Start.treasure
end

def self.floor
  Start.exit
  Start.monster
  Start.treasure
end
end

def newfloor
  Clear.floor
  Start.floor
  display_grid
end

class Clear
  def self.all
    Clear.player
    Clear.monster
    Clear.treasure
    Clear.exit
  end
  def self.floor
    Clear.monster
    Clear.treasure
    Clear.exit
  end
  def self.player
    $grid[$playery.to_i][$playerx.to_i] = ' '

  end
  def self.monster
    $grid[$monstery.to_i][$monsterx.to_i] = ' '
  end
  def self.treasure
    $grid[$treasurey.to_i][$treasurex.to_i] = ' '
  end
  def self.exit
    $grid[$exity.to_i][$exitx.to_i] = ' '
  end
end

class Grid

  def initialize
    Start.all
    display_grid
  end
  def self.next
    newfloor
    $xexists
    $grid[$playery.to_i][$playerx.to_i] = '@'
    display_grid
  end
end
