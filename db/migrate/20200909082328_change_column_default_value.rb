class ChangeColumnDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :latitude, :float, default: 34.695453
    change_column :posts, :longitude, :float, default: 135.196289
  end
end
