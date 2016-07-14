MyApp.get "/entry" do
  @current_page = "Contestant"
	erb :"form/entryform"
end

MyApp.post "/swimmers/new" do
# SO FAR the parameters posted from the entry form all have been captured
# and saved to entrants.txt. Issues that still exist are assigning different
# IDs to each athlete.

# Fetching name and college of entrant
name = params['Name']
college = params['College']

# Functions below are used below to either combine or save a new string.
def joinstrings(str1, str2)
	newstring = str1 << ", " << str2
	return newstring
end
def newstring(str1)
	newstring = str1
	return newstring
end

# Fetching all possible params for all events. If statements below will check
# if there is indeed a "on" ("on" is what the html checklist does if it was
# checked) for each event ID.
stuffs1650F = params['1650F']
stuffs200FR = params['200FR']
stuffs100BA = params['100BA']
stuffs100BR = params['100BR']
stuffs200BU = params['200BU']
stuffs50FRE = params['50FRE']
stuffs100FR = params['100FR']
stuffs200BA = params['200BA']
stuffs200BR = params['200BR']
stuffs500FR = params['500FR']
stuffs100BU = params['100BU']
stuffs400IM = params['400IM']

# created a blank string for the if logics
eventstring = ""

# if eventstring is empty (length 0) then event string is saved as the event 
# title. If eventstring does have an event title in it already, it will join 
# the two strings together.
if stuffs1650F == "on"
	if eventstring.empty? == true
		eventstring = newstring("1650 Freestyle")
	else
		eventstring = joinstrings(eventstring, "1650 Freestyle")
	end
end
if stuffs200FR == "on"
	if eventstring.empty? == true
		eventstring = newstring("200 Freestyle")
	else
		eventstring = joinstrings(eventstring, "200 Freestyle")
	end
end
if stuffs100BA == "on"
	if eventstring.empty? == true
		eventstring = newstring("1650 Freestyle")
	else
		eventstring = joinstrings(eventstring, "1650 Freestyle")
	end
end
if stuffs100BR == "on"
	if eventstring.empty? == true
		eventstring = newstring("100 Breaststroke")
	else
		eventstring = joinstrings(eventstring, "100 Breaststroke")
	end
end
if stuffs200BU == "on"
	if eventstring.empty? == true
		eventstring = newstring("200 Butterfly")
	else
		eventstring = joinstrings(eventstring, "200 Butterfly")
	end
end
if stuffs50FRE == "on"
	if eventstring.empty? == true
		eventstring = newstring("50 Freestyle")
	else
		eventstring = joinstrings(eventstring, "50 Freestyle")
	end
end
if stuffs100FR == "on"
	if eventstring.empty? == true
		eventstring = newstring("100 Freestyle")
	else
		eventstring = joinstrings(eventstring, "100 Freestyle")
	end
end
if stuffs200BA == "on"
	if eventstring.empty? == true
		eventstring = newstring("200 Backstroke")
	else
		eventstring = joinstrings(eventstring, "200 Backstroke")
	end
end
if stuffs200BR == "on"
	if eventstring.empty? == true
		eventstring = newstring("200 Breaststroke")
	else
		eventstring = joinstrings(eventstring, "200 Breaststroke")
	end
end
if stuffs500FR == "on"
	if eventstring.empty? == true
		eventstring = newstring("500 Freestyle")
	else
		eventstring = joinstrings(eventstring, "500 Freestyle")
	end
end
if stuffs100BU == "on"
	if eventstring.empty? == true
		eventstring = newstring("100 Butterfly")
	else
		eventstring = joinstrings(eventstring, "100 Butterfly")
	end
end
if stuffs400IM == "on"
	if eventstring.empty? == true
		eventstring = newstring("400 Individual Medley")
	else
		eventstring = joinstrings(eventstring, "400 Individual Medley")
	end
end


# Other used functions below.


uID = "pay no attention to me"

def multiinputapp(uID, athlete, event, college)
	newish_file = File.new("entrants.txt", "a")
	newish_file.puts uID
	newish_file.puts athlete 
	newish_file.puts event
	newish_file.puts college
	newish_file.close


end

def multiinputwri(uID, athlete, event, college)
	newish_file = File.new("entrants.txt", "w")
	newish_file.puts uID
	newish_file.puts athlete 
	newish_file.puts event
	newish_file.puts college
	newish_file.close

end

# This is where all the action happens! As these are right now, the wri and 
# app combination are meant to first remove already existing contents in the 
# txt file and write/append to it. The final product should have logic where
# if the swim meet admin is just submitting their first entrant, the wri func
# is used. For all the other applicants the app is used.
multiinputapp(uID,name, eventstring, college)

# Sends admin back to the entryform page
erb :"form/entryform"

end





















