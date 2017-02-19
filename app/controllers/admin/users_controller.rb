class Admin
  class UsersController < ApplicationController
    include Wicked::Wizard

    steps :fill_email, :user_core_data, :finish_user_address, :confirm_form
  end
end
