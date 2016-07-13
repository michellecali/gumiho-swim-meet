# These functions are in charge of storing event information such as 
# athlete name, the event, and college. There is a write (wri) and append
# (app) function and, for now, they are used to take moregoods.txt, delete 
# everything in it, and write/append into.

def multiinputapp(athlete, event, college)
	newish_file = File.new("moregoods.txt", "a")
	newish_file.puts athlete 
	newish_file.puts event
	newish_file.puts college
	newish_file.close

end

def multiinputwri(athlete, event, college)
	newish_file = File.new("moregoods.txt", "w")
	newish_file.puts athlete 
	newish_file.puts event
	newish_file.puts college
	newish_file.close

end


def reader(thefilename)
	goodies = File.open(thefilename, "r")
	contents = goodies.read
	puts contents

	
end

name1 = "Billy Bob"
event1 = "50m fly"
school1 = "Awesome College"

name2 = "Jilly Jones"
event2 = "200m Back"
school2 = "Brilliant College"


multiinputwri(name1, event1, school1)
multiinputapp(name2, event2, school2)

reader("moregoods.txt")


puts 1%3
puts 2%3
puts 3%3
puts 4%3
puts 5%3
puts 6%3






