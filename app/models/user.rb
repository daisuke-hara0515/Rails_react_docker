class User < ApplicationRecord
    validates :name, length: {maximum: 30}
    has_many :tasks
end