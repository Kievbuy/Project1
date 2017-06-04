def sec2dhms(secs)
  time = secs.round          # Get rid of microseconds
  sec = time % 60            # Extract seconds
  time /= 60                 # Get rid of seconds
  mins = time % 60           # Extract minutes
  time /= 60                 # Get rid of minutes
  hrs = time % 24            # Extract hours
  time /= 24                 # Get rid of hours
  days = time                # Days (final remainder)
  [days, hrs, mins, sec]     # Return array [d,h,m,s]
end

puts "Please, enter first date (Unix timestamp): "
t1 = gets.chomp!.to_i
puts "Please, enter second date (Unix timestamp): "
t2 = gets.chop!.to_i
x = t1-t2
t = sec2dhms(x)        

if t[0] == 1
  print "#{t[0]} day, "         # when single
else
  print "#{t[0]} days, "        # when multiple
end

if t[1] == 1
  print "#{t[1]} hour, "         # when single
else
  print "#{t[1]} hours, "        # when multiple
end

if t[2] == 1
  print "#{t[2]} minute"         # when single
else
  print "#{t[2]} minutes"        # when multiple
end
  
if t[3] == 1
  print ", and #{t[3]} second."         # when single
elsif t[3] == 0
  print "."                          # when zero
else
  print ", and #{t[3]} seconds."        # when multiple
end