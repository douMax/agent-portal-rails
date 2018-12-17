class AddIsSalesAdminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_sales_admin, :boolean
  end
end
