class CreateCloths < ActiveRecord::Migration[6.0]
  def change
    create_table :cloths do |t|
      t.string :category
      t.string :wash_type
      t.boolean :delivery
      t.boolean :completed
      t.date :pick_up_date
      t.float :price
      t.references :shelf, null: false, foreign_key: true

      t.timestamps
    end
  end
end
