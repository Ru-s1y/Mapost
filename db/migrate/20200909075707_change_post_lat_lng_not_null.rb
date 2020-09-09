class ChangePostLatLngNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :latitude, false
    change_column_null :posts, :longitude, false
  end
end
