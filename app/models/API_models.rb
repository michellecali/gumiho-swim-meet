# ## everything needed for the API controller should be here

# # addresswriter will take an address makes it compatible for geocode api
# #
# # Returns string with proper format needed for geocode API

# require "httparty"
# require_relative "../controllers/secretstuff.rb"
# require "pry"


# def addresswriter(str)
# 	a_new_file = File.new("../../address.txt", "a")

# 	while str.index(" ") != nil
# 		to_plus_index = str.index(" ")
# 		str[to_plus_index] = "+"
# 	end

# 	a_new_file.puts str
# end


# # addresswriter("915 South Jackson Street, Montgomery, AL")
# # addresswriter("10 Old Montgomery Highway, Birmingham, AL")
# # addresswriter("Box 4132, Flagstaff, AZ")
# # addresswriter("79 New Montgomery Street, San Francisco, CA")
# # addresswriter("4700 Pierce Street, Riverside, CA")

# # Once all the addresses are in each line, readeraddress will just store
# # each line within a file as its own index in an array.
# #
# # Returns array of adresses

# def readeraddress(thefilename)
# 	addr = File.open(thefilename, "r")
# 	addrarray = Array.new
# 	addr.readlines.each do |line|
# 		line.chomp
# 		addrarray << line
# 	end

# 	return addrarray
# end

# # latget is used if you want access to the json hash the geocoder has
# # given a specific address, (which those addresses are accessed by using
# # the array made by readeraddress)
# #
# # returns latitude of address

# def latget(spot)
# 	hasher = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{spot}&key=#{API_KEY}")
# 	tochecklat = hasher["results"][0]["geometry"]["location"]["lng"]

# 	return tochecklat
# end

# theaddr = readeraddress("address.txt")

# thelat = latget(theaddr[0])


# def eastorwest()

# 	theaddr = readeraddress("address.txt")

# 	i = 0
# 	eorwarray = [] 
	
# 	while i < theaddr.size
# 		if latget(theaddr[i]) > -95.2075
# 			eorwarray.push "Eastern"
# 		end
# 		if latget(theaddr[i]) < -95.2075
# 			eorwarray.push "Western"
# 		end
# 		i += 1
# 		binding.pry
# 	end

# 	return eorwarray

# end

# checkarray = eastorwest
# puts checkarray








