RLS.policies_for :users do
  policy :my_users do
    using <<-SQL
      id = CURRENT_USER_ID()
    SQL
  end
end
