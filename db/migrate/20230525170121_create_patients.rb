class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :diagnosis
      t.date :born_on

      t.timestamps
    end
  end
end
