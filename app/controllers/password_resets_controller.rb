class PasswordResetsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            # snd a mail
        end
        redirect_to root_path, notice: "If account is registered, an email has been sent to registred mail id"
    end
    
end