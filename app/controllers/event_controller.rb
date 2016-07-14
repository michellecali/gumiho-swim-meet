#MyApp.before "/*" do
#	"Hello World"
#end

MyApp.get "/events/1650freestyle" do
	@current_page = "1650 Freestyle"
	erb :"events/1650freestyle"
end

MyApp.get "/events/200freestyle" do
	@current_page = "200 Freestyle"
	erb :"events/200freestyle"
end

MyApp.get "/events/100backstroke" do
	@current_page = "100 Backstroke"
	erb :"events/100backstroke"
end

MyApp.get "/events/100breaststroke" do
	@current_page = "100 Breaststroke"
	erb :"events/100breaststroke"
end

MyApp.get "/events/200butterfly" do
	@current_page = "200 Butterfly"
	erb :"events/200butterfly"
end

MyApp.get "/events/50freestyle" do
	@current_page = "50 Freestyle"
	erb :"events/50freestyle"
end

MyApp.get "/events/100freestyle" do
	@current_page = "100 Freestyle"
	erb :"events/100freestyle"
end

MyApp.get "/events/200backstroke" do
	@current_page = "200 Backstroke"
	erb :"events/200backstroke"
end

MyApp.get "/events/200breaststroke" do
	@current_page = "200 Breaststroke"
	erb :"events/200breaststroke"
end

MyApp.get "/events/500freestyle" do
	@current_page = "500 Freestyle"
	erb :"events/500freestyle"
end

MyApp.get "/events/100butterfly" do
	@current_page = "100 Butterfly"
	erb :"events/100butterfly"
end

MyApp.get "/events/400medley" do
	@current_page = "400 Individual Medley"
	erb :"events/400medley"
end
