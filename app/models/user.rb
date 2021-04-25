class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: {minimum: 3, maxximum: 15}
    validates :email, presence: true, uniqueness: true
end