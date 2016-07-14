# These functions are in charge of storing event information such as 
# athlete name, the event, and college. There is a write (wri) and append
# (app) function and, for now, they are used to take moregoods.txt, delete 
# everything in it, and write/append into.

def multiinputapp(uID, athlete, event, college)
	newish_file = File.new("moregoods.txt", "a")
	newish_file.puts uID
	newish_file.puts athlete 
	newish_file.puts event
	newish_file.puts college
	newish_file.close

end

def multiinputwri(uID, athlete, event, college)
	newish_file = File.new("moregoods.txt", "w")
	newish_file.puts uID
	newish_file.puts athlete 
	newish_file.puts event
	newish_file.puts college
	newish_file.close

end


def reader(thefilename)
	goodies = File.open(thefilename, "r")
	puts goodies.read
end

def readeruID(thefilename)
	goodies = File.open(thefilename, "r")
	names = goodies.readlines.each_with_index do |line, index|
		puts line if index%4 == 0
	end
end

def readernames(thefilename)
	goodies = File.open(thefilename, "r")
	events = goodies.readlines.each_with_index do |line, index|
		puts line if index%4 == 1
	end
end

# Put a .split(", ") between line if which is four lines below to get array
def readerevents(thefilename)
	goodies = File.open(thefilename, "r")
	swim_events = Array.new
	goodies.readlines.each_with_index do |line, index|
		if index%4 ==2
			swim_events << line.split(", ")
		end
		# puts line.split(", ") if index%4 == 2
	end
	return swim_events

end

def readercollege(thefilename)
	goodies = File.open(thefilename, "r")
	college = goodies.readlines.each_with_index do |line, index|
		puts line if index%4 == 3
	end
end

	
uID1 = 001 
name1 = "Billy Bob"
event1 = "50m fly, 200 breast, 50m backstroke"
school1 = "Awesome College"

uID2 = 002
name2 = "Jilly Jones"
event2 = "200m Back, 100m fly, 50m backstroke"
school2 = "Brilliant College"

uID3 = 003
name3 = "Chris Bill"
event3 = "500 free, 100 breast, 50m backstroke"
school3 = "Cool School"

uID4 = 004
name4 = "Cynthia TheSwimmer"
event4 = "50m backstroke"
school4 = "Awesome College"


multiinputwri(uID1, name1, event1, school1)
multiinputapp(uID2, name2, event2, school2)
multiinputapp(uID3, name3, event3, school3)
multiinputapp(uID4, name4, event4, school4)


# reader("moregoods.txt")
# readeruID("moregoods.txt")
# readernames("moregoods.txt")
# readerevents("moregoods.txt")
# readercollege("moregoods.txt")


eventstuff = readerevents("moregoods.txt")


i = 0

while i < eventstuff.length
	if eventstuff[i].any? {|w| w.include? "500 free"}
		puts "They are in the event"
		i+=1
	else
		puts "Not participating"
		i+=1
	end
end













