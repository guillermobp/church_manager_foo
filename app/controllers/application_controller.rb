class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_church
    @current_church ||= Church.find(1)
  end

end
