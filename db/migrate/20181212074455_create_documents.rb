class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.text :url
      t.text :img_preview
      t.text :description
      t.integer :category
      t.integer :user_id

      t.timestamps
    end
  end
end
