MyApp.get "/entry" do
  @current_page = "Contestant"
	erb :"form/entryform"
end