class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_current_user

  def get_current_user
    puts "get_current_user #{session.inspect}"
    if session[:contact_id].present?
      puts "fetching current user"
      @current_user = Contact.find(session[:contact_id])
    end
  end
end
