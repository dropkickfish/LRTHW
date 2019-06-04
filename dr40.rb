class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end

end


##Study Drills
#1) Write some more songs using this and make sure you understand that you're passing an array of strings as the lyrics.
cokie_the_clown = Song.new([
"All the way from Palm Springs, just out of detox",
"Show him a warm welcome, let's get some applause",
"\n",
"Greetings all, hello",
"Welcome to my show",
"I'm sure you'll have fun",
"Watching me juggle",
"8 balls at one time",
"I'm no fucking mime",
"I play practical jokes",
"This squirting flower",
"That wasn't flour",
"That blew up your nose",
"It's my special blend",
"Of Ex, Coke and K",
"You should be okay",
"In several hours",
"\n",
"He's got oversized shoes, and ill fitting clothes",
"That is real blood dripping from his fake red nose",
"\n",
"I'm Cokie the Clown",
"I will trip you down",
"Those 12 giant steps",
"I brought you all presents",
"Against good judgment",
"But being a good host",
"You all have been dosed",
"The kettle corn’s been laced",
"The fudge has been lined",
"You're having a great time",
"But you might not recall",
"From rohypnol",
"In the lemonade",
"Cokie homemade",
"\n",
"He's the happiest clown with the biggest frown",
"He's Cokie the Clown"])

cokie_the_clown.sing_me_a_song
#Easy
#I lied. I skipped the part about inputting lines as an array and used a giant string. This made part 3 hard until I figured it out.
#Note to self - RTFM

#2)Put the lyrics in a separate variable, then pass that variable to the class to use instead.

bob_lyrics = [
"The doctor said, 'What'cha been thinking about?'",
"Bob said, 'That's the point",
"I wanna think about nothing",
"Now I gotta do something else'",
"\n",
"Oi, oi, oi!",
"\n",
"'- to pass the time'",
"Had someone shave his head",
"He got a new identity",
"Sixty-two holed air-cushioned boots",
"And a girl who rides a scooter",
"To take him out",
"Of town",
"They would get away, riding around",
"As the trucks drive by",
"You can hear the motherfuckers go -",
"\n",
"[Trumpet solo]",
"\n",
"A couple of lines, an extra thermos of joe",
"He'll be kicking in heads at the punk rock show",
"Bob's the kind of guy who knows just what",
"Bob's the kind of guy who knows just what to do",
"When the doctor tells him to:",
"'Quit your drinking, now's the time'",
"But will he ever walk the line?",
"To all my friends, 'I feel just great'",
"Will he ever walk the line?",
"Kicking ass and busting heads",
"Red suspenders",
"Once a day he shaves his head",
"But will he ever walk the line?"]

bob = Song.new(bob_lyrics)
bob.sing_me_a_song

#Totally didn't over-think what this was asking - read your fucking error messages

#3)See if you can hack on this and make it do more things. Don't worry if you have no idea how, just give it a try, see what happens. Break it, trash it, thrash it, you can't hurt it.

#I'm so unimaginative... Something else.... Does just fucking with classes count?
#Let's try making these karaoke style, one line at a time, but we'll add the function to the class here

 module Karaoke

   def karaoke()
      @lyrics.each {|line|
        system('cls')
        puts line
        sleep (1.5)
        system('cls')}
  end
 end

 class Song
   include Karaoke
 end

bob.karaoke
# Okay, couldn't figure out a way to add just the function but including the module works, right?

#4)Search online for "object-oriented programming" and try to overflow your brain with what you read.
#Don't worry if it makes absolutely no sense to you. Half of that stuff makes no sense to me too.

#The fuck does he think I've been doing all this time?
