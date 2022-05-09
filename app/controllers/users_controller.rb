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
end