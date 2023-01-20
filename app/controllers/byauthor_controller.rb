class ByauthorController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        if (session[:current_user_id])
            book = Book.find_by('author': params[:author])
            if (book.nil?)
                render json: "Book not available"
            else 
                render json: book
            end
        else
            render json: "Please log in to your account."
        end
    end
end
