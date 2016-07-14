MyApp.get "/entry" do
  @current_page = "Contestant"
	erb :"form/entryform"
end

MyApp.post "/swimmers/new" do

def joinstrings(str1, str2)
	newstring = str1 << ", " << str2
	return newstring
end


name = params['Name']
college = params['College']

stuffs1650F = params['1650F']
stuffs200FR = params['200FR']
stuffs100BA = params['100BA']
stuffs100BR = params['100BR']
stuffs200BU = params['200BU']
stuffs50FRE = params['50FRE']
stuffs100FR = params['100FR']
stuffs200BA = params['200BA']
stuffs200BR = params['200BR']
stuffs500FR = params['100BU']
stuffs400IM = params['400IM']

eventstring = " "

if stuffs1650F == "on"
	eventstring = joinstrings(eventstring, stuffs1650F)
end
if stuffs200FR == "on"
	eventstring = joinstrings(eventstring, stuffs200FR)
end
if stuffs100BA == "on"
	eventstring = joinstrings(eventstring, stuffs100BA)
end
if stuffs100BR == "on"
	eventstring = joinstrings(eventstring, stuffs100BR)
end
if stuffs200BU == "on"
	eventstring = joinstrings(eventstring, stuffs200BU)
end
if stuffs50FRE == "on"
	eventstring = joinstrings(eventstring, stuffs50FRE)
end
if stuffs100FR == "on"
	eventstring = joinstrings(eventstring, stuffs100FR)
end
if stuffs200BA == "on"
	eventstring = joinstrings(eventstring, stuffs200BA)
end
if stuffs200BR == "on"
	eventstring = joinstrings(eventstring, stuffs200BR)
end
if stuffs500FR == "on"
	eventstring = joinstrings(eventstring, stuffs500FR)
end
if stuffs400IM == "on"
	eventstring = joinstrings(eventstring, stuffs400IM)
end



def idGeneration(competitorID, submit)
	#need to set competitorID to retrieve previous from storage (if it exists)
	#need to set submit to boolean when form submits
	if submit == "submit"
		if competitorID == nil 
			competitorID = 0
		else 
			competitorID = competitorID +=1
		end
	end
end

uID = idGeneration(1, "submit")

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


multiinputwri(uID,name, eventstring, college)
multiinputapp(uID,name, eventstring, college)


erb :"form/entryform"

end





















