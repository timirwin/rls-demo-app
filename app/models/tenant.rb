class Tenant < ApplicationRecord

  default_scope -> { order(:name) }

end
