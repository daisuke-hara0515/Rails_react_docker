require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "/api/v1/users #index" do
    it "DBに登録されている全ユーザーがjson形式で返信があること" do
      # GET ユーザー情報一覧
      # expect(user.all).to eq "json形式で全ユーザー表示"
    end 
  end
end
