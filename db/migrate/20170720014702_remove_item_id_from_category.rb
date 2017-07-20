class RemoveItemIdFromCategory < ActiveRecord::Migration[5.1]
  def change
    remove_reference :categories, :item, foreign_key: true
  end
end
