class RemovePhotosFromImages < ActiveRecord::Migration
  def change
    remove_column :images, :photos, :json
  end
end
