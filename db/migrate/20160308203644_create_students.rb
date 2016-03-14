class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :registration_number
      t.string :name
      t.string :first_last_name
      t.string :second_last_name
      t.integer :age
      t.string :street
      t.string :crossings
      t.integer :number
      t.string :suburb
      t.string :postal_code
      t.string :latitude
      t.string :altitude
    end
  end
end
