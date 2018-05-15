class CreateProfessorUserRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :professor_user_ratings do |t|
      t.references :professor
      t.references :user
      t.references :course
      t.integer :rating
      t.datetime :date_rated
      t.timestamps
    end
  end
end
