require 'rails_helper'

RSpec.describe "Task", type: :request do
  describe "/api/v1/users/:user_id/tasks #indexメソッドに関するテスト" do
    before do
      @params = {name: 'daifuku', email: 'daifuku@example.com', description: 'daifukuだよ！', user_id: 1}
      @task_params = {name: 'daifukuのタスク', difficulty: 1, description: 'daifukuのタスクだよ', user_id:1}
    end

    it "特定のtaskを取得する" do
      user = User.create(@params)
      task = Task.create(@task_params)

      get '/api/v1/users/1/tasks'
      json = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(json['task']['name']).to eq(task.name)
    end
  end
end
