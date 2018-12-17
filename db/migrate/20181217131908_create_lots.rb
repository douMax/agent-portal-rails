class CreateLots < ActiveRecord::Migration[5.0]
  def change
    create_table :lots do |t|
      t.string :lot_no
      t.integer :beds
      t.integer :baths
      t.integer :carpots
      t.decimal :in_sqm, :precision => 10, :scale => 2
      t.decimal :out_sqm, :precision => 10, :scale => 2
      t.decimal :total_sqm,  :precision => 10, :scale => 2
      t.string :floor_level
      t.text :plan_url
      t.text :description
      t.integer :status
      t.decimal :price, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
