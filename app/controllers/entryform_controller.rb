MyApp.get "/entry" do
  @current_page = "Contestant"
	erb :"form/entryform"
end

MyApp.post "/swimmers/new" do
	#params get sent here
end
