## everything needed for the API controller should be here

# addresswriter will take an address makes it compatible for geocode api
#
# Returns string with proper format needed for geocode API

require "httparty"
require_relative "../controllers/secretstuff.rb"
require "pry"



def addresswriter(str)
	a_new_file = File.new("address.txt", "w")

	while str.index(" ") != nil
		to_plus_index = str.index(" ")
		str[to_plus_index] = "+"
	end

	a_new_file.puts str
end

def addressapp(str)
	a_new_file = File.new("address.txt", "a")

	while str.index(" ") != nil
		to_plus_index = str.index(" ")
		str[to_plus_index] = "+"
	end

	a_new_file.puts str
end


def conffromcollegearr(collegename)
	stuff = File.open("address.txt", "r")
	addrconf = []

	stuff.each_with_index do |it, index|
		addrconf[index] = it.chomp.split(", ")
	end

	confarr = []
	i = 0
	n = 0
	while i < addrconf.length
		if addrconf[i].include?(collegename.chomp)
			confarr[n] = addrconf[i][1]
			n += 1
		end

		i += 1
	end

	return confarr
end

# latget will check the array of addresses and create a new array with
# info about the conference that address is affiliated with
#
# Returns array of conference allegiance.

def latget(spot)
	hasher = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{spot}&key=#{API_KEY}")
	tochecklat = hasher["results"][0]["geometry"]["location"]["lng"]

	return tochecklat
end


def eastorwest(theaddr)

	if latget(theaddr) > -95.2075
		eorwarray = "Eastern"
	end
	if latget(theaddr) < -95.2075
		eorwarray = "Western"
	end

	return eorwarray

end


## Everything below is in relation to making an API for users to pull
# the hash from



def allinfo()
	eventsarray = readerevents("times.txt")
	fillhash = {}

	n = 0
	while n < eventsarray.size

	entrants_in_single_event = peopleinevent(eventsarray[n], "times.txt")

		int = 0
		while int < entrants_in_single_event.size
			entrants_in_single_event[int] = entrants_in_single_event[int].chomp
			int += 1
		end

	fillhash[eventsarray[n]] = entrants_in_single_event
	n += 1
	end

	## At this point fillhash is a hash with keys being event titles
	# and values being an array of participants

	fillhash2 = {}
	results_array = readerlistedplaces(times.txt)

	m = 0
	
	while m < eventsarray.size

		int = 0

		while int < results_array[0][m].size

			fillhash2[eventsarray[m]][results_array[0][m][int]] = results_array[1][m][int]
			int += 1
		end

		m += 1

	end



	return fillhash2
end
















