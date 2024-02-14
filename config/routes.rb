Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage"})
  get("/users", { :controller => "user", :action => "list"})

end
