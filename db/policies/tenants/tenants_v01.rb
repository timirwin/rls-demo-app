RLS.policies_for :tenants do
  policy :my_tenants do
    using <<-SQL
      id = CURRENT_TENANT_ID()
    SQL
  end
end
