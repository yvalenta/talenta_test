class CreateAsociations < ActiveRecord::Migration[5.1]
  def change
    create_table :asociations do |t|

      t.timestamps
    end
  end
end
