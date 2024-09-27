class RenameUrlimageToUrlImageInCoins < ActiveRecord::Migration[7.2]
  def change
    rename_column :coins, :url_image, :url_image
  end
end
