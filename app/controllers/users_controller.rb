class UsersController < ApplicationController
  # Purpose: Display all the users
  # URL: /
  # Path: root_path
  def index
    # Grab all the users in the database
    @users = User.all
  end

  # Purpose: Display a particular user
  # URL: /users/:id
  # Path: user_path(user)
  def show
    # Use the params hash to find the id of the specific user that we're
    # trying to find.
    #
    # Use that id that we get oout of the params hash to query the database
    # for the user with a matching id.
    @user = User.find(params[:id])
  end
end
