class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :user, index: true
      t.timestamps
    end
    #remove_column :orders, :order_count
  end
end

