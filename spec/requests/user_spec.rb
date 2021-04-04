require 'rails_helper'

RSpec.describe "User", type: :request do
  describe "/api/v1/users #indexメソッドに関するテスト" do
    before do
      @params = {name: 'daifuku', email: 'daifuku@example.com', description: 'daifukuだよ！'}
    end

    it "ステータスコード200と登録ユーザー情報が返ってくること" do
      user = User.create(@params)

      get '/api/v1/users'

      json = JSON.parse(response.body)
      
      expect(response.status).to eq(200)
      expect(json["users"][0]["name"]).to eq(user.name)
    end

    it "正しい数のユーザー数が返されること" do
      FactoryBot.create_list(:user,5)

      get '/api/v1/users'
      json = JSON.parse(response.body)
      
      expect(json['users'].length).to eq(5)
    end
  end
end
