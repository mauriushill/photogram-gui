class UserController < ApplicationController
  def update
    the_username = params.fetch("the_user")
    matching_usernames = User.where({ :username => the_username})
    @new_user = matching_usernames.at(0)

    @new_user.username = params.fetch("user_update")
    @new_user.save

    redirect_to("/users/#{@new_user.username}")

  end


  def insert
    @new_user = User.new
    @new_user.username = params.fetch("user_name")
    @new_user.save
    
    redirect_to("/users/#{@new_user.username}")

    
  end

  def show
    the_name = params.fetch("username")
    matching_record = User.where({ :username => the_name })
    @the_user = matching_record.at(0)


    render ({ :template => "user_templates/show"})
  end

  def index
    @list_of_names = User.all.order({ :username => :asc })

    render ({ :template => "user_templates/index"})
  end
end
