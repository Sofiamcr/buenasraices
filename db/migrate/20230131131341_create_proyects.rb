class CreateProyects < ActiveRecord::Migration[7.0]
  def change
    create_table :proyects do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
