class ChangeColumnNameProyect < ActiveRecord::Migration[7.0]
  def change
    rename_column :proyects, :category, :wood
  end
end
