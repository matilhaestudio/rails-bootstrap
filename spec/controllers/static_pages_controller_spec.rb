require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe 'GET index' do
    it 'sets the @admins variable' do
      admins = create_list(:admin, 10)
      get :home
      expect(assigns(:admins)).to match_array(admins)
    end
  end
end
