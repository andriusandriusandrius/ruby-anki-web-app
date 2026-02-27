class UserConstraints < ActiveRecord::Migration[8.1]
  def change
    change_table :users, bulk:true do |t|
      t.change_null :name, false
      t.change_null :email, false
      t.change_null :password_hash, false
    end
  end
end
