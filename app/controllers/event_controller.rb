## This controller includes variables to use for any of the views pages
# The basis of these view pags is the event name,


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

# params = {"event"=>"100 Backstroke", "14\r\n-time"=>"5", "16\r\n-time"=>"10", "Submit"=>"Submit"}	

	times = []
	params.keys.each do |key|
		if key.include? "-time" 
			times << {key => params[key]} 
		end
	end 

	str1 = ""
	event = params['event']
	times.each do |time|

		# Had to use double quotes below to make line breaks not an issue.
		theiD = time.keys # each run will make theiD equal the key (from times) of the loop

		theiDtime = time[theiD[0]] #getting the time from the key

		theiD = theiD[0].chomp("\r\n-time") #makes the key the number

		str1 << (theiD << "," << theiDtime << ",") #throws all the strings together each loop
	end
	str2 = event << "," << str1.chop


	writetotimes(str2)
erb :"home"
end














