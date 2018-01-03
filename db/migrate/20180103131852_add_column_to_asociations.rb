class AddColumnToAsociations < ActiveRecord::Migration[5.1]
  def change
  	#    add_column :showtimes, :movie_id, :integer
  	add_column :asociations, :municipio_id, :integer
  	add_column :asociations, :region_id, :integer
  end
end
