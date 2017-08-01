class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :full_name, :string
    add_column :users, :nickname, :string
    add_column :users, :contact, :string
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :schoolwork, :string
  end
end
