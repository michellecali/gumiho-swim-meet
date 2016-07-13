MyApp.get "/results/list" do
  @bechdel_pass = Result.passing
  erb :"results/gallery"
end