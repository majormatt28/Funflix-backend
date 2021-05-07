class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.integer :user_id
      t.integer :api_id
      t.string :title
      t.integer :year
      t.string :description

      t.timestamps
    end
  end
end
