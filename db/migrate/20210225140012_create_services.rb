class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :details
      t.string :price_per_hour
      t.string :integer
      t.string :service_address
      t.timestamps
    end
  end
end
