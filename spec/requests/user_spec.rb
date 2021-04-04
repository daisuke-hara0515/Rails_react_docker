require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "/api/v1/users #index" do
    it "DBに登録されている全ユーザーがjson形式で返信があること" do
      user = User.create(name: 'daifuku', email: 'daifuku@example.com', description: 'daifukuだよ！')

      # https://docs.ruby-lang.org/ja/latest/method/Net=3a=3aHTTP/i/get.html
      get '/api/v1/users'

      json = JSON.parse(response.body)
      # debugger

      expect(response.status).to eq(200)
      
      expect(json['users'][0]["name"]).to eq(user.name)
      # expext(json['data'].length).to eq(1)
      # GET ユーザー情報一覧
      # expect(user.all).to eq "json形式で全ユーザー表示"
    end 
  end
end
