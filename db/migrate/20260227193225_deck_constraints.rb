class DeckConstraints < ActiveRecord::Migration[8.1]
  def change
    change_table :decks do |t|
      t.change_null :name, false
      t.change_null :user_id, false
    end
  end
end
