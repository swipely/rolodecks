class ConnectionsController < ApplicationController

  def create
    if session[:contact_id] && params[:id]
      a = Contact.find(session[:contact_id])
      b = Contact.find(params[:id])

      a.connect_to(b)

      redirect_to contacts_path
    else
      head :bad_request
    end
  end

end
