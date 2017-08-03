class CreateReviewcommentrates < ActiveRecord::Migration
  def change
    create_table :reviewcommentrates do |t|
      t.string :reviewtitle
      t.text :comment
      t.integer :rating
      t.integer :bnbroom_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
