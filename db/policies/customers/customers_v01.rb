RLS.policies_for :customers do
  policy :my_customers do
    using <<-SQL
      tenant_id = CURRENT_TENANT_ID()
    SQL
  end
end
