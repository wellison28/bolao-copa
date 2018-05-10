class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.order(:name)
  end
end
