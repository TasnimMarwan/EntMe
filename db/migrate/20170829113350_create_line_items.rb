class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.belongs_to :product, index: true
      t.belongs_to :order, index: true
      t.integer :count, default: 0
      t.timestamps
    end
    #add_column :line_items, :line_count, :integer, default: 0
  end
end
