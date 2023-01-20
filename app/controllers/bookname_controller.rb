class BooknameController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        if (session[:current_user_id])
            bname = Book.find_by('bookname': params[:bookname])
            
            if (bname.nil?)
                render json: "Book not available"
            else 
                render json: bname
            end
        else
            render json: "Please log in to your account."
        end
    end
end
