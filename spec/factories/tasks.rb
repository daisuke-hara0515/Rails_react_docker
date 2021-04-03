FactoryBot.define do
  factory :task do
    owner
    sequence(:name) {|i| "タスク#{i}"}
    sequence(:difficulty) {|i| "難易度#{i}"}
    sequence(:description) {|i| "タスク#{i}だよ！"}
    association :user
  end
end
