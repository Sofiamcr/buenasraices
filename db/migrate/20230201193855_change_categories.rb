class ChangeCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference(:proyects, :category, null: false, foreign_key: true)
  end
end
