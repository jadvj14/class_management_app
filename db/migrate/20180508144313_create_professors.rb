class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :first_name, :limit => 200, :null => false
      t.string :middle_name, :limit => 200
      t.string :last_name, :limit => 200, :null => false
      t.datetime :birth_date
      t.datetime :date_hired
      t.timestamps
    end
  end
end
