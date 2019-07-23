class Player
  def initialize
    $playeratt = (rand(1..10))
    $playerdef = (rand(1..10))
    $playerhp = 10
  end

  def name(input)
    $playername = input
  end

end
