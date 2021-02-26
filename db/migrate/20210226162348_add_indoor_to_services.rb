class AddIndoorToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :indoor, :boolean, default: false
  end
end
