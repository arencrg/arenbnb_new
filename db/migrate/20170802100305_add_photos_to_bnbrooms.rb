class AddPhotosToBnbrooms < ActiveRecord::Migration
  def change
    add_column :bnbrooms, :photos, :string
    add_column :bnbrooms, :user_id, :integer
  end
end