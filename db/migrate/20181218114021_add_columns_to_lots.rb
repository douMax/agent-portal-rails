class AddColumnsToLots < ActiveRecord::Migration[5.0]
  def change
    add_column :lots, :room_type, :string
    add_column :lots, :room_dir, :string
  end
end
