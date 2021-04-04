require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "/api/v1/users #index" do
    it "DBに登録されている全ユーザーがjson形式で返信があること" do
      user = User.new(name: 'daifuku', email: 'daifuku@example.com', description: 'daifukuだよ！')

      get '/api/v1/users'
      json = JSON.parse(response.body)

      expect(response.status).to eq(200)
      # expext(json['data'].length).to eq(1)
      # GET ユーザー情報一覧
      # expect(user.all).to eq "json形式で全ユーザー表示"
    end 
  end
end
