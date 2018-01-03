class CreateMunicipios < ActiveRecord::Migration[5.1]
  def change
    create_table :municipios do |t|
      t.integer :codigo
      t.string :nombre
      t.boolean :estado

      t.timestamps
    end
  end
end
