MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24

#quotient (ie result of the division) is rounded down towards minus infinity
#then you find the modulus as follows:
#number/divisor = quotient + modulus/divisor (ie minutes in hour or hours in day)

def time_of_day(midnight_minutes)
 time_array = midnight_minutes.divmod(MINUTES_IN_HOUR)
 puts time_array.to_s
 day_array = time_array[0].divmod(HOURS_IN_DAY)
 puts day_array.to_s
 time_as_a_string = format('%02d:%02d', day_array[1],time_array[1])
end




puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"