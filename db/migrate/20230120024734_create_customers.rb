class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.references :tenant, null: false, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
