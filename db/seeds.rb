3.times do |n|
    user = User.new(
        name: "testユーザー_#{n + 1}",
        email: "testuser_#{n + 1}@example.com",
        description: "テストユーザー#{n + 1}です"
    )

    5.times do |m|
        user.tasks.build(
            name: "タスク#{m + 1}",
            difficulty: 3,
            description: "タスク#{m + 1}です"
        )
    end
    
    user.save!
end