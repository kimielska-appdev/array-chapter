Rails.application.routes.draw do

get("/users", {:controller => "users", :action => "index"})

get("/users/:id_username", {:controller => "users", :action => "show"})

end
