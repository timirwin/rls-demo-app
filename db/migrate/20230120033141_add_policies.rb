class AddPolicies < ActiveRecord::Migration[6.0]
  def up
    create_policy(:tenants)
    create_policy(:users)
    update_policy(:customers, version: 6)
  end

  def down
    drop_policy(:tenants)
    disable_rls(:tenants, force: true)
    drop_policy(:users)
    disable_rls(:users, force: true)
    drop_policy(:customers)
    disable_rls(:customers, force: true)
  end
end
