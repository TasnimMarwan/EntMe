class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rate
      t.belongs_to :user, index: true
      t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
