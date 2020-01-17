class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :checkbox
      t.text :image
      t.timestamps
    end
  end
end
