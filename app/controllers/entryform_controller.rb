MyApp.get "/entry" do
  @current_page = "Contestant"
	erb :"form/entryform"
end

MyApp.post "/swimmers/new" do
	
name = params['Name']
college = params['College']


def multiinputapp(athlete, college)
	newish_file = File.new("moregoods.txt", "a")
	# newish_file.puts uID
	newish_file.puts athlete 
	# newish_file.puts event
	newish_file.puts college
	newish_file.close

end

def multiinputwri(athlete, college)
	newish_file = File.new("moregoods.txt", "w")
	# newish_file.puts uID
	newish_file.puts athlete 
	# newish_file.puts event
	newish_file.puts college
	newish_file.close

end

multiinputapp(name, college)
multiinputwri(name, college)

erb :"form/entryform"

end





















