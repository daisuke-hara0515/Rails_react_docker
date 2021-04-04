require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "/api/v1/users #index" do
    it "ユーザー情報を取得した際にステータスコード200が返ってくること" do
      user = User.create(name: 'daifuku', email: 'daifuku@example.com', description: 'daifukuだよ！')

      get '/api/v1/users'

      json = JSON.parse(response.body)
      expect(response.status).to eq(200)
    end

    it "DBに登録されている全ユーザーがjson形式で返信があること" do
      user = User.create(name: 'daifuku', email: 'daifuku@example.com', description: 'daifukuだよ！')

      # https://docs.ruby-lang.org/ja/latest/method/Net=3a=3aHTTP/i/get.html
      get '/api/v1/users'

      json = JSON.parse(response.body)
      # debugger

      expect(json['users'][0]["name"]).to eq(user.name)
    end
  end
end
