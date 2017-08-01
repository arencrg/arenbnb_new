class AddPhotosToBnbrooms < ActiveRecord::Migration
  def change
    add_column :bnbrooms, :photos, :json
  end
end
