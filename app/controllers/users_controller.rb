class UsersController < ApplicationController

  def container

  end

  def new
    respond_to do |format|
      format.html {}
    end
  end

  def delete
    if current_user.destroy
      respond_with status: 200, nothing: true
    else
      render_error "Failed to delete user", 400 # or 422 
    end
  end

  def show
    respond_with current_user
  end
end