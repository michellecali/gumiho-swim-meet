require "pry"


MyApp.get "/winners" do
	@current_page = "Winners"
	@arraytheevents = readerevents("times.txt")
	@arraycombo = readerlistedplaces("times.txt")
	erb :"/winnerslist"
end














