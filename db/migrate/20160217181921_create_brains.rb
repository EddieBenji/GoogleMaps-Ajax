class CreateBrains < ActiveRecord::Migration
  def change
    create_table :brains do |t|
      t.references :zombie, index: true, foreign_key: true
      t.string :status
      t.string :flavor

      t.timestamps null: false
    end
  end
end
