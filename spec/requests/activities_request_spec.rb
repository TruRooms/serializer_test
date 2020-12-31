require 'rails_helper'

RSpec.describe "Activities", type: :request do

  context "owner is a base user" do
    let(:user) { User.create(name: 'Bob', type: 'User') }
    let(:item) { Item.create }
    it "can get the index and render json results" do
      item.create_activity key: 'item.commented_on', owner: user
      get '/activities'
      expect(response).to have_http_status(:ok)
    end
  end

  context "owner is of class User::Admin" do
    let(:user) { User.create(name: 'Bob', type: 'User::Admin') }
    let(:item) { Item.create }
    it "can get the index and render json results" do
      item.create_activity key: 'item.commented_on', owner: user
      get '/activities'
      expect(response).to have_http_status(:ok)
    end
  end
end
