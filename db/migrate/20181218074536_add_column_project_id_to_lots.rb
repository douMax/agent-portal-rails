class AddColumnProjectIdToLots < ActiveRecord::Migration[5.0]
  def change
    add_column :lots, :project_id, :integer
  end
end
