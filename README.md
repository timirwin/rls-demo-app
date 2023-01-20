# README

Note: Project for demo and educational purposes only.

Experimenting with [rls_rails gem](https://github.com/suus-io/rls_rails)

Setup
```bash
bundle
yarn
rails db:create db:migrate db:seed
```


You'll want to add another database user and start your application with:

```bash
  DB_USER=rls rails s
```

That database user will need to be created like this

```sql
CREATE USER rls WITH LOGIN;
GRANT ALL ON ALL TABLES IN SCHEMA public TO rls;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO rls;
```

To change policies, change lines in `20230120033141_add_policies.rb` and run `rails db:migrate:redo`.
