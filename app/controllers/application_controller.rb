class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  # before_action :default_json_format

  respond_to :json

  private

    def render_error(message, status = 400)
      render json: { error: "#{message}" }.to_json, status: status
    end

    # def default_json_format
    #   request.format = 'json' unless params[:format]
    # end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user

end
