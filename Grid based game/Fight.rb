module Fight

 def self.options
   # system 'cls'
   puts %Q(

           \\ /
      |_O   X  O_\\
        |`-/ \\-'\\
        |\\     / |
       /  |    |  \\

You encounter a monster, do you:

  - FIGHT

    or

  - FLEE ?
   )
   choice = $stdin.gets.chomp
   if choice == "Fight"
     if $playeratt > $monsterdef
       puts "You killed the monster"
       $grid[$monstery.to_i][$monsterx.to_i] = ' '
       $grid[$playery.to_i][$playerx.to_i] = '@'
       $monsterhp=0
     else
       dmg = rand(1..3)
       puts "The monster attacks"
       puts "The monster does #{dmg} dmg points"
       $playerhp=$playerhp-dmg
       puts "You have #{$playerhp} hp"
       self.options
   end
   elsif choice == "Flee"
     Playermove.(Playermove.instance_methods(false).sample)
   puts "You run in a random direction"
   else
     puts "Invalid choice"
     Fight.options
   end
 end

end
