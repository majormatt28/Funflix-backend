class RemoveUserIdFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :user_id, :integer
  end
end
