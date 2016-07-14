#MyApp.before "/*" do
#	"Hello World"
#end

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
		if index%4 ==2
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

MyApp.get "/events/1650freestyle" do
	@current_page = "1650 Freestyle"

	@peoplein1650F = peopleinevent(@current_page, "entrants.txt")
	@colleges1650F = collegeofperson(@current_page, "entrants.txt")
	erb :"events/1650freestyle"
end

MyApp.get "/events/200freestyle" do
	@current_page = "200 Freestyle"
	erb :"events/200freestyle"
end

MyApp.get "/events/100backstroke" do
	@current_page = "100 Backstroke"
	erb :"events/100backstroke"
end

MyApp.get "/events/100breaststroke" do
	@current_page = "100 Breaststroke"
	erb :"events/100breaststroke"
end

MyApp.get "/events/200butterfly" do
	@current_page = "200 Butterfly"
	erb :"events/200butterfly"
end

MyApp.get "/events/50freestyle" do
	@current_page = "50 Freestyle"
	erb :"events/50freestyle"
end

MyApp.get "/events/100freestyle" do
	@current_page = "100 Freestyle"
	erb :"events/100freestyle"
end

MyApp.get "/events/200backstroke" do
	@current_page = "200 Backstroke"
	erb :"events/200backstroke"
end

MyApp.get "/events/200breaststroke" do
	@current_page = "200 Breaststroke"
	erb :"events/200breaststroke"
end

MyApp.get "/events/500freestyle" do
	@current_page = "500 Freestyle"
	erb :"events/500freestyle"
end

MyApp.get "/events/100butterfly" do
	@current_page = "100 Butterfly"
	erb :"events/100butterfly"
end

MyApp.get "/events/400medley" do
	@current_page = "400 Individual Medley"
	erb :"events/400medley"
end
