require "pry"

def readerevents(thefilename)
	moregoods = File.open(thefilename, "r")
	wholeline = Array.new
	moregoods.readlines.each do |line|
		line.chomp
		wholeline << line.split(",")
	end

	arrayofevents = Array.new
	arrayoftimes = Array.new
	arrayofids = Array.new

	j = 0
	while j < wholeline.size

		arrayofevents[j] = wholeline[j].delete_at(0)
		j+=1
	end

return arrayofevents

end


def readerlistedplaces(thefilename)
	moregoods = File.open(thefilename, "r")
	wholeline = Array.new
	moregoods.readlines.each do |line|
		line.chomp
		wholeline << line.split(",")
	end

	j=0
	while j < wholeline.size
		wholeline[j].delete_at(0)
		j+=1
	end

	arrayofevents = Array.new
	arrayoftimes = Array.new
	arrayofids = Array.new

	fillarrayids = []
	fillarraytimes = []

	wholeline.each do |stuff1|

		stuff1.each_with_index do |stuffinarr, index|

			if index%2 == 0
				arrayofids << stuffinarr
			end
			if index%2 == 1
				arrayoftimes << stuffinarr
			end

		end
		fillarrayids.push arrayofids
		fillarraytimes.push arrayoftimes

		arrayofids = []
		arrayoftimes = []
	end
	
	newarrayoftimes = []
	newarrayofids = []
	toparrayoftimes = []
	toparrayofids = []

	n = 0

	fillarraytimes.each do |stuff|

		while n < stuff.size
			idindexspot = fillarraytimes.index(stuff)
			topspot = stuff.index(stuff.max)
			newarrayoftimes << stuff[topspot]
			newarrayofids << fillarrayids[idindexspot][topspot]
			stuff[topspot] = ""
			fillarrayids[idindexspot][topspot] = ""
			n += 1
		end
		toparrayoftimes.push newarrayoftimes
		toparrayofids.push newarrayofids
		newarrayoftimes = []
		newarrayofids = []
		n = 0
	end


	toparrayofcolleges = []
	pushingarray = []

	toparrayofids.each do |replacenames|
		replacenames.each_with_index do |names, index|
			pushingarray[index] = collegelookbyID("entrants.txt", replacenames[index])
			replacenames[index] = namelookbyID("entrants.txt", replacenames[index])

		end
		toparrayofcolleges.push pushingarray
		pushingarray = []
	end



comboarray = []
comboarray.push toparrayofids
comboarray.push toparrayoftimes
comboarray.push toparrayofcolleges
return comboarray

end


# [["3", "10", "4", "22", "7", "33", "10", "44", "14", "55", "18", "66\n"],
 # ["14", "55", "16", "77", "18", "09\n"],
 # ["10", "300", "15", "2.2\n"],
 # [

MyApp.get "/winners" do
	@current_page = "Winners"
	@arraytheevents = readerevents("times.txt")
	@arraycombo = readerlistedplaces("times.txt")
	erb :"/winnerslist"
end















