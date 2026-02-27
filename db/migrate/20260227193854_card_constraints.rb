class CardConstraints < ActiveRecord::Migration[8.1]
  def change
    change_table :cards, bulk: true do |t|
      t.change_null :deck_id, false
      t.change_null :front, false
      t.change_null :back, false
    end
  end
end
