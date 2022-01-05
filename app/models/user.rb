class User < ApplicationRecord
  validates_presence_of :name, :email
  validates :email, presence: true,
                    email_format: { message: 'Invalid email format' }



end
