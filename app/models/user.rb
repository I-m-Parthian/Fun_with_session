class User < ApplicationRecord
    has_secure_password

    # email= NOT NULL
    validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
end
