class AddPhotosToBnbrooms < ActiveRecord::Migration
  def change
    add_column :bnbrooms, :photos, :string
  end
end