class UserController < ApplicationController
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
