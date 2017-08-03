class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: "FUERA!!!!!!!!!! NO TIENES EL MALDITO ACCESO!!"
  end
end
