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
       $kills+=1
       if $mtreasure > 0
         puts "The monster dropped #{$mtreasure} pieces of treasure"
         dropped = $mtreasure
         $treasure += dropped
         display_grid
       end
     else
       dmg = rand(1..3)
       puts "The monster attacks"
       puts "The monster does #{dmg} dmg points"
       $playerhp=$playerhp-dmg
       puts "You have #{$playerhp} hp"
       display_grid
       Player.options
   end
   elsif choice == "Flee"
     $grid[$monstery.to_i][$monsterx.to_i] = 'M'
   puts "You run in a random direction"
#need to figure out better random system
   $playerx = rand(5)
   $playery = rand(4)
   $grid[$playery.to_i][$playerx.to_i] = '@'
   display_grid
   else
     puts "Invalid choice"
     Fight.options
   end
 end

end
