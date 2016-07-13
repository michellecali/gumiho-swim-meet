#MyApp.before "/*" do
#	"Hello World"
#end

MyApp.get "events/1650freestyle" do
	erb :"events/1650freestyle"
end

MyApp.get "events/200freestyle" do
	erb :"events/200freestyle"
end

MyApp.get "events/100backstroke" do
	erb :"events/100backstroke"
end

MyApp.get "events/100breaststroke" do
	erb :"events/100breaststroke"
end

MyApp.get "events/200butterfly" do
	erb :"events/200butterfly"
end

MyApp.get "events/50freestyle" do
	erb :"events/50freestyle"
end

MyApp.get "events/100freestyle" do
	erb :"events/100freestyle"
end

MyApp.get "events/200backstroke" do
	erb :"events/200backstroke"
end

MyApp.get "events/200breaststroke" do
	erb :"events/200breaststroke"
end

MyApp.get "events/500Freestyle" do
	erb :"events/500Freestyle"
end

MyApp.get "events/100butterfly" do
	erb :"events/100butterfly"
end

MyApp.get "events/400medley" do
	erb :"events/400medley"
end