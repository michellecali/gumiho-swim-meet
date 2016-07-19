#MyApp.before "/*" do
#	"Hello World"
#end

def readerIDs(thefilename)
	goodies = File.open(thefilename, "r")
	iDs = Array.new
	goodies.readlines.each_with_index do |line, index|
		if index%4 == 0
			iDs << line
		end
	end
	return iDs
end

def readernames(thefilename)
	goodies = File.open(thefilename, "r")
	names = Array.new
	goodies.readlines.each_with_index do |line, index|
		if index%4 == 1
			names << line
		end
	end
	return names
end


def readerevents(thefilename)
	goodies = File.open(thefilename, "r")
	events = Array.new
	goodies.readlines.each_with_index do |line, index|
		if index%4 == 2
			events << line.split(", ")
		end

	end
	return events

end

def readercollege(thefilename)
	goodies = File.open(thefilename, "r")
	collegenames = Array.new
	goodies.readlines.each_with_index do |line, index|
		if index%4 == 3
			collegenames << line
		end
	end

	return collegenames
end

def peopleinevent(eventname, txtfile)
	eventstuff = readerevents(txtfile)
	namestuff = readernames(txtfile)

	i = 0

	participants = Array.new
	while i < eventstuff.length
		if eventstuff[i].any? {|w| w.include? eventname}
			participants << namestuff[i]
			i+=1
		else
			i+=1
		end
	end
	return participants	
end

def collegeofperson(eventname, txtfile)
	eventstuff = readerevents(txtfile)
	collegestuff = readercollege(txtfile)

	i = 0

	thecolleges = Array.new
	while i < eventstuff.length
		if eventstuff[i].any? {|w| w.include? eventname}
			thecolleges << collegestuff[i]
			i+=1
		else
			i+=1
		end
	end
	return thecolleges
end

def iDofperson(eventname, txtfile)
	eventstuff = readerevents(txtfile)
	iDstuff = readerIDs(txtfile)

	i = 0

	theiDs = Array.new
	while i < eventstuff.length
		if eventstuff[i].any? {|w| w.include? eventname}
			theiDs << iDstuff[i]
			i+=1
		else
			i+=1
		end
	end
	return theiDs
end

MyApp.get "/events/1650freestyle" do
	@current_page = "1650 Freestyle"

	@peoplein1650F = peopleinevent("1650 Freestyle", "entrants.txt")
	@colleges1650F = collegeofperson("1650 Freestyle", "entrants.txt")
	@iDs1650F = iDofperson("1650 Freestyle", "entrants.txt")
	erb :"events/1650freestyle"
end

MyApp.get "/events/200butterfly" do
	@current_page = "200 Butterfly"

	@peoplein200BU = peopleinevent("200 Butterfly", "entrants.txt")
	@colleges200BU = collegeofperson("200 Butterfly", "entrants.txt")
	@iDs200BU = iDofperson("200 Butterfly", "entrants.txt")
	erb :"events/200butterfly"
end

MyApp.get "/events/200freestyle" do
	@current_page = "200 Freestyle"

	@peoplein200FR = peopleinevent("200 Freestyle", "entrants.txt")
	@colleges200FR = collegeofperson("200 Freestyle", "entrants.txt")
	@iDs200FR = iDofperson("200 Freestyle", "entrants.txt")
	erb :"events/200freestyle"
end

MyApp.get "/events/100backstroke" do
	@current_page = "100 Backstroke"

	@peoplein100BA = peopleinevent("100 Backstroke", "entrants.txt")
	@colleges100BA = collegeofperson("100 Backstroke", "entrants.txt")
	@iDs100BA = iDofperson("100 Backstroke", "entrants.txt")
	erb :"events/100backstroke"
end

MyApp.get "/events/100breaststroke" do
	@current_page = "100 Breaststroke"

	@peoplein100BR = peopleinevent("100 Breaststroke", "entrants.txt")
	@colleges100BR = collegeofperson("100 Breaststroke", "entrants.txt")
	@iDs100BR = iDofperson("100 Breaststroke", "entrants.txt")
	erb :"events/100breaststroke"
end

MyApp.get "/events/50freestyle" do
	@current_page = "50 Freestyle"

	@peoplein50FRE = peopleinevent("50 Freestyle", "entrants.txt")
	@colleges50FRE = collegeofperson("50 Freestyle", "entrants.txt")
	@iDs50FRE = iDofperson("50 Freestyle", "entrants.txt")
	erb :"events/50freestyle"
end

MyApp.get "/events/100freestyle" do
	@current_page = "100 Freestyle"

	@peoplein100FR = peopleinevent("100 Freestyle", "entrants.txt")
	@colleges100FR = collegeofperson("100 Freestyle", "entrants.txt")
	@iDs100FR = iDofperson("100 Freestyle", "entrants.txt")
	erb :"events/100freestyle"
end

MyApp.get "/events/200backstroke" do
	@current_page = "200 Backstroke"

	@peoplein200BA = peopleinevent("200 Backstroke", "entrants.txt")
	@colleges200BA = collegeofperson("200 Backstroke", "entrants.txt")
	@iDs200BA = iDofperson("200 Backstroke", "entrants.txt")
	erb :"events/200backstroke"
end

MyApp.get "/events/200breaststroke" do
	@current_page = "200 Breaststroke"

	@peoplein200BR = peopleinevent("200 Breaststroke", "entrants.txt")
	@colleges200BR = collegeofperson("200 Breaststroke", "entrants.txt")
	@iDs200BR = iDofperson("200 Breaststroke", "entrants.txt")
	erb :"events/200breaststroke"
end

MyApp.get "/events/500freestyle" do
	@current_page = "500 Freestyle"

	@peoplein500FR = peopleinevent("500 Freestyle", "entrants.txt")
	@colleges500FR = collegeofperson("500 Freestyle", "entrants.txt")
	@iDs500FR = iDofperson("500 Freestyle", "entrants.txt")
	erb :"events/500freestyle"
end

MyApp.get "/events/100butterfly" do
	@current_page = "100 Butterfly"

	@peoplein100BU = peopleinevent("100 Butterfly", "entrants.txt")
	@colleges100BU = collegeofperson("100 Butterfly", "entrants.txt")
	@iDs100BU = iDofperson("100 Butterfly", "entrants.txt")
	erb :"events/100butterfly"
end

MyApp.get "/events/400medley" do
	@current_page = "400 Individual Medley"

	@peoplein400IM = peopleinevent("400 Individual Medley", "entrants.txt")
	@colleges400IM = collegeofperson("400 Individual Medley", "entrants.txt")
	@iDs400IM = iDofperson("400 Individual Medley", "entrants.txt")
	erb :"events/400medley"
end

MyApp.post "/event/times" do

	times = []
	params.keys.each do |key|
		if key.include? "-time" 
			times << {key => params[key]} 
		end
	end 

	times.each do |time|
		event = params['event']
		# Had to use double quotes below to make line breaks not an issue.
		theiDtime = time.
		# TODO - Investigate what happens if two swimmers have the same time.
		x = params.key(theiDtime)
		theiD = x.chomp("\r\n-time")

		str1 = event + "," + theiDtime + "," + theiD
		writetotimes(str1)
	end
# {"event"=>"100 Backstroke", "14\r\n-time"=>"5", "16\r\n-time"=>"10", "Submit"=>"Submit"}	
