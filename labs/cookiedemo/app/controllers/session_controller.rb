class SessionController < ApplicationController
    def new
    end

    def create
        #ninja = Ninja.find_by_(email or whatever)()
        ninja = Ninja.find_by_name(params[:name])
        if ninja && ninja.authenticate(params[:password])
            session[:user_id] = ninja.id
            redirect_to ninjas_path
        else
            render :new #this is the new.html.erb page
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to ninjas_path
    end
end