class Customer < ApplicationRecord
  belongs_to :tenant
  belongs_to :user, optional: true

  default_scope -> { order(:name) }
end
