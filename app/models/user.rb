class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :members,
                          class_name: "User",
                          join_table: :user_relationships,
                          foreign_key: :user_id,
                          association_foreign_key: :member_id

  has_many :calls

  roles_map = {
    "admin": 0,
    "coach": 1,
    "student": 2
  }
end
