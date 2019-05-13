$time = 1

def animation
system('cls')
puts %q{

      )))
    (((
  +-----+
  |     |]
  `-----'    }
  sleep 0.1
system('cls')
puts %q{

    (((
     )))
  +-----+
  |     |]
  `-----'    }
  sleep 0.1
end

while $time > 0
  animation
end
