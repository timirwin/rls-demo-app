RLS.policies_for :customers do
  policy :my_customers do
    using <<-SQL
      user_id = CURRENT_USER_ID()
    SQL
  end
end
