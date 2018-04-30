class User < ApplicationRecord
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  belongs_to :account
end
