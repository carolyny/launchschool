def determine_on_lights(array)
  on_lights =[]
  array.each_with_index do |value, index|
    on_lights << index+1 if value == 1
  end
  on_lights
end


def lights(number_of_lights)
  light_array = Array.new(number_of_lights){-1}
  round_number = 1

  loop do
    light_array.each_with_index do |value, index|
        light_array[index] = (value*-1) if (index+1)%round_number == 0
    end
    round_number+=1
    break if round_number > number_of_lights
  end
  puts "#{light_array.count(1)} lights are on."

  on_lights = determine_on_lights(light_array)

  puts "These are positions #{on_lights[0..-2].join(", ")} and #{on_lights[-1]}."
  
end

lights(1000)