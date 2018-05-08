class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, :limit => 200, :null => false
      t.string :middle_name
      t.string :last_name, :limit => 200, :null => false
      t.string :username
      t.string :password
      t.timestamps
    end
  end
end
