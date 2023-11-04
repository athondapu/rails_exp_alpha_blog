class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        # @article.user = User.first
        if @user.save
            flash[:notice] = "Welcome to Amar Blog #{@user.username}, You have successfully signed up"
            redirect_to articles_path
            # redirect_to @user
        else
            render 'new', status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end