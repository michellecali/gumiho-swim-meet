#MyApp.before "/*" do
#	"Hello World"
#end

MyApp.get "events/1650freestyle" do
	erb :"events/1650freestyle.erb"
end

MyApp.get "events/200freestyle" do
	erb :"events/200freestyle.erb"
end

MyApp.get "events/100backstroke" do
	erb :"events/100backstroke.erb"
end

MyApp.get "events/100breaststroke" do
	erb :"events/100breaststroke.erb"
end

MyApp.get "events/200butterfly" do
	erb :"events/200butterfly.erb"
end

MyApp.get "events/50freestyle" do
	erb :"events/50freestyle.erb"
end

MyApp.get "events/100freestyle" do
	erb :"events/100freestyle.erb"
end

MyApp.get "events/200backstroke" do
	erb :"events/200backstroke.erb"
end

MyApp.get "events/200breaststroke" do
	erb :"events/200breaststroke.erb"
end

MyApp.get "events/500Freestyle" do
	erb :"events/500Freestyle.erb"
end

MyApp.get "events/100butterfly" do
	erb :"events/100butterfly.erb"
end

MyApp.get "events/400medley" do
	erb :"events/400medley.erb"
end