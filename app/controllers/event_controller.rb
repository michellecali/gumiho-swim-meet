MyApp.before "/*" do
	"Hello World"
end

MyApp.get "events/1650freestyle" do
	erb :"events/event"
end

MyApp.get "events/200freestyle" do
	erb :"events/event"
end

MyApp.get "events/100backstroke" do
	erb :"events/event"
end

MyApp.get "events/100breaststroke" do
	erb :"events/event"
end

MyApp.get "events/200butterfly" do
	erb :"events/event"
end

MyApp.get "events/50freestyle" do
	erb :"events/event"
end

MyApp.get "events/100freestyle" do
	erb :"events/event"
end

MyApp.get "events/200backstroke" do
	erb :"events/event"
end

MyApp.get "events/200breaststroke" do
	erb :"events/event"
end

MyApp.get "events/500Freestyle" do
	erb :"events/event"
end

MyApp.get "events/100butterfly" do
	erb :"events/event"
end

MyApp.get "events/400medley" do
	erb :"events/event"
end