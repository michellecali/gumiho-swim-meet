MyApp.get "/winners" do
	@current_page = "Winners"
	erb :"/winnerslist"
end