class UsersController < ApplicationController

  def index
    matching_users = User.all
    
    @list_of_users = matching_users.order({:username => :asc})

    render({:template => "user_templates/index.html.erb"})
  end

  def show
    #parameters: {"id_username"=>"anisa"}

    url_username = params.fetch("id_username")

    matching_usernames = User.where({:username => url_username})

    @the_user = matching_usernames.first

    #if the above returns nil, use the defensive approach outlined below
    # if the_user == nil 
    #   redirect_to("/404")
    # else
      render({:template => "user_templates/show.html.erb"})
    # end
  end

  def create

    #the_id = params.fetch("new_username")
    input_username = params.fetch("query_username")

    a_new_user = User.new
    a_new_user.username = input_username

    a_new_user.save

    #render({ :template => "photo_templates/create.html.erb" })

    redirect_to("/users/" + a_new_user.username)
  end

  def update
    new_username = params.fetch("new_username")

    user_id = params.fetch("user_id")

    matching_user_id = User.where({:id=>user_id})

    a_user =matching_user_id.at(0)

    a_user.username = new_username

    a_user.save

   redirect_to("/users/" + a_user.username)
  end

end
