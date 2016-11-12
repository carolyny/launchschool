def after_midnight(time_string)

if time_string[0..1]== "24"
  0
else
((time_string[0..1].to_i)*60) + (time_string[3..4].to_i)
end
end

def before_midnight(time_string)

if time_string[0..1] == "24" || time_string[0..1] == "00"
  0
else
(1440 - (((time_string[0..1].to_i)*60) + (time_string[3..4].to_i)))
end
end


puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0