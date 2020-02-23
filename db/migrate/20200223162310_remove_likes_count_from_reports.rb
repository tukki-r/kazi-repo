class RemoveLikesCountFromReports < ActiveRecord::Migration[5.0]
  def change
    remove_column :reports, :LikesCount, :integer
  end
end
