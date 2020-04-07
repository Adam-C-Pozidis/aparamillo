class CreateCloths < ActiveRecord::Migration[6.0]
  def change
    create_table :cloths do |t|
      t.references :type, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :shelf, null: false, foreign_key: true
      t.string :category, array: true, default: ["Ανδρικό", "Γυναικείο", "Παιδικό"]
      t.string :wash_type, array: true, default: ["Στεγνό καθάρισμα", "Υγρό καθάρισμα", "Σιδέρωμα"]
      t.boolean :delivery, default: false
      t.float :price
      t.boolean :completed, default: false
      t.date :pick_up_date
      t.boolean :admin, default: false
      t.timestamps
    end
  end
end
