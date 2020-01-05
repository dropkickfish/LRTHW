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
      puts "You killed a #{$mpersonality} monster"
      display_grid
       $grid[$monstery.to_i][$monsterx.to_i] = ' '
       $grid[$playery.to_i][$playerx.to_i] = '@'
       $monsterhp=0
       $monsterx = 'nil'
       $monstery = 'nil'
       $kills+=1
       if $mtreasure > 0
         puts "The monster dropped #{$mtreasure} pieces of treasure"
         dropped = $mtreasure
         $treasure += dropped
         display_grid
       end
       if $xexists == 0
         nextfloor
       end
     else
       mdmg = rand(1..3)
       pdmg = $monsterdef-$playeratt
       puts "You attack doing #{pdmg} dmg"
      $monsterhp=$monsterhp-mdmg
          if $monsterhp < 1
           display_grid
           puts "You killed a #{$mpersonality} monster"
           $grid[$monstery.to_i][$monsterx.to_i] = ' '
           $grid[$playery.to_i][$playerx.to_i] = '@'
           $monsterhp=0
           $monsterx = 'nil'
           $monstery = 'nil'
           $kills+=1

          else
           puts "Monster has #{$monsterhp}"

           puts "The monster does #{mdmg} dmg"
           $playerhp=$playerhp-mdmg
           puts "You have #{$playerhp} hp"
           Fight.options
          end

       Player.options
   end
   elsif choice == "Flee"
     $grid[$monstery.to_i][$monsterx.to_i] = $mtoken
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
