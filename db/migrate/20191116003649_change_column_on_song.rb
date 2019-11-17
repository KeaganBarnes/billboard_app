class ChangeColumnOnSong < ActiveRecord::Migration[6.0]
  def change
    change_column :songs, :billboard_id, :bigint, :null => true

  end
end
