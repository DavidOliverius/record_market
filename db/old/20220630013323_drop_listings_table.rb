class DropListingsTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :listings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end