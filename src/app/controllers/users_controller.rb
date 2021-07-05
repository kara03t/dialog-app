class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    @students = User.where(role: 'student') if @user.role == 'teacher'
  end
end
