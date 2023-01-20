RLS.policies_for :customers do
  using_relations :tenant, :user
end
