class BookController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        if (session[:current_user_id])
            render json: Book.all
        else
            render html: "Please log in to your account."
        end
    end

    def create
        if (session[:current_user_id])
            v = !params[:bookname].empty? 
            if (v)
                p = Book.create('bookname': params[:bookname], 'author': params[:author], 'quantity': params[:quantity])
                puts p
                render json: "Book Added"
            else
                render json: "Book not Added"
            end
        else
            render json: "Please log in to your account."
        end
    end

    def update
        if (session[:current_user_id])
            p = Book.find(params[:id])
            p.update('bookname': params[:bookname], 'author': params[:author], 'quantity': params[:quantity])

            render json: "Data Updated"
        else
            render json: "Please log in to your account."
        end
    end
    
    def destroy
        if (session[:current_user_id])
            p = Book.find(params[:id])
            p.destroy

            render json: "Data Deleted"
        else
            render json: "Please log in to your account."
        end
    end

end
