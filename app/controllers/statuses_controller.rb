class StatusesController < ApplicationController

 def create
        @user = User.find(params[:user_id])
        @status =  @user.build_status(params[status_params])
#        @user = User.create(user_params)
#        @user = User.find(:user_id => @user.id)
#       @user = User.find(params[:id])
  #     @status = current_user.statuses.create(params[:status])
#       @status = @user.statuses.build(params[:status])
#       @user = current_user.users.find(params[:id])
#       @status = Status.new(params[:status])
    #  @status = @user.statuses.create(status_params)
#      @status.user = current_user
      if @status.save
         redirect_to @user
         flash[:success] = "Thanks for registering. You'll be contacted soon!"
      else
         @title = "statuses"
         render 'new'
      end
  end


  def new
       @title = "statuses"
       @status = Status.new(params[:user_id])
  end
end


#def show
#      @user = User.email
#      @status = Status.find(params[:user_id])
#      @title = @status.email
#  end


  private

  def status_params
    params.require(:status).permit(:email, :user_status)
  end


  def user_params
 #   params.require(:user).permit(:name, :middle, :last, :email, :phone, :textbox)
    params.fetch(:user, {})
  end
