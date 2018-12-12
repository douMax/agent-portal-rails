class AddDocuTypeToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :docu_type, :integer
  end
end
