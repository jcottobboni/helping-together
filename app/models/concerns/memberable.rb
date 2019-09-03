module Memberable
  extend ActiveSupport::Concern
  included do
    has_many :memberships, as: :memberable, dependent: :destroy
    has_many :users, through: :memberships
    after_create :create_membership
  end

  def create_membership
    Membership.create(memberable_type: self.class.name, memberable_id: self.id, user_id: self.creator_id)
  end
end