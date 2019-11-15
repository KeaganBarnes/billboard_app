class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :billboards, :top_50, :top_50_songs
    rename_column :billboards, :top_100_us, :top_50_artists
    remove_column :billboards, :top_100_eu 
  end
end
