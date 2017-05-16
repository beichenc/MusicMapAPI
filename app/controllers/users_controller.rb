class UsersController < ApplicationController
  # GET
  def index
    @users = User.all
    json_response(@users)
  end

  # POST
  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  #check if the user have been registered
  def check
    @user = User.where("username = ?", params[:username])
    json_response(@user)

  end

  #update users visits
  def updatevisits
    @user = User.where("username = ?", params[:username]).first
    json_response(@user.visits)
    @user.visits += 1
    @user.save
  end

  private
  def user_params
    params.permit(:username, :displayname, :email, :birthday, :producttype, :href, :uri, :imageurl, :followers, :visits)
  end
end
