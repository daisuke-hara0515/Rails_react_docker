3.times do |n|
    user = User.new(
        name: "testユーザー_#{n}",
        email: "testuser_#{n}@example.com",
        description: "テストユーザー#{n}です"
    )

5.times do |m|
    user.tasks.build(
        name: "タスク#{m}",
        difficultly: m,
        description: "タスク#{m}です"
    )
end

user.save!
end