class AddTrainerToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :trainer, :boolean, default: false
  end
end
