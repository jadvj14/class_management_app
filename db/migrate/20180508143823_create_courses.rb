class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :code, :limit => 50, :null => false
      t.string :name, :limit => 200, :null => false
      t.string :description => 5000
      t.timestamps
    end
  end
end
