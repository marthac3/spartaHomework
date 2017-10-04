class ChangeReleaseDateToInt < ActiveRecord::Migration[5.1]
  def change
  	change_column :songs, :release, :string
  end
end
