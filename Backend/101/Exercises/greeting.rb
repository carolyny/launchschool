def greetings(name, details)
greeting = "Hello, #{name[0]} #{name[1]} #{name[2]}! Nice to have a #{details[:title]} #{details[:occupation]} around." 

end




puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.