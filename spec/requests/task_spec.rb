require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe "/api/v1/users/:user_id/tasks #indexメソッドに関するテスト" do
    let(:params) { {name:"daifuku",email:"daifuku@example.com"} }

    it "特定のtaskを取得する" do
      user = User.create(params)
      task = Task.create(name:'test task',difficulty: 1,user_id: user.id)

      get "/api/v1/users/#{user.id}/tasks"
      json = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(json['tasks'][0]['name']).to eq(task.name)
    end
  end
end
