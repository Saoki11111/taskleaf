class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :login_required

  private

  def current_user
    @currnet_user ||= User.find_by(id: sessioin[:user_id]) if session[:user_id]
  end

  def login_required
    redirect_to login_path unless current_user
  end
end
