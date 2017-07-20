class RemoveItemIdFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, :item, foreign_key: true
  end
end
