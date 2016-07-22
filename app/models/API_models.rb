## everything needed for the API controller should be here

# addresswriter will take an address makes it compatible for geocode api
#
# Returns string with proper format needed for geocode API

require "httparty"
require_relative "../controllers/secretstuff.rb"
require "pry"
require_relative "event_model.rb"
require_relative "winnerlist_model.rb"


def addresswriter(str)
	a_new_file = File.new("../../address.txt", "a")

	while str.index(" ") != nil
		to_plus_index = str.index(" ")
		str[to_plus_index] = "+"
	end

	a_new_file.puts str
end

# Once all the addresses are in each line, readeraddress will just store
# each line within a file as its own index in an array.
#
# Returns array of adresses

def readeraddress(thefilename)
	addr = File.open(thefilename, "r")
	addrarray = Array.new
	addr.readlines.each do |line|
		line.chomp
		addrarray << line
	end

	return addrarray
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

theaddr = readeraddress("address.txt")

thelat = latget(theaddr[0])


def eastorwest()

	theaddr = readeraddress("address.txt")

	i = 0
	eorwarray = [] 
	
	while i < theaddr.size
		if latget(theaddr[i]) > -95.2075
			eorwarray.push "Eastern"
		end
		if latget(theaddr[i]) < -95.2075
			eorwarray.push "Western"
		end
		i += 1
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
















