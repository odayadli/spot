class AddServiceRefToCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :service, null: false, foreign_key: true
  end
end
