Rails.application.routes.draw do
  get("/", { :controller => "user", :action => "index"})
  get("/users", { :controller => "user", :action => "index"})
  get("/users/:username", { :controller => "user", :action => "show"})

end
