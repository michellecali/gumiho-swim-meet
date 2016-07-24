require "pry"
require_relative "../models/event_model.rb"
require_relative "../models/API_models.rb"

MyApp.get "/contestant/1" do

	contestantnames = readernames("entrants.txt")
	contestantcolleges = readercollege("entrants.txt")
	contestantaddress = readeraddress("entrants.txt")


	int = 0

	while int < contestantaddress.size

		addressapp(contestantaddress[int])
		int += 1
		
	end

	formattedaddrarray = readfromaddr("address.txt")


	arrayofconffs = eastorwest(formattedaddrarray)


	@contestantname = contestantnames[0]
	@contestantcollege = contestantcolleges[0]
	@contestantconference = arrayofconffs[0]

	@contestantname2 = contestantnames[1]
	@contestantcollege2 = contestantcolleges[1]
	@contestantconference2 = arrayofconffs[1]
 
	erb :"contestants/show"
end