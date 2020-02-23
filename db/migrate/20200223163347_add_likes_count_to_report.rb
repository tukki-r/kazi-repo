class AddLikesCountToReport < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :likes_count, :integer
  end
end
