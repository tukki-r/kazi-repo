class AddLikesCountToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :LikesCount, :integer
  end
end
