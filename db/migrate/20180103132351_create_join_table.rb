class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :regiones, :municipios do |t|
      t.index [:region_id, :municipio_id]
      t.index [:municipio_id, :region_id]
    end
  end
end
