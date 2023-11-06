class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "Your account information updated successfully."
            redirect_to articles_path
        else
            render 'edit', status: :unprocessable_entity
        end
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