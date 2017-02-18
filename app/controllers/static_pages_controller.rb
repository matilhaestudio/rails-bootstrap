class StaticPagesController < ApplicationController
  def home
    @admins = Admin.all
  end
end
