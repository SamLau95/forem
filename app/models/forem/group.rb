module Forem
  class Group < ActiveRecord::Base
    validates :name, :presence => true

    has_many :memberships
    has_many :members, through: :memberships, source: :membershipable, source_type: Forem.user_class.to_s

    def to_s
      name
    end
  end
end
