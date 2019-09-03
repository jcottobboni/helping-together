class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memberships
  has_many :groups, through: :memberships, source: :memberable, source_type: 'Group'
  has_many :projects, through: :memberships, source: :memberable, source_type: 'Project'
end
