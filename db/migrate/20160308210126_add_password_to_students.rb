class AddPasswordToStudents < ActiveRecord::Migration
  def up
    add_column :students, :password, :string
  end

  def down
    remove_column :students, :password, :string
  end
end
