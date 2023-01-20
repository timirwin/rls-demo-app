RLS.policies_for :customers do
  using_relations :tenant, :user

  policy :customer_special do
    using <<-SQL
      user_id is null AND tenant_id = CURRENT_TENANT_ID()
    SQL
  end
end
