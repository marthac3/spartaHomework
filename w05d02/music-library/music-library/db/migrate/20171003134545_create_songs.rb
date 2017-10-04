class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.date :release
      t.string :genre

      t.timestamps
    end
  end
end
