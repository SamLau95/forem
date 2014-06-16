module Forem
  class Membership < ActiveRecord::Base
    belongs_to :group
    belongs_to :membershipable, polymorphic: true
    alias_method :member, :membershipable
    alias_method :member=, :membershipable=
  end
end
