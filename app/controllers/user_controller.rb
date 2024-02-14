class UserController < ApplicationController
  def list
    render ({ :template => "user_templates/list"})
  end
end
