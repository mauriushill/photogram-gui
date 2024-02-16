Rails.application.routes.draw do
  get("/", { :controller => "user", :action => "index"})
  get("/users", { :controller => "user", :action => "index"})
  get("/users/:username", { :controller => "user", :action => "show"})
  post("/insert_user", { :controller => "user", :action => "insert"})
  post("/update_user/:the_user", { :controller => "user", :action => "update"})
  get("/photos", { :controller => "photo", :action => "list"})
  post("/insert_photo", { :controller => "photo", :action => "insert"})
  get("/photos/:a_photo", { :controller => "photo", :action => "show"})
  post("/update_photo/:the_photo", { :controller => "photo", :action => "update"})
  get("/delete_photo/:photo_id", { :controller => "photo", :action => "destroy"})
  post("/insert_comment", { :controller => "photo", :action => "comment"})
end
