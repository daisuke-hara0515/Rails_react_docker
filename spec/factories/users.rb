require "faker"

FactoryBot.define do
  factory :user,aliases: [:owner] do
    name {Faker::Name.name.to_s}
    email {"#{name}@example.com"}
    description {"#{name}だよ！"}
  end
end
