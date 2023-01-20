require 'bcrypt'

class AccountController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        current_user = Account.find_by_id(session[:current_user_id])
        render json: current_user
    end
    
    def create
        v = !params[:name].empty? and !params[:email].empty? and !params[:password].empty?
        if (v)
            p=Account.create(           
         'name': params[:name],
         'email': params[:email],
         'password': params[:password],
         )
        puts p
         render json: "Data Added"
        else
            render json: "Data not Added"
        end
    end
    def update
        p = Account.find(params[:id].to_i)
            p.update('name': params[:name],
                'email': params[:email],
                'password': params[:password])
            render json: "Data Updated"
    end
    def destroy 
        p = Account.find(params[:id])
        p.destroy
        render json: "Data Deleted"
    end
end
