class CreateCloths < ActiveRecord::Migration[6.0]
  def change
    create_table :cloths do |t|
      t.string :category
      t.string :wash_type
      t.boolean :delivery, default: false
      t.boolean :completed, default: false
      t.date :pick_up_date
      t.float :price
      t.references :shelf, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
