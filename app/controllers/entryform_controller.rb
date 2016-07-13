MyApp.get "/" do
  @current_page = "Contestant"
	erb :"form/entryform"
end