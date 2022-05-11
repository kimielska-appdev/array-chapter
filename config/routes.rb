Rails.application.routes.draw do

  get("/", {:controller => "users", :action => "index"})

  get("/users", {:controller => "users", :action => "index"})

get("/users/:id_username", {:controller => "users", :action => "show"})

get("/photos", {:controller => "photos", :action =>"index"})

get("/photos/:path_photo_id", {:controller => "photos", :action =>"show"})

get("delete_photo/:path_id",{:controller => "photos",:action => "bye" })

get("/insert_photo",{:controller=>"photos", :action=>"create"})

get("/update_photo/:modify_id",{:controller=>"photos", :action=>"update"})

get("/add_new_comment", {:controller =>"photos", :action=>"add_comment"})

get("/insert_user",{:controller => "users", :action=>"create"})

get("/update_user/:user_id", {:controller => "users", :action => "update"})

end
