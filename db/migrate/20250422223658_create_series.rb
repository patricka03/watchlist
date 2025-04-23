class CreateSeries < ActiveRecord::Migration[7.1]
  def change
    create_table :series do |t|
      t.string :title
      t.string :genre
      t.integer :year

      t.timestamps
    end
  end
end
