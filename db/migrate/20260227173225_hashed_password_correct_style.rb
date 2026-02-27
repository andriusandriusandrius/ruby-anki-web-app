class HashedPasswordCorrectStyle < ActiveRecord::Migration[8.1]
  def change
    rename_column :users, :hashedPassword, :password_hash
  end
end
