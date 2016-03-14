class RemoveAgeFromZombies < ActiveRecord::Migration
  # Ejecuta el cambio. Sólo ejecuta este método.
  def up
    remove_column :zombies, :age, :integer
  end

  # Si hacemos revert (no queremos borrar la columna age), con el
  # Rollback(rake db:rollback) basta, ya que ejecutará sólo este
  # método, el anterior no.
  def down
    add_column :zombies, :age, :integer
  end
end
